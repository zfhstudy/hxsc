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
    public class Action1014 : BaseAction
    {
        private string Userid;
        private DateTime createtime;

        public override bool GetUrlElement()
        {
            httpGet.GetDateTime("Createtime", ref createtime);
            httpGet.GetString("Userid", ref Userid);
            return true;
        }

        public Action1014(HttpGet httpGet)
            : base(1014, httpGet)
        {
        }

        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            var list = (from f in hxsc.Favorites
                        join item in hxsc.Item
                        on f.ItmeId equals item.Itemid
                        where f.State == 0
                        orderby f.Createtime descending
                        select new
                        {
                            Createtime = f.Createtime,
                            FavoritesId = f.FavoritesId,
                            ItmeId = f.ItmeId,
                            State = f.State,
                            Userid = f.Userid,
                            Itemna = item.Itemna,
                            Price = item.Price
                        }).ToList();
            if (!string.IsNullOrEmpty(Userid) && createtime == DateTime.MinValue)
            {
                list = list.FindAll(o => o.Userid == Userid);
            }
            else if (string.IsNullOrEmpty(Userid) && createtime != DateTime.MinValue)
            {
                list = list.FindAll(o => o.Createtime > createtime);
            }
            else if (!string.IsNullOrEmpty(Userid) && createtime != DateTime.MinValue)
            {
                list = list.FindAll(o => o.Createtime > createtime && o.Userid == Userid);
            }
            DataPack = list;
            return true;
        }

        public override void BuildPacket()
        {
        }
    }
}
