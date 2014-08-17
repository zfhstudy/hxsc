using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 33、	删除书签
    /// </summary>
    public class Action1033 : BaseAction
    {
        private int Bookmarkid;

        public Action1033(HttpGet httpGet)
            : base(1033, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetInt("Bookmarkid", ref Bookmarkid))
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
            hxsc.Bookmark.DeleteObject(Bookmark);
            hxsc.SaveChanges();
            return true;
        }

        public override void BuildPacket()
        {
        }
    }
}
