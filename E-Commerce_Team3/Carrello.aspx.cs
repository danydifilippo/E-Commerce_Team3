using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Team3
{
    public partial class Carrello : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = Prodotto.Carrello;
            GridView1.DataBind();
        }

        protected void SvuotaCestino_Click(object sender, EventArgs e)
        {
            Prodotto.Carrello.Clear();
            GridView1.Visible = false;
            lblEmptyCart.Text = " <a href=\"Home.aspx\">Il tuo carrello è vuoto... Torna alla pagina prodotti</a><hr />";
        }
    }
}