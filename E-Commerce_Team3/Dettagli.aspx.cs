using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Team3
{
    public partial class Dettagli : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["idProdotto"];

           Prodotto p =  Prodotto.GetProdotto(id);
               
                    IMAGE1.ImageUrl = $"img/{p.UrlImmagine}";
                    lbNomeProdotto.Text = p.NomeProdotto;
                    lbSottotitolo.Text = p.Sottotitolo;
                    lblDescrizione.Text = p.Descrizione;
                    lbPrezzo.Text = p.Prezzo.ToString("c2");
                    lbPrezzoScontato.Text = $"<p class=\"text-secondary text-uppercase\"><b> Prezzo in promozione: { p.PrezzoScontato.ToString("c2")}! </b></p>";
            if (p.PrezzoScontato > 0)
                {
                lbPrezzoScontato.Visible = true;

                 }
        }

       

        protected void AddToCart_Click(object sender, EventArgs e)
        {

            string id = Request.QueryString["idProdotto"];

            Prodotto p = Prodotto.GetProdotto(id);

            p.Quantita = Convert.ToInt32(TextBox1.Text);
            p.UrlImmagine = IMAGE1.ImageUrl;
            p.Prezzo = p.Prezzo * p.Quantita;
            p.PrezzoScontato = p.PrezzoScontato * p.Quantita;
            if(p.PrezzoScontato > 0)
            {
                p.TotCarrello = p.PrezzoScontato;
            }
            else
            {
            p.TotCarrello = p.Prezzo;
            }

            Prodotto.Carrello.Add(p);
        }
    }
}