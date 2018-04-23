using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HCProviderLogin
{
    public partial class PatientPrescription : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection("Data Source=tcp:groupnine.database.windows.net;Initial Catalog=HealthCare;Persist Security Info=True;User ID=admingroup9;Password=Group9!!");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (sqlCon)
                {
                    /*  SqlCommand sqlCmd = new SqlCommand("Select MedicationName, MedicationID from MedicationType", sqlCon);
                      sqlCon.Open();
                      DropDown.DataTextField = "MedicationName";
                      DropDown.DataValueField = "MedicationID";
                      DropDown.DataSource = sqlCmd.ExecuteReader();
                      DropDown.DataBind();
                      sqlCon.Close();*/
                    Label6.Visible = false;
                }
            }
        }

        protected void goTo(object sender, EventArgs e)
        {
            using (sqlCon)
            {

                /*  string str = string.Empty;
                  str = Convert.ToString(Session["PatientID"]);
                  SqlCommand sqlc = new SqlCommand("Select Refills From Prescriptions", sqlCon);
                  SqlCommand declare = new SqlCommand("DECLARE @Refills INT", sqlCon);
                  SqlCommand set = new SqlCommand("SET @Refills =  (SELECT Refills FROM Prescriptions WHERE [Prescriptions.PatientID] = @PatientID)", sqlCon);
                  SqlCommand subtract = new SqlCommand("SET @Refills = (Select Refills - 1)", sqlCon);
                  set.Parameters.AddWithValue("@PatientID", str);


                  SqlCommand cmd = new SqlCommand("Update Prescriptions(Refills) values(@Refills)", sqlCon);

                  //window.alert(i > 1 || i >= 0 ? "You cannot order more refills. Your refills are no longer valid." : continue);

                  sqlc.ExecuteNonQuery();
                  declare.ExecuteNonQuery();
                  set.ExecuteNonQuery();
                  subtract.ExecuteNonQuery();
                  cmd.ExecuteNonQuery();
                  Label6.Visible = true;*/
                string str = string.Empty;
                str = Convert.ToString(Session["PatientID"]);
                SqlCommand sqlCmd = new SqlCommand("UPDATE Prescriptions SET Refills = Refills - 1 WHERE PrescriptionID =@PrescriptionID AND PatientID=@PatientID", sqlCon);
                sqlCmd.Parameters.AddWithValue("@PrescriptionID", TextBox1.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@PatientID", str);
                sqlCon.Open();
                sqlCmd.ExecuteNonQuery();
                Label6.Visible = true;
                sqlCon.Close();
            }
        }

        protected void goBack(object sender, EventArgs e)
        {
            Response.Redirect("~/PatientMenu.aspx");
        }
    }
}