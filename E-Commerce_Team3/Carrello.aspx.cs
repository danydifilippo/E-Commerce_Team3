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
            double prezzoTot = 0;

            GridView1.DataSource = Prodotto.Carrello;
            GridView1.DataBind();
            foreach (Prodotto p in Prodotto.Carrello)
            {
                prezzoTot += p.TotCarrello;
            }


            Label1.Text =$"Totale ordine:<b> {prezzoTot.ToString("c2")}</b>";
        }

        protected void SvuotaCestino_Click(object sender, EventArgs e)
        {
            Prodotto.Carrello.Clear();
            GridView1.Visible = false;
            SvuotaCestino.Visible = false;
            Label1.Visible= false;
            lblEmptyCart.Text = " <a class=\"text-decoration-none\" href=\"Home.aspx\">Il tuo carrello è vuoto... Torna alla pagina prodotti</a><hr />";
        }
    }
}