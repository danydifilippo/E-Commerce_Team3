using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;

namespace E_Commerce_Team3
{
    public class Prodotto
    {
        public static List<Prodotto> listProdotti = new List<Prodotto>();
        public static List<Prodotto> Carrello = new List<Prodotto>();
        public int IdProdotto { get; set; }
        public string NomeProdotto { get; set; }
        public string Descrizione { get; set; }
        public string Sottotitolo { get; set; }
        public string UrlImmagine { get; set; }
        public double Prezzo { get; set; }
        public double PrezzoScontato { get; set; }
        public bool InPromozione { get; set; }
        public int IdCategoria { get; set; }
        public int Quantita { get; set; }

        public double TotCarrello { get; set; }

        public static List<Prodotto> GetAllProdotti()
        {
            List<Prodotto> lProdotti = new List<Prodotto>();

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
                lProdotti.Add(p);
            }
            connection.Close();

            return lProdotti;
        }

        public static Prodotto GetProdotto(string id)
        {


            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = ConfigurationManager.ConnectionStrings["ECommerce"].ToString();
            connection.Open();

            SqlCommand command = new SqlCommand();
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = "SelectByIdProdotto";
            command.Connection = connection;

            command.Parameters.AddWithValue("IdProdotto", id);


            SqlDataReader reader = command.ExecuteReader();

            Prodotto p = new Prodotto();
            while (reader.Read())
            {
                
                p.IdProdotto = Convert.ToInt32(reader["IdProdotto"]);
                p.NomeProdotto = reader["NomeProdotto"].ToString();
                p.Sottotitolo = reader["Sottotitolo"].ToString();
                p.UrlImmagine = reader["UrlImmagine"].ToString();
                p.Prezzo = Convert.ToDouble(reader["Prezzo"]);
            }

            connection.Close();
            return p;


        }

    }

    }