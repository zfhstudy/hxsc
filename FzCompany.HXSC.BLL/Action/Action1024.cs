using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 24、	退货申请
    /// </summary>
    public class Action1024 : BaseAction
    {
        private string Userid;	//发票id
        private string orderid;
        private List<Layer> Contenttxt;

        public Action1024(HttpGet httpGet)
            : base(1024, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetString("userid", ref Userid)
                && httpGet.GetString("orderid", ref orderid)
                && httpGet.GetObject("Contenttxt", ref Contenttxt))
                return true;
            return false;
        }


        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            if (hxsc.UserInfo.FirstOrDefault(o => o.Userid == Userid) == null)
            {
                return SetError("用户不存在！");
            }
            OrderH orderH = hxsc.OrderH.FirstOrDefault(o => o.OrderhId == orderid);
            if (orderH == null)
            {
                return SetError("订单不存在！");
            }
            if (orderH.Start == 0)
            {
                SetError("未付款订单不能退货!");
            }
            var orderDlist = (from od in hxsc.OrderD
                              where od.Orderhid == orderid
                              select od).ToList();
            foreach (var item in Contenttxt)
            {
                if (orderDlist.Find(o => o.Itemid == item.Itemid) == null)
                {
                    return SetError("订单图书不存在");
                }
            }

            ReturnedH returnedH = new ReturnedH()
            {
                Amt = Contenttxt.Sum(o => o.Amt),
                Orderid = orderid,
                Source = key,
                State = 0,
                Userid = Userid,
                CreateTime = DateTime.Now,
            };
            hxsc.ReturnedH.AddObject(returnedH);
            hxsc.SaveChanges();

            foreach (var item in Contenttxt)
            {
                ReturnedD returnedD = new ReturnedD()
                {
                    Amt = item.Amt,
                    Createtime = DateTime.Now,
                    Itemid = item.Itemid,
                    Returnedid = returnedH.ReturnedId,
                    Serial = "",
                    State = 0
                };
                hxsc.ReturnedD.AddObject(returnedD);
            }
            hxsc.SaveChanges();
            return true;
        }

        public class Layer
        {
            public int Itemid { get; set; }
            public float Amt { get; set; }
        }

        public override void BuildPacket()
        {
        }
    }
}
