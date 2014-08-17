using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 29、	查看购物篮
    /// </summary>
    public class Action1029 : BaseAction
    {
        private string Userid;
        private DateTime createtime;


        public Action1029(HttpGet httpGet)
            : base(1029, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            httpGet.GetDateTime("Createtime", ref createtime);
            httpGet.GetString("Userid", ref Userid);
            return true;
        }


        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            var list = (from c in hxsc.Shoppingbasket
                        join i in hxsc.Item
                        on c.Itemid equals i.Itemid
                        where c.State == 0
                        orderby c.Createtime descending
                        select new
                        {
                            Shoppingbasketid = c.Shoppingbasketid,
                            Userid = c.Userid,
                            Itemid = c.Itemid,
                            Createtime = c.Createtime,
                            Coverurl = i.Coverurl,
                            Itemna = i.Itemna
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
