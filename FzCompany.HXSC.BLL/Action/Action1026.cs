using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 26、	退货查看
    /// </summary>
    public class Action1026 : BaseAction
    {
        private string Userid;	//发票id
        private DateTime createtime;

        public Action1026(HttpGet httpGet)
            : base(1026, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            httpGet.GetString("userid", ref Userid);
            httpGet.GetDateTime("createtime", ref createtime);
            return true;
        }


        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            var list = (from o in hxsc.ReturnedH
                        orderby o.CreateTime descending
                        select o).ToList().FindAll(GetMath);
            DataPack = (from o in list
                        select new
                        {
                            userid = o.Userid,
                            orderid = o.Orderid,
                            returnedid = o.ReturnedId,
                            start = o.State,
                            amt = o.Amt,
                            detail = GetDetail(hxsc, o.ReturnedId)
                        }).ToList();
            return true;
        }

        private bool GetMath(ReturnedH o)
        {
            if (!string.IsNullOrEmpty(Userid) && createtime == DateTime.MinValue)
            {
                return o.Userid == Userid;
            }
            else if (string.IsNullOrEmpty(Userid) && createtime != DateTime.MinValue)
            {
                return o.CreateTime > createtime;
            }
            else if (!string.IsNullOrEmpty(Userid) && createtime != DateTime.MinValue)
            {
                return o.CreateTime > createtime && o.Userid == Userid;
            }
            return true;
        }

        private object GetDetail(HXSCEntities hxsc, int ReturnedId)
        {
            return (from o in hxsc.ReturnedD
                    where o.Returnedid == ReturnedId
                    select new
                    {
                        itemid = o.Itemid,
                        amt = o.Amt,
                        createtime = o.Createtime,
                        start = o.State
                    }).ToList();
        }

        public override void BuildPacket()
        {
        }
    }
}
