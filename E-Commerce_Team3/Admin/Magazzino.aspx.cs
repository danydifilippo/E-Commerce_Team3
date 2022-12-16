using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Team3.Admin
{
    public partial class Magazzino : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Prodotto.GetAllProdotti();

            GridView1.DataSource = Prodotto.GetAllProdotti();
            GridView1.DataBind();

        }

    }
}