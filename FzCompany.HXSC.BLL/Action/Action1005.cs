using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 忘记密码
    /// </summary>
    public class Action1005 : BaseAction
    {
        private string phone;//手机
        private string verification; //验证码

        public Action1005(HttpGet httpGet)
            : base(1005, httpGet)
        {
        }

        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();

            var userinfo = hxsc.UserInfo.FirstOrDefault(o => o.Phone == phone && o.Verification == verification);
            if (userinfo == null)
            {
                return SetError("此用户名或密码不正确！");
            }
            return true;
        }

        public override void BuildPacket()
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetString("phone", ref phone)
                && httpGet.GetString("verification", ref verification))
                return true;
            return false;
        }
    }
}
