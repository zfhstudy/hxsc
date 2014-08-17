using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 查看订单明细
    /// </summary>
    public class Action1009 : BaseAction
    {
        private string orderid;//用户编码


        public Action1009(HttpGet httpGet)
            : base(1009, httpGet)
        {
        }

        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            DataPack = (from o in hxsc.OrderD
                        join item in hxsc.Item
                        on o.Itemid equals item.Itemid
                        where o.Orderhid == orderid
                        select new
                        {
                            amt = o.Amt,
                            createtime = o.Createtime,
                            discount = o.Discount,
                            orderhid = o.Orderhid,
                            coverurl = item.Coverurl,
                            itemid = o.Itemid,
                            itemna = item.Itemna,
                            number = o.Number,
                            price = o.Price,
                            realamt = o.Realamt,
                            serial = o.Serial,
                            start = o.Start
                        }).ToList();
            return true;
        }

        public override void BuildPacket()
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetString("orderid", ref orderid))
                return true;
            return false;
        }
    }
}
