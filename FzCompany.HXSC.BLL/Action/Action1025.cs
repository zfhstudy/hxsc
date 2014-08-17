using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 25、	退货
    /// </summary>
    public class Action1025 : BaseAction
    {
        private int returnedid;	//发票id
        private int state;

        public Action1025(HttpGet httpGet)
            : base(1025, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetInt("returnedid", ref returnedid)
                && httpGet.GetInt("Start", ref state))
                return true;
            return false;
        }


        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            ReturnedH ReturnedH = hxsc.ReturnedH.FirstOrDefault(o => o.ReturnedId == returnedid);
            if (ReturnedH == null)
            {
                return SetError("退货单不存在!");
            }
            if (ReturnedH.State != 0)
            {
                return SetError("已经退货!");
            }
            OrderH orderH = hxsc.OrderH.FirstOrDefault(o => o.OrderhId == ReturnedH.Orderid);
            if (orderH == null)
            {
                return SetError("订单不存在!");
            }
            if (orderH.Start == 0)
            {
                return SetError("未付款订单不能退货!");
            }
            var returnedD = (from o in hxsc.ReturnedD
                             where o.Returnedid == returnedid
                             select o).ToList();
            ReturnedH.State = state;
            foreach (var item in returnedD)
            {
                item.State = state;
                OrderD orderD = hxsc.OrderD.FirstOrDefault(o => o.Itemid == item.Itemid);
                if (orderD != null)
                {
                    orderD.Start = 3;
                }
            }
            hxsc.SaveChanges();
            return true;
        }

        public override void BuildPacket()
        {
        }
    }
}
