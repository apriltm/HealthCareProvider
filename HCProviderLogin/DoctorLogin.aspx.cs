using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HCProviderLogin
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            lblerror.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection("Data Source = tcp:groupnine.database.windows.net; Initial Catalog = HealthCare; Persist Security Info = True; User ID = admingroup9; Password = Group9!!"))
            {
                sqlCon.Open();
                string query = "SELECT COUNT(1) FROM DoctorLogin WHERE Username=@username AND passwd=@password";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@username", txtuserD.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@password", txtpassD.Text.Trim());
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                sqlCon.Close();

                sqlCon.Open();
                string query2 = "SELECT DoctorID FROM DoctorLogin WHERE Username=@username2 AND passwd=@password2";
                SqlCommand sqlCmd2 = new SqlCommand(query2, sqlCon);
                sqlCmd2.Parameters.AddWithValue("@username2", txtuserD.Text.Trim());
                sqlCmd2.Parameters.AddWithValue("@password2", txtpassD.Text.Trim());
                string PID = (string)sqlCmd2.ExecuteScalar();
                sqlCon.Close();
                Session["DoctorID"] = PID;
                if (count == 1)
                {
                    Session["username"] = txtuserD.Text.Trim();
                    Response.Redirect("DoctorMenu.aspx");
                    lblerror.Text = "Success";
                }
                else
                    lblerror.Visible = true;




            }
        }
    }
}