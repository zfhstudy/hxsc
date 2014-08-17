using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 16、	查询评论
    /// </summary>
    public class Action1016 : BaseAction
    {
        private string Userid;
        private DateTime createtime;
        private int Itemid;

        public Action1016(HttpGet httpGet)
            : base(1016, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            httpGet.GetInt("Itemid", ref Itemid);
            httpGet.GetDateTime("Createtime", ref createtime);
            httpGet.GetString("Userid", ref Userid);
            return true;
        }



        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            //if (hxsc.UserInfo.FirstOrDefault(u => u.Userid == Userid) == null)
            //{
            //    return SetError("用户不存在！");
            //}
            //if (hxsc.Item.FirstOrDefault(u => u.Itemid == Itemid) == null)
            //{
            //    return SetError("图书不存在！");
            //}
            var list = (from o in hxsc.Comments
                        orderby o.Createtime descending
                        select o).ToList();

            list = list.FindAll(GetMath);
            var listN = (from o in list
                         select new
                         {
                             o.Commentsid,
                             o.Commentstxt,
                             o.Createtime,
                             o.Itemid,
                             o.Parentscommentsid,
                             o.Star,
                             o.Userid
                         }).ToList();

            DataPack = listN;
            return true;
        }

        private bool GetMath(Comments o)
        {
            bool b_userid = true;
            bool b_itemid = true;
            bool b_createtime = true;
            if (!string.IsNullOrEmpty(Userid))
                b_userid = o.Userid == Userid;
            if (Itemid != 0)
                b_itemid = o.Itemid == Itemid;
            if (createtime != DateTime.MinValue)
                b_createtime = o.Createtime > createtime;
            return b_userid && b_itemid && b_createtime;
        }

        public override void BuildPacket()
        {
        }
    }
}
