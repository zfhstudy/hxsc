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
    public class Action1022 : BaseAction
    {
        private string Userid;	//发票id
        private int mailid;	//时间
        private int state; //状态


        public Action1022(HttpGet httpGet)
            : base(1022, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetString("userid", ref Userid)
                && httpGet.GetInt("state", ref state)
                && httpGet.GetInt("mailid", ref mailid))
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
            if (hxsc.Mail.FirstOrDefault(o => o.Mailid == mailid) == null)
            {
                return SetError("邮件不存在！");
            }
            UseriMail userMail = hxsc.UseriMail.FirstOrDefault(o => o.Userid == Userid && o.Mailid == mailid);
            if (userMail != null)
            {
                return SetError("该邮件已订阅，不需要再订阅！");
            }

            userMail = new UseriMail() { Mailid = mailid, Source = key, State = state, Userid = Userid };
            hxsc.UseriMail.AddObject(userMail);
            hxsc.SaveChanges();
            return true;
        }

        public override void BuildPacket()
        {
        }
    }
}
