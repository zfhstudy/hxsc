using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 1、	用户注册接口
    /// </summary>
    public class Action1001 : BaseAction
    {
        private string userna;//用户编号
        private string pwd; //密码

        public Action1001(HttpGet httpGet)
            : base(1001, httpGet)
        {
        }

        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            if (hxsc.UserInfo.Count() > 0)
            {
                var userinfo = hxsc.UserInfo.FirstOrDefault(o => o.Userna == userna);
                if (userinfo != null)
                {
                    return SetError("此用户名已被使用，请更换一个用户名！");
                }
            }

            pwd = CryptoHelper.MD5_Encrypt(pwd, CryptoHelper.Key, Encoding.UTF8);
            UserInfo userInfo = new UserInfo()
            {
                Userid = System.Guid.NewGuid().ToString().Replace("-", ""),
                Pwd = pwd,
                Userna = userna,
            };
            hxsc.UserInfo.AddObject(userInfo);
            hxsc.SaveChanges();
            outDate od = new outDate() { userid = userInfo.Userid };
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

        public class outDate
        {
            public string userid { get; set; }
        }
    }
}
