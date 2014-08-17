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
    public class Action2001 : BaseAction
    {
        private int itemid;
        private int itemno;
        private string itemna;
        private int directoryid;
        private string isbn;
        private int languageid;
        private string code;
        private string cnmarc;
        private string cip;
        private string originalna;
        private int originallanguageid;
        private int originalprice;
        private int originalcountryid;
        private string Press;
        private int price;
        private DateTime editiontiem;
        private DateTime firsteditiontime;
        private int edition;
        private int timex;
        private int Volume;
        private int Volumesize;
        private string author;
        private string translator;
        private int compilingmethodid;
        private string chief;
        private int wordsnumber;
        private int pagenumber;
        private string editorcharge;
        private int booknumber;
        private string editorcopy;
        private string deitorPlanning;
        private string deitoracquiring;
        private string Platedesign;
        private string Coverdesign;
        private string overalldesign;
        private string Published;
        private string reader;
        private string draw;
        private string Typesetting;
        private string printing;
        private DateTime Shelftime;
        private int maxnumber;
        private int number;
        private int start;
        private DateTime Undertime;
        private string coverurl;
        private string filerul;
        private string itemkey;
        private bool Ebook;
        private int Introduction;


        public Action2001(HttpGet httpGet)
            : base(2001, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetInt("itemno", ref itemno)
                && httpGet.GetString("itemna", ref itemna)
                && httpGet.GetInt("directoryid", ref directoryid)
                && httpGet.GetString("isbn", ref isbn)
                && httpGet.GetInt("languageid", ref languageid)
                && httpGet.GetString("code", ref code)
                && httpGet.GetString("cnmarc", ref cnmarc)
                && httpGet.GetString("cip", ref cip)
                && httpGet.GetString("originalna", ref originalna)
                && httpGet.GetInt("originallanguageid", ref originallanguageid)
                && httpGet.GetInt("originalprice", ref originalprice)
                && httpGet.GetInt("originalcountryid", ref originalcountryid)
                && httpGet.GetString("Press", ref Press)
                && httpGet.GetInt("price", ref price)
                && httpGet.GetDateTime("editiontiem", ref editiontiem)
                && httpGet.GetDateTime("firsteditiontime", ref firsteditiontime)
                && httpGet.GetInt("edition", ref edition)
                && httpGet.GetInt("timex", ref timex)
                && httpGet.GetInt("Volume", ref Volume)
                && httpGet.GetInt("Volumesize", ref Volumesize)
                && httpGet.GetString("translator", ref translator)
                && httpGet.GetInt("compilingmethodid", ref compilingmethodid)
                && httpGet.GetString("chief", ref chief)
                && httpGet.GetInt("wordsnumber", ref wordsnumber)
                && httpGet.GetInt("pagenumber", ref pagenumber)
                && httpGet.GetString("editorcharge", ref editorcharge)
                && httpGet.GetInt("booknumber", ref booknumber)
                && httpGet.GetString("editorcopy", ref editorcopy)
                && httpGet.GetString("deitorPlanning", ref deitorPlanning)
                && httpGet.GetString("Coverdesign", ref Coverdesign)
                && httpGet.GetString("overalldesign", ref overalldesign)
                && httpGet.GetString("Published", ref Published)
                && httpGet.GetString("reader", ref reader)
                && httpGet.GetString("draw", ref draw)
                && httpGet.GetString("Typesetting", ref Typesetting)
                && httpGet.GetString("printing", ref printing)
                && httpGet.GetDateTime("Shelftime", ref Shelftime)
                && httpGet.GetInt("maxnumber", ref maxnumber)
                && httpGet.GetInt("number", ref number)
                && httpGet.GetInt("start", ref start)
                && httpGet.GetDateTime("Undertime", ref Undertime)
                && httpGet.GetString("coverurl", ref coverurl)
                && httpGet.GetString("filerul", ref filerul)
                && httpGet.GetString("itemkey", ref itemkey)
                && httpGet.GetBool("Ebook", ref Ebook)
                && httpGet.GetInt("Introduction", ref Introduction)
                && httpGet.GetString("Platedesign", ref Platedesign))
                return true;
            return false;
        }


        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            Item item = new Item()
            {
                Author = author,
                Booknumber = booknumber,
                Chief = chief,
                Cip = cip,
                Cnmarc = cnmarc,
                Code = code,
                Compilingmethodid = compilingmethodid,
                CoverDesign = Coverdesign,
                Coverurl = coverurl,
                Createtime = DateTime.Now,
                Deitoracquiring = deitoracquiring,
                Deitorplanning = deitoracquiring,
                Directoryid = directoryid,
                Draw = draw,
                Ebook = Ebook,
                Edition = edition,
                Editiontiem = editiontiem,
                Editorcharge = editorcharge,
                Editorcopy = editorcopy,
                Filerul = filerul,
                Firsteditiontime = firsteditiontime,
                Isbn = isbn,
                Itemkey = itemkey,
                Itemna = itemna,
                Languageid = languageid,
                Maxnumber = maxnumber,
                Number = number,
                Originalcountryid = originalcountryid,
                Originallanguageid = originallanguageid,
                Originalna = originalna,
                Originalprice = originalprice,
                OverallDesign = overalldesign,
                Pagenumber = pagenumber,
                PlateDesign = Platedesign,
                Press = Press,
                Price = price,
                Printing = printing,
                Published = Published,
                Reader = reader,
                ShelfTime = Shelftime,
                Start = start,
                Timex = timex,
                Translator = translator,
                Typesetting = Typesetting,
                Undertime = Undertime,
                Volume = Volume,
                Volumesize = Volumesize,
                Wordsnumber = wordsnumber,
                Itemno = itemno,
            };
            hxsc.Item.AddObject(item);
            hxsc.SaveChanges();
            DataPack = new Layer() { itemid = item.Itemid };
            return true;
        }

        public class Layer
        {
            public int itemid { get; set; }
        }

        public override void BuildPacket()
        {
        }
    }
}
