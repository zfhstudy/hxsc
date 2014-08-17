using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 30、	点击图书记录
    /// </summary>
    public class Action1030 : BaseAction
    {
        private string Userid;
        private int itemid;



        public Action1030(HttpGet httpGet)
            : base(1030, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetInt("itemid", ref itemid)
             && httpGet.GetString("Userid", ref Userid))
                return true;
            return false;
        }


        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            var userinfo = hxsc.UserInfo.FirstOrDefault(o => o.Userid == Userid);
            if (userinfo == null)
            {
                return SetError("用户不存在！");
            }
            if (hxsc.Item.FirstOrDefault(u => u.Itemid == itemid) == null)
            {
                return SetError("书本不存在！");
            }
            Clickrecord clickre = new Clickrecord()
            {
                Createtime = DateTime.Now,
                Itemid = itemid,
                Source = key,
                Userid = Userid
            };
            hxsc.Clickrecord.AddObject(clickre);
            hxsc.SaveChanges();
            DataPack = new Layer() { Clickrecordid = clickre.Clickrecordid };
            return true;
        }

        public class Layer
        {
            public int Clickrecordid { get; set; }
        }

        public override void BuildPacket()
        {
        }
    }
}
