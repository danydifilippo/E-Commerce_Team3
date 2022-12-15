using E_Commerce_Team3.Classi;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Team3
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Entra_Click(object sender, EventArgs e)
        {
            string user = txtUsername.Text;
            string password = txtPassword.Text;

            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ECommerce"].ToString();
            connection.Open();

            SqlCommand command = new SqlCommand();
            command.CommandText = "SELECT * FROM UTENTE";
            command.Connection = connection;

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
               if (user == reader["Username"].ToString() && password == reader["Password_"].ToString())
                {

                    FormsAuthentication.SetAuthCookie(user, false);

                   
                    if (user == "admin")
                    { Response.Redirect("/Admin/Magazzino.aspx"); }
                    else { Response.Redirect(FormsAuthentication.DefaultUrl); }
                }
               else
                {
                    lblLogin.Text = "Utente non trovato... Username e/o password errati";
                }
            }

                    connection.Close();
           
         }
    }
}