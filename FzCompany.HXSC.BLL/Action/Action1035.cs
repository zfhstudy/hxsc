using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 查看书签
    /// </summary>
    public class Action1035 : BaseAction
    {
        private string Userid;

        public Action1035(HttpGet httpGet)
            : base(1035, httpGet)
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
            DataPack = (from o in hxsc.Bookmark
                        where o.Userid == Userid
                        orderby o.Createtime descending
                        select new
                        {
                            Bookmarkid = o.Bookmarkid,
                            userid = o.Userid,
                            itemid = o.Itemid,
                            Position = o.Position,
                            createtime = o.Createtime
                        }).ToList();
            return true;
        }

        public override void BuildPacket()
        {
        }
    }
}
