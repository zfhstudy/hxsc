using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 添加帐单
    /// </summary>
    public class Action1011 : BaseAction
    {
        private string Orderid;
        private float Amt;
        private string Bank;
        private int Countryid;
        private string Purpose;
        private bool Isexpend;
        private string Userid;

        public override bool GetUrlElement()
        {
            if (httpGet.GetString("Orderid", ref Orderid)
                && httpGet.GetFloat("Amt", ref Amt)
                && httpGet.GetString("Bank", ref Bank)
                && httpGet.GetInt("Countryid", ref Countryid)
                && httpGet.GetString("Purpose", ref Purpose)
                && httpGet.GetBool("Isexpend", ref Isexpend)
                && httpGet.GetString("Userid", ref Userid))
                return true;
            return false;
        }

        public Action1011(HttpGet httpGet)
            : base(1011, httpGet)
        {
        }

        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            var userinfo = hxsc.UserInfo.FirstOrDefault(o => o.Userid == Userid);
            if (userinfo == null)
            {
                return SetError("用户不存在！");
            }
            Bill Bill = new Bill()
            {
                Amt = Amt,
                Bank = Bank,
                Countryid = Countryid,
                Createtime = DateTime.Now,
                Isexpend = Isexpend,
                Orderid = Orderid,
                Purpose = Purpose,
                Source = key,
                Userid = Userid
            };
            hxsc.Bill.AddObject(Bill);
            hxsc.SaveChanges();
            DataPack = new Layer() { Billid = Bill.Billid };
            return true;
        }

        private class Layer
        {
            public int Billid { get; set; }
        }

        public override void BuildPacket()
        {
        }
    }
}
