using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 17、	查看已购图书
    /// </summary>
    public class Action1017 : BaseAction
    {
        private string Userid;

        public Action1017(HttpGet httpGet)
            : base(1017, httpGet)
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
            var listN = (from oh in hxsc.OrderD
                         join o in hxsc.OrderH
                         on oh.Orderhid equals o.OrderhId
                         join i in hxsc.Item
                         on oh.Itemid equals i.Itemid
                         where o.Start == 1 && o.UserId == Userid
                         select new
                         {
                             Itemna = i.Itemna,
                             Itemid = i.Itemid,
                             Coverurl = i.Coverurl,
                             Orderhid = oh.Orderhid,
                             Amt = o.Amt,
                         }).ToList();

            DataPack = listN;
            return true;
        }

        public override void BuildPacket()
        {
        }
    }
}
