using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 18、	查看余额
    /// </summary>
    public class Action1018 : BaseAction
    {
        private string Userid;

        public Action1018(HttpGet httpGet)
            : base(1018, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetString("Userid", ref Userid))
                return true;
            return false;
        }



        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            if (hxsc.UserInfo.FirstOrDefault(u => u.Userid == Userid) == null)
            {
                return SetError("用户不存在！");
            }

            var UserInfo = (from o in hxsc.UserInfo
                            where o.Userid == Userid
                            select new { Balance = o.Balance }).FirstOrDefault();
            DataPack = UserInfo;
            return true;
        }

        public override void BuildPacket()
        {
        }
    }
}
