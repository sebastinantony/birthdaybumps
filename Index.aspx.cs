using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace birthdaybumps
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (string.IsNullOrEmpty(Request.QueryString["code"]) && Session["access_token"] == null)
                {

                    Facebook fb = new Facebook(ConfigurationSettings.AppSettings["FacebookClientID"].ToString(),
                         ConfigurationSettings.AppSettings["FacebookSignIn"].ToString(),
                         ConfigurationSettings.AppSettings["FacebookRedirectUrl"].ToString());

                    Response.Redirect(fb.FinalSignInUrl);
                }
                else if (Session["access_token"] == null)
                {
                    lblCode.Text = Request.QueryString["code"].ToString();
                    WebHeaderCollection collection = new WebHeaderCollection();
                    string redirectUrl = "https"
                        + "://" + ConfigurationSettings.AppSettings["FacebookWebUrl"]
                        + ConfigurationSettings.AppSettings["FacebookRedirectUrl"];
                    collection.Add("code", lblCode.Text);

                    collection.Add("redirect_uri", HttpUtility.UrlEncode
                        (
                        HttpContext.Current.Request.Url.Scheme
                        + "://" + HttpContext.Current.Request.Url.Authority
                        + ConfigurationSettings.AppSettings["FacebookRedirectUrl"]
                        )
                    );
                    collection.Add("client_secret", ConfigurationSettings.AppSettings["FacebookClientSecret"]);
                    string accessToken = GetWebResponse(
                        "https://graph.facebook.com/oauth/access_token?client_id="
                        + ConfigurationSettings.AppSettings["FacebookClientID"] + "&redirect_uri=" + redirectUrl +
                        "&client_secret=" + ConfigurationSettings.AppSettings["FacebookClientSecret"]
                        + "&code=" + lblCode.Text
                        , collection);
                    string tokens = accessToken.Split('&')[0];
                    string access = tokens.Split('=')[1];
                    //facebookToken = FacebookToken.FromJson(accessToken);
                    Session["access_token"] = access;
                    WebHeaderCollection web = new WebHeaderCollection();
                    string jsonOutput = GetWebResponse
                        (
                            "https://graph.facebook.com/me?fields=name,gender,email,birthday,picture,family.fields(name,gender,birthday,picture,relationship_status),friends.fields(name,gender,birthday,picture,relationship_status)&access_token=" + Session["access_token"],
                            web
                        );

                    result(jsonOutput);
                    Session["jsonOutput"] = jsonOutput;
                    Response.Redirect(ConfigurationSettings.AppSettings["redirect"]);

                    BindGV();
                }
                else if (Session["access_token"] != null)
                {
                    if (Session["jsonOutput"] != null)
                    {
                        result(Session["jsonOutput"].ToString());

                        BindGV();
                    }
                }
            }
        }

        protected void btnToken_Click(object sender, EventArgs e)
        {
            WebHeaderCollection collection = new WebHeaderCollection();
            string redirectUrl = "https"
                + "://" + ConfigurationSettings.AppSettings["FacebookWebUrl"]
                + ConfigurationSettings.AppSettings["FacebookRedirectUrl"];
            collection.Add("code", lblCode.Text);

            collection.Add("redirect_uri", HttpUtility.UrlEncode
                (
                HttpContext.Current.Request.Url.Scheme
                + "://" + HttpContext.Current.Request.Url.Authority
                + ConfigurationSettings.AppSettings["FacebookRedirectUrl"]
                )
            );
            collection.Add("client_secret", ConfigurationSettings.AppSettings["FacebookClientSecret"]);
            string accessToken = GetWebResponse(
                "https://graph.facebook.com/oauth/access_token?client_id="
                + ConfigurationSettings.AppSettings["FacebookClientID"] + "&redirect_uri=" + redirectUrl +
                "&client_secret=" + ConfigurationSettings.AppSettings["FacebookClientSecret"]
                + "&code=" + lblCode.Text
                , collection);
            string tokens = accessToken.Split('&')[0];
            string access = tokens.Split('=')[1];
            //facebookToken = FacebookToken.FromJson(accessToken);
            Session["access_token"] = access;
        }

        private string GetWebResponse(string url, WebHeaderCollection parameters)
        {
            HttpWebRequest request = null;
            request = HttpWebRequest.Create(url) as HttpWebRequest;
            request.Method = "GET";
            //var sb = new StringBuilder();
            //foreach (var key in parameters.AllKeys)
            //    sb.Append(key + "=" + parameters[key] + "&");
            //request.Headers = sb.ToString();
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            Stream resStream = response.GetResponseStream();
            StreamReader reader = new StreamReader(resStream);
            string result = reader.ReadToEnd();
            return result;
        }

        private string PostWebResponse(string url, NameValueCollection parameters)
        {
            var httpWebRequest = (HttpWebRequest)WebRequest.Create(url);
            httpWebRequest.ContentType = "application/x-www-form-urlencoded; charset=utf-8";
            httpWebRequest.Method = "POST";

            var sb = new StringBuilder();
            foreach (var key in parameters.AllKeys)
                sb.Append(key + "=" + parameters[key] + "&");
            sb.Length = sb.Length - 1;

            byte[] requestBytes = Encoding.UTF8.GetBytes(sb.ToString());
            httpWebRequest.ContentLength = requestBytes.Length;

            using (var requestStream = httpWebRequest.GetRequestStream())
            {
                requestStream.Write(requestBytes, 0, requestBytes.Length);
                requestStream.Close();
            }

            WebResponse response = httpWebRequest.GetResponse();

            Task<WebResponse> responseTask = Task.Factory.FromAsync<WebResponse>(httpWebRequest.BeginGetResponse, httpWebRequest.EndGetResponse, null);
            using (var responseStream = responseTask.Result.GetResponseStream())
            {
                var reader = new StreamReader(responseStream);
                return reader.ReadToEnd();
            }
        }

        protected void btnFriends_Click(object sender, EventArgs e)
        {
            WebHeaderCollection web = new WebHeaderCollection();
            string jsonOutput = GetWebResponse
                (
                    "https://graph.facebook.com/me?fields=name,gender,email,birthday,picture,family.fields(name,gender,birthday,picture,relationship_status),friends.fields(name,gender,birthday,picture,relationship_status)&access_token=" + Session["access_token"],
                    web
                );

            result(jsonOutput);
            Session["jsonOutput"] = jsonOutput;

            BindGV();
        }

        public void result(string jsonOutput)
        {
            facebookResult = FacebookResult.FromJson(jsonOutput);
        }

        public void BindGV()
        {
            BindGV1();
            BindGV2();
            BindGV3();
            BindGV4();
            BindGV5();
            //BindGV6();
            BindGV7();
            BindGV8();
            BindGV9();
            BindGV10();
            BindGV11();
            BindGV12();

        }

        private void BindGV12()
        {
            var query = from widowed in facebookResult.friends.data
                        where widowed.relationship_status == "Widowed"
                        orderby widowed.name
                        select widowed;
            Label12.Text = "(" + query.Count().ToString() + ")";
            DataTable tb = FacebookHeper.ToDataTable<Datum>(query.ToList());
            GridView12.DataSource = tb;
            GridView12.DataBind();
        }

        private void BindGV11()
        {
            var query = from divorced in facebookResult.friends.data
                        where divorced.relationship_status == "Divorced"
                        orderby divorced.name
                        select divorced;
            Label11.Text = "(" + query.Count().ToString() + ")";
            DataTable tb = FacebookHeper.ToDataTable<Datum>(query.ToList());
            GridView11.DataSource = tb;
            GridView11.DataBind();
        }

        private void BindGV10()
        {
            var query = from separated in facebookResult.friends.data
                        where separated.relationship_status == "Separated"
                        orderby separated.name
                        select separated;
            Label10.Text = "(" + query.Count().ToString() + ")";
            DataTable tb = FacebookHeper.ToDataTable<Datum>(query.ToList());
            GridView10.DataSource = tb;
            GridView10.DataBind();
        }

        private void BindGV9()
        {
            var query = from open in facebookResult.friends.data
                        where open.relationship_status == "In an open relationship"
                        orderby open.name
                        select open;
            Label9.Text = "(" + query.Count().ToString() + ")";
            DataTable tb = FacebookHeper.ToDataTable<Datum>(query.ToList());
            GridView9.DataSource = tb;
            GridView9.DataBind();
        }

        private void BindGV8()
        {
            var query = from engaged in facebookResult.friends.data
                        where engaged.relationship_status == "Engaged"
                        orderby engaged.name
                        select engaged;
            Label8.Text = "(" + query.Count().ToString() + ")";
            DataTable tb = FacebookHeper.ToDataTable<Datum>(query.ToList());
            GridView8.DataSource = tb;
            GridView8.DataBind();
        }

        private void BindGV7()
        {
            var query = from relationship in facebookResult.friends.data
                        where relationship.relationship_status == "In a relationship"
                        orderby relationship.name
                        select relationship;
            Label7.Text = "(" + query.Count().ToString() + ")";
            DataTable tb = FacebookHeper.ToDataTable<Datum>(query.ToList());
            GridView7.DataSource = tb;
            GridView7.DataBind();
        }

        private void BindGV6()
        {
            var query = from bday in facebookResult.family.data
                        where (!string.IsNullOrEmpty(bday.birthday) && DateTime.Parse(bday.birthday).Day == DateTime.Now.Day
                                       && DateTime.Parse(bday.birthday).Month == DateTime.Now.Month)
                        orderby bday.name
                        select bday;
            Label6.Text = "(" + query.Count().ToString() + ")";
            DataTable tb = FacebookHeper.ToDataTable<Datum2>(query.ToList());
            GridView6.DataSource = tb;
            GridView6.DataBind();
        }

        private void BindGV5()
        {
            var query = from upcomingBDay in facebookResult.friends.data
                        where (!string.IsNullOrEmpty(upcomingBDay.birthday) && DateTime.Parse(upcomingBDay.birthday).Month >= DateTime.Now.Month)
                        orderby upcomingBDay.name
                        select upcomingBDay;
            Label5.Text = "(" + query.Count().ToString() + ")";
            DataTable tb = FacebookHeper.ToDataTable<Datum>(query.ToList());
            GridView5.DataSource = tb;
            GridView5.DataBind();
        }

        public void BindGV4()
        {
            var query = from married in facebookResult.friends.data
                        where married.relationship_status == "Married"
                        orderby married.name
                        select married;
            Label4.Text = "(" + query.Count().ToString() + ")";
            DataTable tb = FacebookHeper.ToDataTable<Datum>(query.ToList());
            GridView4.DataSource = tb;
            GridView4.DataBind();
        }

        public void BindGV3()
        {
            var query = from complicated in facebookResult.friends.data
                        where complicated.relationship_status == "It's complicated"
                        orderby complicated.name
                        select complicated;
            Label3.Text = "(" + query.Count().ToString() + ")";
            DataTable tb = FacebookHeper.ToDataTable<Datum>(query.ToList());
            GridView3.DataSource = tb;
            GridView3.DataBind();
        }

        public void BindGV2()
        {
            var query = from single in facebookResult.friends.data
                        where single.relationship_status == "Single"
                        orderby single.name
                        select single;
            Label2.Text = "(" + query.Count().ToString() + ")";
            DataTable tb = FacebookHeper.ToDataTable<Datum>(query.ToList());
            GridView2.DataSource = tb;
            GridView2.DataBind();
        }

        public void BindGV1()
        {
            IEnumerable<Datum> query = from bday in facebookResult.friends.data.AsEnumerable()
                                       where (!string.IsNullOrEmpty(bday.birthday) && DateTime.Parse(bday.birthday).Day == DateTime.Now.Day
                                       && DateTime.Parse(bday.birthday).Month == DateTime.Now.Month)
                                       orderby bday.name
                                       select bday;
            Label1.Text = "(" + query.Count().ToString() + ")";
            DataTable tb = FacebookHeper.ToDataTable<Datum>(query.ToList());
            GridView1.DataSource = tb;

            GridView1.DataBind();
        }

        public birthdaybumps.FacebookToken facebookToken { get; set; }

        public birthdaybumps.FacebookResult facebookResult { get; set; }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            result(Session["jsonOutput"].ToString());
            GridView1.PageIndex = e.NewPageIndex;
            this.BindGV1();
        }

        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            result(Session["jsonOutput"].ToString());
            GridView2.PageIndex = e.NewPageIndex;
            this.BindGV2();
        }

        protected void GridView3_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            result(Session["jsonOutput"].ToString());
            GridView3.PageIndex = e.NewPageIndex;
            this.BindGV3();
        }

        protected void GridView4_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            result(Session["jsonOutput"].ToString());
            GridView4.PageIndex = e.NewPageIndex;
            this.BindGV4();
        }

        protected void GridView5_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            result(Session["jsonOutput"].ToString());
            GridView5.PageIndex = e.NewPageIndex;
            this.BindGV5();
        }

        protected void GridView6_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            result(Session["jsonOutput"].ToString());
            GridView6.PageIndex = e.NewPageIndex;
            this.BindGV6();
        }

        protected void GridView7_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            result(Session["jsonOutput"].ToString());
            GridView7.PageIndex = e.NewPageIndex;
            this.BindGV7();
        }

        protected void GridView8_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            result(Session["jsonOutput"].ToString());
            GridView8.PageIndex = e.NewPageIndex;
            this.BindGV8();
        }

        protected void GridView9_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            result(Session["jsonOutput"].ToString());
            GridView9.PageIndex = e.NewPageIndex;
            this.BindGV9();
        }

        protected void GridView10_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            result(Session["jsonOutput"].ToString());
            GridView10.PageIndex = e.NewPageIndex;
            this.BindGV10();
        }

        protected void GridView11_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            result(Session["jsonOutput"].ToString());
            GridView11.PageIndex = e.NewPageIndex;
            this.BindGV11();
        }

        protected void GridView12_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            result(Session["jsonOutput"].ToString());
            GridView12.PageIndex = e.NewPageIndex;
            this.BindGV12();
        }

        protected void btnFBFriends_Click(object sender, EventArgs e)
        {
            
        }

        
    }

}