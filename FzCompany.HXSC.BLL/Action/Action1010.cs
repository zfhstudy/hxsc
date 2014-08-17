using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 添加定单
    /// </summary>
    public class Action1010 : BaseAction
    {
        private Layer[] itemArr = new Layer[0];
        private string Phone = string.Empty;
        private string Receiveaddress = string.Empty;
        private string userid = string.Empty;


        public Action1010(HttpGet httpGet)
            : base(1010, httpGet)
        {
        }

        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            var userinfo = hxsc.UserInfo.FirstOrDefault(o => o.Userid == userid);
            if (userinfo == null)
            {
                return SetError("用户不存在！");
            }


            OrderH orderH = new OrderH()
            {
                Amt = itemArr.Sum(o => o.amt),
                CreateTime = DateTime.Now,
                UserId = userid,
                Start = 0,
                Source = key,
                Discount = 0,
                ReceiveAddress = Receiveaddress,
                Realamt = itemArr.Sum(o => o.price),
                Phone = Phone,
                OrderhId = Guid.NewGuid().ToString().Replace("-", "")
            };
            hxsc.OrderH.AddObject(orderH);

            foreach (var itemn in itemArr)
            {

                OrderD orderD = new OrderD()
                {
                    Amt = itemn.amt,
                    Createtime = DateTime.Now,
                    Discount = itemn.discount,
                    Itemid = itemn.itemid,
                    Start = 0,
                    Serial = itemn.serial,
                    Realamt = itemn.realamt,
                    Price = itemn.price,
                    Number = itemn.number,
                    Orderhid = orderH.OrderhId
                };
                hxsc.OrderD.AddObject(orderD);
            }
            hxsc.SaveChanges();
            return true;
        }

        public override void BuildPacket()
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetString("Phone", ref Phone)
                && httpGet.GetString("Receiveaddress", ref Receiveaddress)
                && httpGet.GetString("Userid", ref userid)
                && httpGet.GetObject("item", ref itemArr))
                return true;
            return false;
        }

        public class Layer
        {
            public int serial { get; set; }
            public int itemid { get; set; }
            public int number { get; set; }
            public double price { get; set; }
            public double amt { get; set; }
            public double discount { get; set; }
            public double realamt { get; set; }
        }
    }
}
