using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 用户注册登录
    /// </summary>
    public class Action1004 : BaseAction
    {
        private string userna;//用户编号
        private string pwd; //密码

        public Action1004(HttpGet httpGet)
            : base(1004, httpGet)
        {
        }

        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();

            pwd = CryptoHelper.MD5_Encrypt(pwd, CryptoHelper.Key, Encoding.UTF8);
            var userinfo = hxsc.UserInfo.FirstOrDefault(o => o.Userna == userna && o.Pwd == pwd);
            if (userinfo == null)
            {
                return SetError("此用户名或密码不正确！");
            }
            Layer od = new Layer() { userid = userinfo.Userid };
            DataPack = od;
            return true;
        }

        public override void BuildPacket()
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetString("userna", ref userna)
                && httpGet.GetString("pwd", ref pwd))
                return true;
            return false;
        }

        public class Layer
        {
            public string userid { get; set; }
        }
    }
}
