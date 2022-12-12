using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static E_Commerce_Team3.Template;
using E_Commerce_Team3.Classi;

namespace E_Commerce_Team3.Admin
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["ECommerce"].ToString();
                connection.Open();

                SqlCommand command = new SqlCommand();
                command.CommandText = "SELECT * FROM CATEGORIA";
                command.Connection = connection;

                SqlDataReader reader = command.ExecuteReader();   
                


                while (reader.Read())
                {
                    Categoria c = new Categoria();
                    c.IdCategoria = Convert.ToInt32(reader["IdCategoria"]);
                    c.NameCategoria = Convert.ToString(reader["NomeCategoria"]);
                    ListItem l = new ListItem(c.NameCategoria, c.IdCategoria.ToString());
                    ddlCategoria.Items.Add(l);
                }



                connection.Close();

            }
        }



        protected void InsertProdotto_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = ConfigurationManager.ConnectionStrings["ECommerce"].ToString();
                connection.Open();

                SqlCommand command = new SqlCommand();
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.CommandText = "InsertProduct";

                command.Connection = connection;

                command.Parameters.AddWithValue("NomeProdotto", txtNome.Text);
                command.Parameters.AddWithValue("Descrizione", txtDescrizione.Text);
                command.Parameters.AddWithValue("Sottotitolo", txtSottotitolo.Text);
                command.Parameters.AddWithValue("Prezzo", txtPrezzo.Text);
                command.Parameters.AddWithValue("NomeProdotto", txtPrScontato.Text);
                command.Parameters.AddWithValue("IdCategoria", ddlCategoria.SelectedItem.Value);
                command.Parameters.AddWithValue("UrlImmagine", FileUpload1.FileName);

                int row = command.ExecuteNonQuery();
                if (row > 0)
                {
                    lblAddProd.Text = "Prodotto aggiunto con successo";
                    lblAddProd.Visible = true;
                }

                connection.Close();

            }
            catch
            {

                lblError.Text = "Non è stato possibile aggiungere il prodotto..Errore durante la compilazione del form.";
                lblError.Visible = true;


            }
        }
    }
}

