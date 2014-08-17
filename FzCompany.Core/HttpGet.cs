using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.IO;
using System.Collections;
using Newtonsoft.Json;

namespace FzCompany.Core
{
    public class HttpGet
    {
        public string param = string.Empty;
        private Hashtable htparam;

        public HttpGet()
        {
            htparam = new Hashtable();
            Stream stream = HttpContext.Current.Request.InputStream;
            byte[] batebyte = new byte[(int)stream.Length];
            stream.Read(batebyte, 0, (int)stream.Length);
            param = Encoding.UTF8.GetString(batebyte, 0, batebyte.Length);
            SetParam();
        }

        private void SetParam()
        {
            string[] paramArr = param.Split('&');
            for (int i = 0; i < paramArr.Length; i++)
            {
                if (paramArr[i] == string.Empty)
                    continue;

                string[] paramdetailArr = paramArr[i].Split('=');
                if (paramdetailArr.Length < 2)
                    continue;

                string key = paramdetailArr[0].ToLower();
                string value = paramdetailArr[1];
                if (htparam.ContainsKey(key))
                    htparam[key] = value;
                else
                    htparam.Add(key, value);
            }
        }

        /// <summary>
        /// 签名检查
        /// </summary>
        /// <returns></returns>
        public bool CheckSign()
        {
            if (!htparam.ContainsKey("mac")
                || !htparam.ContainsKey("key"))
                return false;
            string mac = htparam["mac"].ToString();
            string key = htparam["key"].ToString();
            string signdata = param.Substring(0, param.IndexOf("&mac"));
            string sign = CryptoHelper.MD5_Encrypt(signdata, key, Encoding.UTF8);
            return sign == mac;
        }

        /// <summary>
        /// 读取INT类型的请求参数
        /// </summary>
        /// <param name="aName">URL参数名</param>
        /// <param name="rValue">返回变量</param>
        /// <returns></returns>
        public bool GetInt(string aName, ref Int32 rValue)
        {
            aName = aName.ToLower();
            if (htparam[aName] != null)
            {
                return Int32.TryParse(htparam[aName].ToString(), out rValue);
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// 读取String类型的请求参数
        /// </summary>
        /// <param name="aName">URL参数名</param>
        /// <param name="rValue">返回变量</param>
        /// <returns></returns>
        public bool GetString(string aName, ref string rValue)
        {
            aName = aName.ToLower();
            if (htparam[aName] != null)
            {
                rValue = htparam[aName].ToString();
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// 读取String类型的请求参数
        /// </summary>
        /// <param name="aName">URL参数名</param>
        /// <param name="rValue">返回变量</param>
        /// <returns></returns>
        public bool GetDateTime(string aName, ref DateTime rValue)
        {
            aName = aName.ToLower();
            if (htparam[aName] != null)
            {
                return DateTime.TryParse(htparam[aName].ToString(), out rValue);
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// 读取String类型的请求参数
        /// </summary>
        /// <param name="aName">URL参数名</param>
        /// <param name="rValue">返回变量</param>
        /// <returns></returns>
        public bool GetFloat(string aName, ref float rValue)
        {
            aName = aName.ToLower();
            if (htparam[aName] != null)
            {
                return float.TryParse(htparam[aName].ToString(), out rValue);
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// 读取Bool类型的请求参数
        /// </summary>
        /// <param name="aName">URL参数名</param>
        /// <param name="rValue">返回变量</param>
        /// <returns></returns>
        public bool GetBool(string aName, ref Boolean rValue)
        {
            aName = aName.ToLower();
            if (htparam[aName] != null)
            {
                try
                {
                    int i = 0;
                    if (int.TryParse(htparam[aName].ToString(), out i))
                    {
                        rValue = Convert.ToBoolean(i);
                        return true;
                    }
                    return false;
                }
                catch
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// 读取Bool类型的请求参数
        /// </summary>
        /// <param name="aName">URL参数名</param>
        /// <param name="rValue">返回变量</param>
        /// <returns></returns>
        public bool GetHtml(string aName, ref string rValue)
        {
            if (GetString(aName, ref rValue))
            {
                rValue = HttpUtility.UrlDecode(rValue);
                return true;
            }
            return false;
        }

        /// <summary>
        /// 读取Bool类型的请求参数
        /// </summary>
        /// <param name="aName">URL参数名</param>
        /// <param name="rValue">返回变量</param>
        /// <returns></returns>
        public bool GetObject<T>(string aName, ref T rValue)
        {
            aName = aName.ToLower();
            if (htparam[aName] != null)
            {
                try
                {
                    rValue = JavaScriptConvert.DeserializeObject<T>(HttpUtility.UrlDecode(htparam[aName].ToString()));
                    return true;
                }
                catch
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// 页面返回
        /// </summary>
        /// <param name="strpack">JSon格式数指路</param>
        public void WritePack(string strpack)
        {
            HttpContext.Current.Response.Write(strpack);
        }
    }
}
