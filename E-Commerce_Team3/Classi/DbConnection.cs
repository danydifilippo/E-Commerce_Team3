using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace E_Commerce_Team3
{
    public static class DbConnection
    {
        public static SqlConnection getConnection() 
        {
            string conn = ConfigurationManager.ConnectionStrings["ECommerce"].ToString();
            SqlConnection myConn = new SqlConnection(conn); return myConn; 
        }
    }
}