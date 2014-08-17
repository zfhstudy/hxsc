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
    public class Action1038 : BaseAction
    {
        private int mailid;

        public Action1038(HttpGet httpGet)
            : base(1038, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetInt("mailid", ref mailid))
                return true;
            return false;
        }


        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();

            Mail mail = hxsc.Mail.FirstOrDefault(o => o.Mailid == mailid);
            if (mail == null)
                return SetError("邮件不存在！");
            hxsc.Mail.DeleteObject(mail);
            hxsc.SaveChanges();
            return true;
        }

        public override void BuildPacket()
        {
        }
    }
}
