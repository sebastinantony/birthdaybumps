using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace birthdaybumps
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFBFriends_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Request.QueryString["code"]))
            {

                Facebook fb = new Facebook(ConfigurationSettings.AppSettings["FacebookClientID"].ToString(),
                     ConfigurationSettings.AppSettings["FacebookSignIn"].ToString(),
                     ConfigurationSettings.AppSettings["FacebookRedirectUrl"].ToString());

                Response.Redirect(fb.FinalSignInUrl);
            }

        }
    }
}