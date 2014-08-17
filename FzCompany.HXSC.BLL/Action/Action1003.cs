using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 3、	修改密码
    /// </summary>
    public class Action1003 : BaseAction
    {
        private string userid;//用户编号
        private string pwd;//用户编号

        public Action1003(HttpGet httpGet)
            : base(1003, httpGet)
        {
        }

        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            var userinfo = hxsc.UserInfo.FirstOrDefault(o => o.Userid == userid);
            if (userinfo == null)
            {
                return SetError("用户不存在！");
            }
            pwd = CryptoHelper.MD5_Encrypt(pwd, CryptoHelper.Key, Encoding.UTF8);
            userinfo.Pwd = pwd;
            hxsc.SaveChanges();
            return true;
        }

        public override void BuildPacket()
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetString("userid", ref userid)
                && httpGet.GetString("pwd", ref pwd))
                return true;
            return false;
        }
    }
}
