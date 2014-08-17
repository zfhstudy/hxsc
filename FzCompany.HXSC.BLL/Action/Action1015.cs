using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 评论
    /// </summary>
    public class Action1015 : BaseAction
    {
        private string Userid;
        private int Itemid;
        private int Star;
        private int Parentscommentsid;
        private string Connentstxt;


        public Action1015(HttpGet httpGet)
            : base(1015, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetInt("Itemid", ref Itemid)
                && httpGet.GetInt("Star", ref Star)
                && httpGet.GetInt("Parentscommentsid", ref Parentscommentsid)
                && httpGet.GetHtml("Connentstxt", ref Connentstxt)
                && httpGet.GetString("Userid", ref Userid))
            {
                return true;
            }
            return false;
        }



        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            if (hxsc.UserInfo.FirstOrDefault(u => u.Userid == Userid) == null)
            {
                return SetError("用户不存在！");
            }
            if (hxsc.Item.FirstOrDefault(u => u.Itemid == Itemid) == null)
            {
                return SetError("图书不存在！");
            }
            Comments comments = new Comments()
            {
                Commentstxt = Connentstxt,
                Createtime = DateTime.Now,
                Itemid = Itemid,
                Source = key,
                Star = Star,
                Parentscommentsid = Parentscommentsid,
                Userid = Userid
            };
            hxsc.Comments.AddObject(comments);
            hxsc.SaveChanges();
            return true;
        }

        public override void BuildPacket()
        {
        }
    }
}
