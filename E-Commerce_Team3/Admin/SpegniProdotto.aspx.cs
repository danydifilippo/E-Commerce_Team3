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
    public partial class SpegniProdotto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string id = Request.QueryString["idProdotto"];

            Prodotto p = Prodotto.GetProdotto(id);

            Image1.ImageUrl = $"../img/{p.UrlImmagine}";
            lbNomeProdotto.Text = p.NomeProdotto;
            lbSottotitolo.Text = p.Sottotitolo;
            lblDescrizione.Text = p.Descrizione;

        }

        protected void return_Click(object sender, EventArgs e)
        {
            Response.Redirect("Magazzino_.aspx");
        }

        protected void SpegniPr_Click(object sender, EventArgs e)
        { 
            try
        {
            string id = Request.QueryString["idProdotto"];

            Prodotto p = Prodotto.GetProdotto(id);

            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ECommerce"].ToString();
            connection.Open();

            SqlCommand command = new SqlCommand();

            int o = 0;

            if (p.Oscurata == false)
            { o = 1; }
            command.CommandText = "UPDATE PRODOTTO SET Pr_Oscurato = @bit where IdProdotto = @id";
            command.Parameters.AddWithValue("bit", o);
            command.Parameters.AddWithValue("id", id);
            command.Connection = connection;




            int row = command.ExecuteNonQuery();

            if (row > 0)
            {
                lblDelete.Visible = true;
                lblDelete.Text = "Articolo modificato con successo";
                IdLabel.Attributes["class"] = "container m-2 text-center";
            }

            connection.Close();
        }
        catch (Exception)
            {
                lblError.Visible = true;
                lblError.Text = "Articolo non modificato";
                IdLabel.Attributes["class"] = "container m-2 text-center";
            }
}
    }
}