using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using Newtonsoft.Json;

namespace FzCompany.HXSC.BLL.Action
{
    public abstract class BaseAction
    {
        protected int _actionID;
        protected string key;
        protected HttpGet httpGet;
        private BasePack basePack;
        public BaseLog baseLog;

        protected object DataPack
        {
            set { basePack.PackData = value; }
        }

        public BaseAction(int ActionID, HttpGet HttpGet)
        {
            httpGet = HttpGet;
            _actionID = ActionID;
            basePack = new BasePack();
            baseLog = new BaseLog(httpGet.param);
        }


        /// <summary>
        /// 子类实现Action处理
        /// </summary>
        /// <returns></returns>
        public abstract bool TakeAction();


        /// <summary>
        /// 执行Action处理
        /// </summary>
        /// <returns></returns>
        public bool DoAction()
        {
            try
            {
                return TakeAction();
            }
            catch (Exception ex)
            {
                basePack.ErrorCode = 1002;
                basePack.ErrorMsg = "业务逻辑处理出错";
                baseLog.WriteException("", ex);
                return false;
            }
        }

        /// <summary>
        /// 读取Url参数
        /// </summary>
        /// <returns></returns>
        public bool ReadUrlElement()
        {
            httpGet.GetString("key", ref key);
            if (!httpGet.CheckSign())
            {
                return SetError("签名验证出错！");
            }
            if (!GetUrlElement())
            {
                basePack.ErrorCode = 1001;
                basePack.ErrorMsg = "请求参数有错";
                return false;
            }
            return true;
        }

        protected bool SetError(string errorMsg, int errorcode = 10000)
        {
            basePack.ErrorCode = errorcode;
            basePack.ErrorMsg = errorMsg;
            return false;
        }


        /// <summary>
        /// 创建返回协议内容输出栈
        /// </summary>
        public abstract void BuildPacket();

        /// <summary>
        /// 接收用户请求的参数，并根据相应类进行检测
        /// </summary>
        /// <returns></returns>
        public abstract bool GetUrlElement();

        public void WritePacket()
        {
            httpGet.WritePack(JavaScriptConvert.SerializeObject(basePack).Replace("null", "\"\""));
        }

        /// <summary>
        /// 记录接口请求日志
        /// </summary>
        public void SaveActionLog()
        { }
    }
}
