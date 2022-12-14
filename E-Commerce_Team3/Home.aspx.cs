﻿using E_Commerce_Team3.Classi;
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
                    command.CommandText = "SELECT * FROM PRODOTTO";
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
                        if (p.PrezzoScontato > 0)
                        {
                            p.InPromozione = true;
                            p.LogoInPromo = "img/sp_offer.png";
                            
                            
                        }
                        else
                        {
                            p.InPromozione = false;
                            p.LogoInPromo = "";
                        }
                        Prodotto.listProdotti.Add(p);
                        
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
