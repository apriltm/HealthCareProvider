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
                    SqlCommand sqlCmd = new SqlCommand("Select MedicationName, MedicationID from MedicationType", sqlCon);
                    sqlCon.Open();
                    DropDown.DataTextField = "MedicationName";
                    DropDown.DataValueField = "MedicationID";
                    DropDown.DataSource = sqlCmd.ExecuteReader();
                    DropDown.DataBind();
                    sqlCon.Close();
                    Label6.Visible = false;
                }
            }
        }

        protected void goTo(object sender, EventArgs e)
        {
            using (sqlCon)
            {
                SqlCommand cmd = new SqlCommand("Insert into Prescriptions(ApptID, PatientID, Refills, PrescriptionID, MedicationID) values(@ApptID, @PatientID, @Refills, @PrescriptionID, @MedicationID)", sqlCon);
                
                cmd.Parameters.AddWithValue("@ApptID", txtAppt.Text.Trim());
                cmd.Parameters.AddWithValue("@PatientID", txtPatient.Text.Trim());
                cmd.Parameters.AddWithValue("@Refills", txtRefills.Text.Trim());
                cmd.Parameters.AddWithValue("@PrescriptionID", txtPrescription.Text.Trim());
                cmd.Parameters.AddWithValue("@MedicationID", DropDown.SelectedItem.Value);
                sqlCon.Open();
                cmd.ExecuteNonQuery();
                Label6.Visible = true;
                sqlCon.Close();
            }
        }

        protected void goBack(object sender, EventArgs e)
        {
            Response.Redirect("~/DoctorMenu.aspx");
        }
    }
}