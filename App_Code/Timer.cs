using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.ComponentModel;
using System.Text;

/// <summary>
/// Timer can be used to control the sequence of an event or process. 
/// Timer Control's stopwatch counts downwards from 'X' to ZERO time for measuring elapsed time. 
/// </summary>
namespace CodeControls
{
    [ToolboxData("<{0}:Timer runat='server' Enabled='true'></{0}:Timer>")]
    public class Timer : Label, ICallbackEventHandler
    {
        protected override void OnLoad(EventArgs e)
        {
            AutoStart();
            base.OnLoad(e);
        }

        //protected override void OnInit(EventArgs e)
        //{
        //    AutoStart();
        //    //  base.OnLoad(e);
        //}

        #region Load Timer
        private void AutoStart()
        {           
            //Is Not Page Request A Call Back?
            if (!this.Page.IsCallback && Enabled && (IsAutoStart || IsManualStart))
            {
                //First Request or Page Refresh?
                if (!Page.IsPostBack)
                {
                    TimeLeft = TimeOut;
                    CreateTimerCookie(false);
                    //Load the Timer Script for the Post Back/Page Load
                    LoadTimer();
                }
                else
                {
                    //Update lastIntervalTime cookie for this PostBack
                    UpdateTimerCookie();

                    if (IsPostBackOnTimeOut)
                    {
                        TimeLeft = 0;
                        TimerEventArgs eArgs = new TimerEventArgs(0);
                        if (TimeOutOccurred != null)
                        {
                            TimeOutOccurred(this, eArgs);
                        }
                        this.Text = "0:0:0.0";
                        IsManualStart = false;

                        //...Halt Timer
                    }
                    else
                    {
                        //Load the Timer Script for the Post Back/Page Load
                        LoadTimer();
                    }
                }
               
            }
            else
            {
                //If the request is a Call Back then update the Timer Settings
              //  UpdateTimerCookie();
            }
          
        }

        public void ManualStart()
        {
            if (!IsAutoStart)
            {               
                IsManualStart = true;
                TimeLeft = TimeOut;
                CreateTimerCookie(true);
                AutoStart();
            }
        }

        #endregion

        #region ICallbackEventHandler Members

        public int iTimeLeft = 0;
        // Define method that processes the callbacks on server.
        public void RaiseCallbackEvent(String eventArgument)
        {
            Int32.TryParse(eventArgument, out iTimeLeft);

            //Raise an Page Event From a Custom Control
            TimerEventArgs e = new TimerEventArgs(TimeLeft);
            if (iTimeLeft != TimeOut && iTimeLeft >= 0)
                if (IntervalReached != null)
                    IntervalReached(this, e);

            if (iTimeLeft < 0)
            {
                IsManualStart = false;
                if (TimeOutOccurred != null)
                    TimeOutOccurred(this, e);
            }
        }

        // Define method that returns callback result.
        public string GetCallbackResult()
        {
            if (ServerSideTimeSynchronize)
            {
                iTimeLeft = GetTimeLeft();
                UpdateTimerCookie();
            }
            TimeLeft = iTimeLeft;
            return iTimeLeft.ToString();
        }

        #endregion

        #region Update TimerSetting Cookie

        public void CreateTimerCookie(bool IsManual)
        {
            HttpCookie timerCookie = new HttpCookie("TimerSettings");
            timerCookie["lastIntervalTime"] = DateTime.Now.ToString();
            timerCookie["timeLeft"] = TimeOut.ToString();
            timerCookie["isManual"] = IsManual.ToString();
            timerCookie.Expires = DateTime.Now.AddDays(1d);
            HttpContext.Current.Response.Cookies.Add(timerCookie);
        }
        public void UpdateTimerCookie()
        {
            HttpCookie timerCookie = HttpContext.Current.Request.Cookies["TimerSettings"];
            if (timerCookie != null)
            {
                timerCookie["lastIntervalTime"] = DateTime.Now.ToString();
                timerCookie["timeLeft"] = timerCookie["timeLeft"];
                timerCookie.Expires = DateTime.Now.AddDays(1d);
                HttpContext.Current.Response.Cookies.Add(timerCookie);
            }
            else
                CreateTimerCookie(false);
        }

        #endregion

        #region Timer Helper Methods

        private int GetTimeLeft()
        {
            DateTime dt = DateTime.Now.AddDays(-3);

            if (HttpContext.Current.Request.Cookies["TimerSettings"] != null)
            {
                if (HttpContext.Current.Request.Cookies["TimerSettings"]["lastIntervalTime"] != null)
                { DateTime.TryParse(HttpContext.Current.Request.Cookies["TimerSettings"]["lastIntervalTime"], out dt); }
            }

            if (dt < DateTime.Now.AddDays(-1))
                return TimeOut;
            TimeSpan t = DateTime.Now.Subtract(dt);
            TimeLeft = TimeLeft - t.Seconds;
            return TimeLeft;
        }

        public void LoadTimer()
        {
            if (Enabled)
            {
                if (Interval < 0)
                {
                    throw new Exception("Interval must be non negative");
                }
                if (TimeOut < 1)
                {
                    throw new Exception("TimeOut must be greater than zero");
                }

                // Get a ClientScriptManager reference from the Page class.
                ClientScriptManager cs = Page.ClientScript;

                // Define callback references.
                String cbReference = cs.GetCallbackEventReference(this, "arg", "ReceiveServerData", "", "ProcessCallBackError", false);

                String callbackScript = "function CallTheServer(arg, context) {" + cbReference + "; }";

                // Register script blocks will perform call to the server.     
                cs.RegisterClientScriptBlock(this.GetType(), "CallTheServer", callbackScript,true);

                cs.RegisterStartupScript(this.GetType(), "TimerStopWatch", GetScript(),true);
            }
        }
        public String GetScript()
        {
            StringBuilder sb = new StringBuilder();

            String scriptCallBackTimerDeclaration =
            #region Call Back Timer Public Declaration
 @"
//Define a custom object 'Timer' 
Timer = new Object();
Timer.Interval={0};
Timer.TimeOut={1};
Timer.TimeLeft={1};
Timer.SynchronizeStopWatch={2};
Timer.CountDown=
{{    
    Async:0,
    Sync:1    
}};
Timer.RefCallBackTimer;
Timer.RefCountDownTimer;
Timer.Display;                         
Timer.MilliSecond=0; 
Timer.Second=0; 
Timer.Minute=0; 
Timer.Hour=0;
Timer.IsPostBackOnTimeOut='{3}';
";
            #endregion

            //String Format Error: To work around the method, simply replace each curly brace "{" with double braces "{{". 
            //After String.Format the double braces will be converted into single braces.
            scriptCallBackTimerDeclaration = String.Format(scriptCallBackTimerDeclaration, (Interval * 1000).ToString(), TimeLeft.ToString(), ServerSideTimeSynchronize ? 1 : 0, DoPostBackOnTimeOut.ToString().ToLower());

            String scriptCountDownTimer =
            #region Count Down Timer
 @"
Timer.Initialize=function()
{
   Timer.StopCountDownTimer();
   Timer.UpdateCountDownTimer();
   Timer.RefCountDownTimer=setTimeout('Timer.ShowCountDownTimer()',100);
   Timer.StopCallBackTimer();
   Timer.StartCallBackTimer();
} 

Timer.StopCountDownTimer=function()
{
    clearTimeout(Timer.RefCountDownTimer);
}

Timer.UpdateCountDownTimer=function ()
{    
    Timer.Hour=Math.floor(Timer.TimeLeft/3600);         
    Timer.Minute = Math.floor((Timer.TimeLeft -(Timer.Hour*3600)) / 60);
    Timer.Second = Timer.TimeLeft - ((Timer.Minute * 60)+(Timer.Hour*3600));
    Timer.MilliSecond=0;  

} 
Timer.ShowCountDownTimer = function()
{
if(Timer.Hour>0 || Timer.Minute>0 || Timer.Second>0)
{
    if (Timer.MilliSecond<=0)
    { 
        Timer.MilliSecond=9;    
        Timer.Second-=1;
        Timer.TimeLeft-=1; 
    } 
    else
	    Timer.MilliSecond-=1; 
    if (Timer.Second<=0)
    { 
        Timer.MilliSecond=9; 
        Timer.Second=59; 
        Timer.Minute-=1;
        Timer.TimeLeft-=1;
    } 
    if (Timer.Minute<=-1)
    {    
        Timer.Minute=59; 
        Timer.Hour-=1;   
    } 
    if(Timer.Hour<=-1)
    {
        Timer.MilliSecond=0; 
        Timer.Second=0;
        Timer.Minute=0;
        Timer.Hour=0;       
    }
}
else
{
   Timer.TimeLeft=-9;   
   if(Timer.IsPostBackOnTimeOut=='true')
    Timer.CallTimeOutHandler();
   else 
   Timer.CallServer();    
   Timer.StopCallBackTimer();
}

Timer.Display=document.getElementById('__DControls__Timer__Display');   
Timer.Display.innerHTML =Timer.Hour+':'+ Timer.Minute+':'+Timer.Second+'.'+Timer.MilliSecond;
if(Timer.TimeLeft>0)
    Timer.RefCountDownTimer=setTimeout('Timer.ShowCountDownTimer()',100);
else
{
if(Timer.IsPostBackOnTimeOut=='true')
    Timer.CallTimeOutHandler();
}
} 
";
            #endregion

            String scriptCallBackTimerMembers =
            #region Call Back Timer Members
 @"
Timer.CallTimeOutHandler=function()
{
    __doPostBack('TimeOutPostBack','-9');
}

Timer.StopCallBackTimer=function()
{
    clearTimeout(Timer.RefCallBackTimer);   
}

Timer.StartCallBackTimer=function()
{    
    if(Timer.TimeLeft>0)
    {        
        if(Timer.TimeLeft*1000<Timer.Interval || Timer.Interval<=0)
            Timer.RefCallBackTimer=window.setTimeout('Timer.CallServer()', Timer.TimeLeft*1000);
        else if(Timer.Interval>0)
            Timer.RefCallBackTimer=window.setTimeout('Timer.CallServer()', Timer.Interval);  
    }
    else
    {
        Timer.StopCallBackTimer();
    }
}

Timer.CallServer=function()
{
    CallTheServer(Timer.TimeLeft, ''); 
}

function ReceiveServerData(Result, context)
{  
    if(Timer.SynchronizeStopWatch==Timer.CountDown.Sync)
    {
        Timer.TimeLeft=Result;       
        Timer.Initialize();       
    }       
    else
    {
        Timer.StartCallBackTimer();
    }        
}

function ProcessCallBackError(arg, context)
{
    Timer.StopCallBackTimer();
    alert('Error : Call Back Method Failed'+'  Arg : '+arg+'   Context : '+context);
}

Timer.Initialize();
";
            #endregion

          //  sb.Append("<script type=\"text/javascript\">");
            if(DisableRightClick)
                sb.Append("document.oncontextmenu = new Function('return false');");
            sb.Append(scriptCallBackTimerDeclaration);
            sb.Append(scriptCountDownTimer.Replace("__DControls__Timer__Display", this.ClientID));
            sb.Append(scriptCallBackTimerMembers);
          //  sb.Append("</script>");

            return sb.ToString();
        }


        #endregion

        #region Timer Events
        [Description("Notifies your application when a specified Time Out occurred.")]
        [Category("Timer")]
        public event TimerTimeOutEvent.TimerTimeOutEventHandler TimeOutOccurred;
        protected virtual void OnTimeOutOccurred(TimerEventArgs e)
        {
            if (TimeOutOccurred != null) TimeOutOccurred(this, e);
        }

        [Description("Notifies your application when a specified period of time has elapsed. It is trigged through a client callback method.")]
        [Category("Timer")]
        public event TimerIntervalEvent.TimerIntervalEventHandler IntervalReached;        
        protected virtual void OnIntervalReached(TimerEventArgs e)
        {
            if (IntervalReached != null) IntervalReached(this, e);
        }

        #endregion             

        /// <summary>
        /// After Page_Init(), the LoadViewState event is fired to load values from the hidden __VIEWSTATE
        /// So all property values stored in the ViewState won't be avalable in the Page Init() Stage.          
        /// </summary>
        #region Properties
        private bool _enabled = true;
        [Description("Enabled state of the Timer.")]
        [Category("Timer Settings")]
        public new bool Enabled
        {
            get
            {
                return _enabled;
            }

            set
            {
                _enabled = value;
            }
        }
        private bool _IsAutoStart;
        [Description("Auto Start Timer.")]
        [Category("Timer Settings")]
        public bool IsAutoStart
        {
            get
            {
                return _IsAutoStart;
            }

            set
            {
                _IsAutoStart = value;
            }
        }
                      
        [Browsable(false)]       
        [DefaultValue(false)]
        public bool IsManualStart
        {
            get
            {
                HttpCookie timerCookie = HttpContext.Current.Request.Cookies["TimerSettings"];
                if (timerCookie != null)
                    if(timerCookie["isManual"]!=null)
                        return bool.Parse(timerCookie["isManual"].ToString());
                return false;
            }

            set
            {
                HttpCookie timerCookie = HttpContext.Current.Request.Cookies["TimerSettings"];
                if (timerCookie != null)
                {
                    timerCookie["isManual"] = value.ToString();
                    HttpContext.Current.Response.Cookies.Add(timerCookie);
                }              
            }
        }

        private int _timeOut;
        [Description("TimeOut defined in seconds.")]
        [Category("Timer Settings")]
        public int TimeOut
        {
            get
            {
                return _timeOut;
            }

            set
            {
                _timeOut = value;
            }
        }

        private int _interval;
        [Description("Interval defined in seconds.")]
        [Category("Timer Settings")]
        public int Interval
        {
            get
            {
                return _interval;
            }

            set
            {
                _interval = value;
            }
        }

        private int _timeLeft;
        [Browsable(false)]
        public int TimeLeft
        {
            get
            {
                HttpCookie timerCookie = HttpContext.Current.Request.Cookies["TimerSettings"];
                if (timerCookie != null)
                    Int32.TryParse(timerCookie["timeLeft"].ToString(), out _timeLeft);                
                return _timeLeft;
            }

            set
            {
                HttpCookie timerCookie = HttpContext.Current.Request.Cookies["TimerSettings"];
                if (timerCookie != null)
                {
                    timerCookie["timeLeft"] = value.ToString();
                    HttpContext.Current.Response.Cookies.Add(timerCookie);
                }

                _timeLeft = value;
            }
        }

        private bool _serverSideTimeSync;
        [Description("Update Timer's StopWatch with Server Time for each interval.")]
        [Category("Timer Settings")]
        public bool ServerSideTimeSynchronize
        {
            get
            {
                return _serverSideTimeSync;
            }

            set
            {
                _serverSideTimeSync = value;
            }
        }

       
        private bool _disableRightClick;
        [Description("Disables mouse right click.")]
        [Category("Timer Settings")]
        public bool DisableRightClick
        {
            get
            {
                return _disableRightClick;
            }

            set
            {
                _disableRightClick = value;
            }
        }

        private bool _doPostbackOnTimeOut;
        [Description("Allow full postback on Timeout.")]
        [Category("Timer Settings")]
        public bool DoPostBackOnTimeOut
        {
            get
            {
                return _doPostbackOnTimeOut;
            }

            set
            {
                _doPostbackOnTimeOut = value;
            }
        }
               
        [Browsable(false)]
        public bool IsPostBackOnTimeOut
        {
            get
            {
                String eventTarget = this.Page.Request["__EVENTTARGET"];
                return eventTarget == "TimeOutPostBack" ? true : false;                    
            }           
        }
        #endregion
    }

    
    #region Timer Event Arg Class Definition

    public class TimerEventArgs
    { 
        private int _timeLeft;
        public int TimeLeft { get { return _timeLeft; } }

        public TimerEventArgs(int timeLeft)
        {
            _timeLeft = timeLeft;
        }
    }

    public class TimerIntervalEvent
    {
        public delegate void TimerIntervalEventHandler(object sender, TimerEventArgs e);
    }

    public class TimerTimeOutEvent
    {
        public delegate void TimerTimeOutEventHandler(object sender, TimerEventArgs e);
    }
    #endregion
}
