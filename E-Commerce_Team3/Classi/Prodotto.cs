using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_Commerce_Team3
{
    public class Prodotto
    {
        public string NomeProdotto { get; set; }
        public string Descrizione { get; set; }
        public string Sottotitolo { get; set; }
        public string UrlImmagine { get; set; }
        public double Prezzo { get; set; }
        public double PrezzoScontato { get; set; }
        public bool InPromozione { get; set; }
        public int IdCategoria { get; set; }
        public int Quantita { get; set; }
    }
}