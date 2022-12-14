using E_Commerce_Team3.Classi;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Team3.Admin
{
    public partial class Magazzino_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Prodotto.GetAllProdotti();

            GridView1.DataSource= Prodotto.GetAllProdotti();
            GridView1.DataBind();

        }

        protected void Update_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update.aspx");
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
           Button i = (Button)sender;
            int id = Convert.ToInt32(i.CommandArgument);
           
        }
    }
}