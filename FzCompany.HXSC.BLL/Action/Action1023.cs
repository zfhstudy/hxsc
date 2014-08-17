using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 23、	邮件订阅查看
    /// </summary>
    public class Action1023 : BaseAction
    {
        private string Userid;	//发票id


        public Action1023(HttpGet httpGet)
            : base(1023, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetString("userid", ref Userid))
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

            DataPack = (from um in hxsc.UseriMail
                        join m in hxsc.Mail
                        on um.Mailid equals m.Mailid
                        where um.Userid == Userid
                        select new
                        {
                            Userid = um.Userid,
                            State = um.State,
                            Mailid = um.Mailid,
                            Genre = m.Genre,
                            Classify = m.Classify,
                            Contenttxt = m.Contenttxt,
                            Levelx = m.Levelx,
                            Parentsmailid = m.Parentsmailid
                        }).ToList();
            return true;
        }

        public override void BuildPacket()
        {
        }
    }
}
