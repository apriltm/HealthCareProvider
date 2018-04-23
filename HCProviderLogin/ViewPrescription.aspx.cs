using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HCProviderLogin
{
    public partial class ViewPrescription : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection("Data Source=tcp:groupnine.database.windows.net;Initial Catalog=HealthCare;Persist Security Info=True;User ID=admingroup9;Password=Group9!!");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Visible = false;
            Label4.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (sqlCon)
            {

                string str = string.Empty;
                str = Convert.ToString(Session["PatientID"]);
                SqlCommand sqlCmd = new SqlCommand("UPDATE Prescriptions SET Refills = Refills - 1 WHERE PrescriptionID =@PrescriptionID AND PatientID=@PatientID AND Refills >=0", sqlCon);
                sqlCmd.Parameters.AddWithValue("@PrescriptionID", TextBox1.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@PatientID", str);
                sqlCon.Open();
                sqlCmd.ExecuteNonQuery();
                Label3.Visible = true;
                sqlCon.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("PatientMenu.aspx");
        }
    }
}