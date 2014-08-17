using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 27、	添加购物篮
    /// </summary>
    public class Action1027 : BaseAction
    {
        private string Userid;	//发票id
        private int Itemid;

        public Action1027(HttpGet httpGet)
            : base(1027, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetString("userid", ref Userid)
                && httpGet.GetInt("itemid", ref Itemid))
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
            if (hxsc.Item.FirstOrDefault(u => u.Itemid == Itemid) == null)
            {
                return SetError("图书不存在！");
            }
            Shoppingbasket shopingbasket = new Shoppingbasket()
            {
                Createtime = DateTime.Now,
                Itemid = Itemid,
                Source = key,
                State = 0,
                Userid = Userid
            };
            hxsc.Shoppingbasket.AddObject(shopingbasket);
            hxsc.SaveChanges();
            return true;
        }

        public override void BuildPacket()
        {
        }
    }
}
