using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 收藏
    /// </summary>
    public class Action1013 : BaseAction
    {
        private string Userid;
        private int ItemId;

        public override bool GetUrlElement()
        {
            if (httpGet.GetInt("itemid", ref ItemId)
             && httpGet.GetString("Userid", ref Userid))
                return true;
            return false;
        }

        public Action1013(HttpGet httpGet)
            : base(1013, httpGet)
        {
        }

        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            if (hxsc.UserInfo.FirstOrDefault(u => u.Userid == Userid) == null)
            {
                return SetError("用户不存在");
            }
            if (hxsc.Item.FirstOrDefault(u => u.Itemid == ItemId) == null)
            {
                return SetError("书本不存在！");
            }
            Favorites Favorites = new EfModel.Favorites()
            {
                Createtime = DateTime.Now,
                DelTime = (DateTime)System.Data.SqlTypes.SqlDateTime.MinValue,
                ItmeId = ItemId,
                Source = key,
                State = 0,
                Userid = Userid
            };
            hxsc.Favorites.AddObject(Favorites);
            hxsc.SaveChanges();
            Layer layer = new Layer();
            layer.favoritesid = Favorites.FavoritesId;
            DataPack = layer;
            return true;
        }

        private class Layer
        {
            public int favoritesid { get; set; }
        }

        public override void BuildPacket()
        {
        }
    }
}
