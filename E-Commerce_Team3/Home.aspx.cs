using E_Commerce_Team3.Classi;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Team3
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            Prodotto.listProdotti.Clear();

            if (!IsPostBack)
            {
                try
                {
                    SqlConnection connection = new SqlConnection();
                    connection.ConnectionString = ConfigurationManager.ConnectionStrings["ECommerce"].ToString();
                    connection.Open();

                    SqlCommand command = new SqlCommand();
                    command.CommandText = "SELECT * FROM PRODOTTO FULL JOIN CATEGORIA ON PRODOTTO.IDCATEGORIA = CATEGORIA.IDCATEGORIA";
                    command.Connection = connection;

                    SqlDataReader reader = command.ExecuteReader();
              
                    while (reader.Read())
                    {
                        Prodotto p = new Prodotto();

                        p.IdProdotto = Convert.ToInt32(reader["IdProdotto"]);
                        p.NomeProdotto = reader["NomeProdotto"].ToString();
                        p.Sottotitolo = reader["Sottotitolo"].ToString();
                        p.UrlImmagine = reader["UrlImmagine"].ToString();
                        p.Prezzo = Convert.ToDouble(reader["Prezzo"]);
                        p.PrezzoScontato = Convert.ToDouble(reader["PrezzoScontato"]);
                        p.PrezzoInPromo = "Prezzo in Promo a: ";
                        p.Oscurata = Convert.ToBoolean(reader["Pr_Oscurato"]);
                        if (p.PrezzoScontato > 0)
                        {
                            p.InPromozione = true;
                            p.LogoInPromo = "img/sp_offer.png";
                            p.PrezzoHome = $"Prezzo in Promo: <span style=\"color:#2c7f97; font-size:20px\" >{p.PrezzoScontato}€</span> <del> {p.Prezzo}€</del>";
                            
                        }
                        else
                        {
                            p.InPromozione = false;
                            p.LogoInPromo = "";
                            p.PrezzoHome = $"Prezzo: <span style=\"color:#2c7f97; font-size:20px\" > {p.Prezzo}€</span>";

                        }
                        if (p.Oscurata == false)
                        {
                             Prodotto.listProdotti.Add(p);
                        }
                        
                    }

                    Repeater1.DataSource = Prodotto.listProdotti;
                    Repeater1.DataBind();



                        connection.Close();

                }
                catch (Exception ex)
                {
                    lblError.Visible = true; lblError.Text = ex.Message;
                }

            }
            
        }
    }
    }
