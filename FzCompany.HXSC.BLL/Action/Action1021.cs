using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 22、	邮件订阅
    /// </summary>
    public class Action1021 : BaseAction
    {
        private string Userid;	//发票id
        private DateTime createtime;	//时间


        public Action1021(HttpGet httpGet)
            : base(1021, httpGet)
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
            var invoicelist = (from c in hxsc.Invoice
                               orderby c.Createtime descending
                               select c).ToList();

            invoicelist = invoicelist.FindAll(GetMatch);

            DataPack = (from o in invoicelist
                        select new
                        {
                            Account = o.Account,
                            Amt = o.Amt,
                            Bank = o.Bank,
                            Companyaddress = o.Companyaddress,
                            Createtime = o.Createtime,
                            Orderid = o.Orderid,
                            Phone = o.Phone,
                            State = o.State,
                            Tax = o.Tax,
                            Unit = o.Unit,
                            Userid = o.Userid
                        }).ToList();
            return true;
        }

        private bool GetMatch(Invoice o)
        {
            if (!string.IsNullOrEmpty(Userid) && createtime == DateTime.MinValue)
            {
                return o.Userid == Userid;
            }
            else if (string.IsNullOrEmpty(Userid) && createtime != DateTime.MinValue)
            {
                return o.Createtime > createtime;
            }
            else if (!string.IsNullOrEmpty(Userid) && createtime != DateTime.MinValue)
            {
                return o.Createtime > createtime && o.Userid == Userid;
            }
            return true;
        }

        public override void BuildPacket()
        {
        }
    }
}
