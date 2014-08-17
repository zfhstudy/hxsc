using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 19、	补开发票申请
    /// </summary>
    public class Action1019 : BaseAction
    {
        private string Userid;
        private string Orderid;
        private float Amt;
        private string Unit;
        private string Tax;
        private string Bank;
        private string Account;
        private string Companyaddress;
        private string Phone;


        public Action1019(HttpGet httpGet)
            : base(1019, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetString("Userid", ref Userid)
                && httpGet.GetFloat("Amt", ref Amt)
                && httpGet.GetString("Unit", ref Unit)
                && httpGet.GetString("Tax", ref Tax)
                && httpGet.GetString("Bank", ref Bank)
                && httpGet.GetString("Account", ref Account)
                && httpGet.GetString("Companyaddress", ref Companyaddress)
                && httpGet.GetString("Phone", ref Phone)
                && httpGet.GetString("Orderid", ref Orderid))
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
            string[] orderidlist = Orderid.Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
            if (orderidlist.Length == 0)
            {
                SetError("订单号不能为空！");
            }

            var orderList = (from o in hxsc.OrderH
                             where orderidlist.Any(oid => oid == o.OrderhId)
                             select o).ToList();

            if (orderList.Count < orderidlist.Length)
            {
                SetError("有订单不存在！");
            }

            var orderh = orderList.Find(u => u.UserId != Userid);
            if (orderh != null)
            {
                SetError(string.Format("订单号{0}不属于您！", orderh.OrderhId));
            }

            double pricecount = (double)orderList.Sum(o => o.Amt);
            if ((double)Amt > pricecount)
            {
                SetError("发票金额大于订单总金额！");
            }

            Invoice invoice = new Invoice()
            {
                Account = Account,
                Amt = Amt,
                Bank = Bank,
                Companyaddress = Companyaddress,
                Createtime = DateTime.Now,
                Orderid = Orderid,
                Phone = Phone,
                Source = key,
                State = 0,
                Tax = Tax,
                Unit = Unit,
                Userid = Userid
            };
            hxsc.Invoice.AddObject(invoice);
            hxsc.SaveChanges();
            DataPack = new Layer() { invoiceid = invoice.InvoiceId };
            return true;
        }

        private class Layer
        {
            public int invoiceid { get; set; }
        }

        public override void BuildPacket()
        {
        }
    }
}
