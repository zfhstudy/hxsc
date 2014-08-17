using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 36、	删除收藏
    /// </summary>
    public class Action1036 : BaseAction
    {
        private int faboritesid;

        public Action1036(HttpGet httpGet)
            : base(1036, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetInt("faboritesid", ref faboritesid))
                return true;
            return false;
        }


        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            Favorites Favorites = hxsc.Favorites.FirstOrDefault(o => o.FavoritesId == faboritesid);
            if (Favorites == null)
            {
                SetError("此收藏不存在");
            }
            Favorites.State = 0;
            hxsc.SaveChanges();
            return true;
        }

        public override void BuildPacket()
        {
        }
    }
}
