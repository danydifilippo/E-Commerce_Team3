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
    public partial class Cancella : System.Web.UI.Page
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

        protected void DeletePr_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["idProdotto"];
            try
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["ECommerce"].ToString();
                connection.Open();

                SqlCommand command = new SqlCommand();
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.CommandText = "DeleteProduct";
                command.Connection = connection;

                command.Parameters.AddWithValue("IdProdotto", id);

                int row = command.ExecuteNonQuery();

                if (row > 0)
                {
                    lblDelete.Visible = true;
                    lblDelete.Text = "Articolo eliminato con successo";
                }
                connection.Close();
            }
            catch (Exception)
            {
                lblError.Visible = true; lblError.Text = "Non è stato possibile eliminare il prodotto.. Articolo non trovato.."; ;
            }
        }
    }
    }