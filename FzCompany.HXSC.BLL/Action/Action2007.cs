using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 邮件类型删除
    /// </summary>
    public class Action2007 : BaseAction
    {
        private string itemidList;
        private string userid;
        private List<OrderD> list = new List<OrderD>();


        public Action2007(HttpGet httpGet)
            : base(2007, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetString("itemid", ref itemidList)
                && httpGet.GetString("userid", ref userid))
                return true;
            return false;
        }


        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            string[] itemidArr = itemidList.Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
            if (itemidArr.Length == 0)
                return SetError("图书信息不能为空!");
            foreach (var sitemid in itemidArr)
            {
                int itemid = 0;
                int.TryParse(sitemid, out itemid);
                Item item = hxsc.Item.FirstOrDefault(o => o.Itemid == itemid);
                if (item == null)
                {
                    return SetError("图书信息不存在!");
                }
                OrderD orderD = new OrderD()
                {
                    Amt = item.Price,
                    Createtime = DateTime.Now,
                    Discount = 1,
                    Itemid = itemid,
                    Number = 1,
                    Orderhid = "",
                    Price = item.Price,
                    Realamt = item.Price,
                    Serial = 0,
                    Start = 0
                };
                list.Add(orderD);
            }

            OrderH orderH = new OrderH()
            {
                Amt = 0,
                CreateTime = DateTime.Now,
                Discount = 0,
                Express = "",
                ExpressNo = "",
                ExpressTime = DateTime.Now,
                Phone = "",
                Realamt = 0,
                ReceiveAddress = "",
                Source = key,
                Start = 0,
                UserId = userid
            };

            hxsc.OrderH.AddObject(orderH);
            hxsc.SaveChanges();

            foreach (var item in list)
            {
                item.Orderhid = orderH.OrderhId;
                hxsc.OrderD.AddObject(item);
            }
            hxsc.SaveChanges();
            return true;
        }

        public override void BuildPacket()
        {
        }
    }
}
