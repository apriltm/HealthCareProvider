using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace HCProviderLogin
{
    public partial class PatientLogin : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            lblerror.Visible = false;
        }

        protected void BnLogin_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection("Data Source = tcp:groupnine.database.windows.net; Initial Catalog = HealthCare; Persist Security Info = True; User ID = admingroup9; Password = Group9!!"))
            {
                sqlCon.Open();
                string query = "SELECT COUNT(1) FROM PatientLogin WHERE Username=@username AND passwd=@password";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@username", txtuserP.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@password", txtpassP.Text.Trim());
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                sqlCon.Close();
                if (count == 1)
                {
                    Session["username"] = txtuserP.Text.Trim();
                    Response.Redirect("PatientMenu.aspx");
                    lblerror.Text = "Success";
                }
                else
                    lblerror.Visible = true;

            }
        }
    }
}