using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net;
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
                if (string.IsNullOrEmpty(Request.QueryString["code"]))
                {

                    Facebook fb = new Facebook(ConfigurationSettings.AppSettings["FacebookClientID"].ToString(),
                         ConfigurationSettings.AppSettings["FacebookSignIn"].ToString(),
                         ConfigurationSettings.AppSettings["FacebookRedirectUrl"].ToString());

                    Response.Redirect(fb.FinalSignInUrl);
                }
                else
                {
                    lblCode.Text = Request.QueryString["code"].ToString();
                    WebHeaderCollection collection = new WebHeaderCollection();
                    string redirectUrl = HttpContext.Current.Request.Url.Scheme
                        + "://" + HttpContext.Current.Request.Url.Authority
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
            }
        }

        protected void btnToken_Click(object sender, EventArgs e)
        {
            WebHeaderCollection collection = new WebHeaderCollection();
            string redirectUrl = HttpContext.Current.Request.Url.Scheme
                + "://" + HttpContext.Current.Request.Url.Authority
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
                    "https://graph.facebook.com/me?fields=id,name,friends.fields(about,birthday,email,gender,name,hometown,relationship_status)&access_token=" + Session["access_token"],
                    web
                );

            facebookResult = FacebookResult.FromJson(jsonOutput);

            GridView1.DataSource = from bday in facebookResult.friends.data
                                   where (!string.IsNullOrEmpty(bday.birthday) && DateTime.Parse(bday.birthday).Day == DateTime.Now.Day
                                   && DateTime.Parse(bday.birthday).Month == DateTime.Now.Month)
                                   select bday;

            GridView1.DataBind();

            GridView2.DataSource = from single in facebookResult.friends.data
                                   where single.relationship_status == "Single"
                                   select single;
            GridView2.DataBind();

            GridView3.DataSource = from complicated in facebookResult.friends.data
                                   where complicated.relationship_status == "It's complicated"
                                   select complicated;
            GridView3.DataBind();

            GridView4.DataSource = from married in facebookResult.friends.data
                                   where married.relationship_status == "Married"
                                   select married;
            GridView4.DataBind();

            //lblResult.Text = jsonOutput;

        }



        public birthdaybumps.FacebookToken facebookToken { get; set; }

        public birthdaybumps.FacebookResult facebookResult { get; set; }
    }
}