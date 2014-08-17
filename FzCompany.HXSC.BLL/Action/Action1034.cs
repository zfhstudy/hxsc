using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 34、	修改书签
    /// </summary>
    public class Action1034 : BaseAction
    {
        private int Bookmarkid;
        private string Position;

        public Action1034(HttpGet httpGet)
            : base(1034, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetInt("Bookmarkid", ref Bookmarkid)
                && httpGet.GetString("Position", ref Position))
                return true;
            return false;
        }


        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            Bookmark Bookmark = hxsc.Bookmark.FirstOrDefault(u => u.Bookmarkid == Bookmarkid);
            if (Bookmark == null)
            {
                return SetError("书签不存在！");
            }
            Bookmark.Position = Position;
            hxsc.SaveChanges();
            return true;
        }

        public override void BuildPacket()
        {
        }
    }
}
