using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 邮件类型删除
    /// </summary>
    public class Action2006 : BaseAction
    {
        private int itemid;


        public Action2006(HttpGet httpGet)
            : base(2006, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetInt("itemid", ref itemid))
                return true;
            return false;
        }


        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            Item item = hxsc.Item.FirstOrDefault(o => o.Itemid == itemid);
            if (item == null)
            {
                return SetError("图书信息不存在!");
            }
            DataPack = item;
            return true;
        }

        public override void BuildPacket()
        {
        }
    }
}
