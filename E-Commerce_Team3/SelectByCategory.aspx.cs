using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Team3
{
    public partial class SelectByCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["IdCategoria"];


            Repeater1.DataSource = Prodotto.GetProdottiIdCategoria(id);
            Repeater1.DataBind();



        }
    }

}