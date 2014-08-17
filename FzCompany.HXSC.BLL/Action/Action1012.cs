using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 查看帐单
    /// </summary>
    public class Action1012 : BaseAction
    {
        private string Userid;
        private DateTime createtime = DateTime.MinValue;

        public override bool GetUrlElement()
        {
            httpGet.GetDateTime("createtime", ref createtime);
            httpGet.GetString("Userid", ref Userid);
            return true;
        }

        public Action1012(HttpGet httpGet)
            : base(1012, httpGet)
        {
        }

        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            var billlist = (from c in hxsc.Bill
                            orderby c.Createtime descending
                            select c).ToList().FindAll(GetMath);

            List<Layer> layerlist = new List<Layer>();
            foreach (var item in billlist)
            {
                Layer layer = new Layer()
                {
                    amt = item.Amt,
                    bank = item.Bank,
                    billid = item.Billid,
                    countryid = item.Countryid,
                    createtime = item.Createtime.ToString("yyyy-MM-dd HH:mm:ss"),
                    isexpend = item.Isexpend,
                    orderid = item.Orderid,
                    purpose = item.Purpose,
                    userid = item.Userid
                };
                layerlist.Add(layer);
            }
            DataPack = layerlist;
            return true;
        }

        private bool GetMath(Bill o)
        {
            if (!string.IsNullOrEmpty(Userid) && createtime == DateTime.MinValue)
            {
                return o.Userid == Userid;
            }
            else if (string.IsNullOrEmpty(Userid) && createtime != DateTime.MinValue)
            {
                return o.Createtime > createtime;
            }
            else if (!string.IsNullOrEmpty(Userid) && createtime != DateTime.MinValue)
            {
                return o.Createtime > createtime && o.Userid == Userid;
            }
            return true;
        }

        private class Layer
        {
            public int billid { get; set; }
            public string createtime { get; set; }
            public double amt { get; set; }
            public bool isexpend { get; set; }
            public string bank { get; set; }
            public int countryid { get; set; }
            public string orderid { get; set; }
            public string purpose { get; set; }
            public string userid { get; set; }
        }

        public override void BuildPacket()
        {
        }
    }
}
