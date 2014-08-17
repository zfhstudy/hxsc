using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 31、	记录预览图书
    /// </summary>
    public class Action1032 : BaseAction
    {
        private string Userid;
        private int itemid;
        private string Position;

        public Action1032(HttpGet httpGet)
            : base(1032, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetInt("itemid", ref itemid)
                && httpGet.GetString("Position", ref Position)
                && httpGet.GetString("Userid", ref Userid))
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
            if (hxsc.Item.FirstOrDefault(u => u.Itemid == itemid) == null)
            {
                return SetError("图书不存在！");
            }
            Bookmark Bookmark = new Bookmark()
            {
                Createtime = DateTime.Now,
                Itemid = itemid,
                Position = Position,
                Userid = Userid,
                Source = key
            };
            hxsc.Bookmark.AddObject(Bookmark);
            hxsc.SaveChanges();
            DataPack = new Layer() { Bookmarkid = Bookmark.Bookmarkid };
            return true;
        }

        public class Layer
        {
            public int Bookmarkid { get; set; }
        }

        public override void BuildPacket()
        {
        }
    }
}
