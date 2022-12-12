using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Team3
{
    public partial class Template : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            if(!IsPostBack)
            { 
            try
            {
                    SqlConnection connection = new SqlConnection();
                    connection.ConnectionString = ConfigurationManager.ConnectionStrings["ECommerce"].ToString();
                    connection.Open();

                    SqlCommand command = new SqlCommand();
                    command.CommandText = "SELECT * FROM CATEGORIA";
                    command.Connection = connection;

                    SqlDataReader reader = command.ExecuteReader();

                    List<Categoria> list = new List<Categoria>();

                    while (reader.Read())
                    {
                        Categoria c = new Categoria();
                        c.IdCategoria = Convert.ToInt32(reader["IdCategoria"]);
                        c.NameCategoria = Convert.ToString(reader["NomeCategoria"]);
                        list.Add(c);

                    }

                    Repeater1.DataSource= list;
                    Repeater1.DataBind();

                    connection.Close();

            }
            catch (Exception ex) {
                    lblError.Visible=true; lblError.Text=ex.Message;
            }
            }
        }

        public class Categoria
        {
            public int IdCategoria { get; set; }
            public string NameCategoria { get; set; }
        }
    }
}