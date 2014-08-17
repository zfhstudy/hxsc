using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 28、	删除购物篮
    /// </summary>
    public class Action1028 : BaseAction
    {
        private int shoppingbasketid;

        public Action1028(HttpGet httpGet)
            : base(1028, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetInt("shoppingbasketid", ref shoppingbasketid))
                return true;
            return false;
        }


        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            Shoppingbasket Shoppingbasket = hxsc.Shoppingbasket.FirstOrDefault(u => u.Shoppingbasketid == shoppingbasketid);
            if (Shoppingbasket == null)
            {
                return SetError("购物车中商品不存在！");
            }
            Shoppingbasket.State = 1;
            hxsc.SaveChanges();
            return true;
        }

        public override void BuildPacket()
        {
        }
    }
}
