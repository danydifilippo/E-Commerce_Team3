using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Team3.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies.Count > 0)
            {
                Enter.Visible = false;
                lblWelcome.Visible = true;
           
                lblWelcome.Text = $"Ciao {HttpContext.Current.User.Identity.Name}, bentornato";
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect(FormsAuthentication.LoginUrl);
            Request.Cookies.Clear();
            Enter.Visible = true;
        }
    }
}