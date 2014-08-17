using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 2、	验证用户名是否已被注册
    /// </summary>
    public class Action1002 : BaseAction
    {
        private string userna;//用户编号

        public Action1002(HttpGet httpGet)
            : base(1002, httpGet)
        {
        }

        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            var userinfo = hxsc.UserInfo.FirstOrDefault(o => o.Userna == userna);
            if (userinfo != null)
            {
                return SetError("此用户名已被注册，请更换一个用户名！");
            }
            return true;
        }

        public override void BuildPacket()
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetString("userna", ref userna))
                return true;
            return false;
        }
    }
}
