using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace HCProviderLogin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection("Data Source=tcp:groupnine.database.windows.net;Initial Catalog=HealthCare;Persist Security Info=True;User ID=admingroup9;Password=Group9!!"))
            {
                sqlCon.Open();
                string query = "SELECT COUNT(1) FROM AdminLogin WHERE Username=@username AND passwd=@password";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@username", txtuserA.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@password", txtpassA.Text.Trim());
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                sqlCon.Close();
                if (count == 1)
                {
                    Session["username"] = txtuserA.Text.Trim();
                    Response.Redirect("AdminMenu.aspx");
                    lblerror.Text = "Success";
                }
                else
                    lblerror.Visible = true;


            }
        }
    }
}