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
    public partial class Modifica : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["idProdotto"];
            Prodotto p = Prodotto.GetProdotto(id);

            lblImage.ImageUrl = $"../img/{p.UrlImmagine}";
            txtNome.Text = p.NomeProdotto;
            txtSottotitolo.Text = p.Sottotitolo;
            txtDescrizione.Text = p.Descrizione;
            txtPrezzo.Text = p.Prezzo.ToString();
            txtPrScontato.Text = p.PrezzoScontato.ToString();
            

            if (p.InPromozione)
            {
                ckbInPromo.Checked = true;
            }
            

            if (!IsPostBack)
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["ECommerce"].ToString();
                connection.Open();

                SqlCommand command = new SqlCommand();
                command.CommandText = "SELECT * FROM CATEGORIA";
                command.Connection = connection;

                SqlDataReader reader = command.ExecuteReader();


                Categoria c = new Categoria();

                while (reader.Read())
                {
                    c.IdCategoria = Convert.ToInt32(reader["IdCategoria"]);
                    c.NameCategoria = Convert.ToString(reader["NomeCategoria"]);
                    ListItem l = new ListItem(c.NameCategoria, c.IdCategoria.ToString());
                    ddlCategoria.Items.Add(l);
                }
                ddlCategoria.Items.Insert(0, p.NomeCategoria) ;

                connection.Close();               
            }
        }
  

        protected void Update_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["idProdotto"];

            Prodotto p = Prodotto.GetProdotto(id);
            try
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["ECommerce"].ToString();
                connection.Open();

                SqlCommand command = new SqlCommand();
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.CommandText = "UpdateProduct";
                command.Connection = connection;

                command.Parameters.AddWithValue("IdProdotto", id);
                command.Parameters.AddWithValue("NomeProdotto", txtNome.Text);
                command.Parameters.AddWithValue("Descrizione", txtDescrizione.Text);
                command.Parameters.AddWithValue("Sottotitolo", txtSottotitolo.Text);
                command.Parameters.AddWithValue("Prezzo", txtPrezzo.Text);
                command.Parameters.AddWithValue("PrezzoScontato", txtPrScontato.Text);

                if (FileUpload1 != null)
                {
                    command.Parameters.AddWithValue("UrlImmagine", p.UrlImmagine);
                }
                else
                {
                    command.Parameters.AddWithValue("UrlImmagine", FileUpload1.FileName);
                }
                if (ckbInPromo.Checked)
                {
                    command.Parameters.AddWithValue("InPromozione", true);
                }
                else
                {
                    command.Parameters.AddWithValue("InPromozione", false);
                }

                command.Parameters.AddWithValue("IdCategoria", ddlCategoria.SelectedItem.Text);

                int row = command.ExecuteNonQuery();

                if (row > 0)
                {
                    lblAddProd.Visible = true;
                    lblAddProd.Text = "Articolo modificato con successo";
                }
                connection.Close();
            }
            catch (Exception)
            {
                lblError.Visible = true; lblError.Text = "Non è stato possibile modificare il prodotto"; ;
            }
        }

        protected void Annulla_Click(object sender, EventArgs e)
        {
            Response.Redirect("Magazzino.aspx");
        }
    }
}
