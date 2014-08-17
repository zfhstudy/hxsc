using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 37、	邮件类型添加
    /// </summary>
    public class Action1037 : BaseAction
    {
        private int genre;
        private int classify;
        private string Contenttxt;
        private int levelx;
        private int parentsmailid;


        public Action1037(HttpGet httpGet)
            : base(1037, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetInt("classify", ref classify)
                && httpGet.GetString("Contenttxt", ref Contenttxt)
                && httpGet.GetInt("levelx", ref levelx)
                 && httpGet.GetInt("genre", ref genre)
                && httpGet.GetInt("parentsmailid", ref parentsmailid))
                return true;
            return false;
        }


        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            Mail mail = new Mail()
            {
                Classify = classify,
                Contenttxt = Contenttxt,
                Genre = genre,
                Levelx = levelx,
                Parentsmailid = parentsmailid,
                Source = key
            };
            hxsc.Mail.AddObject(mail);
            hxsc.SaveChanges();
            DataPack = new Layer() { mailid = mail.Mailid };
            return true;
        }

        public class Layer
        {
            public int mailid { get; set; }
        }

        public override void BuildPacket()
        {
        }
    }
}
