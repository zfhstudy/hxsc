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
    public class Action1031 : BaseAction
    {
        private string Userid;
        private int itemid;



        public Action1031(HttpGet httpGet)
            : base(1031, httpGet)
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
            Preview preview = new Preview()
             {
                 Createtime = DateTime.Now,
                 Itemid = itemid,
                 Source = key,
                 Userid = Userid
             };
            hxsc.Preview.AddObject(preview);
            hxsc.SaveChanges();
            DataPack = new Layer() { Previewid = preview.Previewid };
            return true;
        }

        public class Layer
        {
            public int Previewid { get; set; }
        }

        public override void BuildPacket()
        {
        }
    }
}
