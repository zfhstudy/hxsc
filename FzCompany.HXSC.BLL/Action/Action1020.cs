using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 20、	开发票
    /// </summary>
    public class Action1020 : BaseAction
    {
        private int invoiceid;	//发票id
        private int state;	//状态 0：未开1：已开2：异常

        public Action1020(HttpGet httpGet)
            : base(1020, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetInt("invoiceid", ref invoiceid)
                && httpGet.GetInt("state", ref state))
                return true;
            return false;
        }



        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            Invoice Invoice = hxsc.Invoice.FirstOrDefault(u => u.InvoiceId == invoiceid);
            if (Invoice == null)
            {
                return SetError("发票不存在！");
            }
            if (state < 0 || state > 2)
            {
                return SetError("发票状态不正确！");
            }
            Invoice.State = state;
            hxsc.SaveChanges();
            return true;
        }

        public override void BuildPacket()
        {
        }
    }
}
