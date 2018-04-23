using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HCProviderLogin
{
    public partial class HealthRecord : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection("Data Source=tcp:groupnine.database.windows.net;Initial Catalog=HealthCare;Persist Security Info=True;User ID=admingroup9;Password=Group9!!");
        protected void Page_Load(object sender, EventArgs e)
        {
            using (connect)
            {
                SqlCommand command = new SqlCommand("Select BloodTypeName, BloodTypeID from BloodType", connect);
                connect.Open();
                bloodT.DataTextField = "BloodTypeName";
                bloodT.DataValueField = "BloodTypeID";
                bloodT.DataSource = command.ExecuteReader();
                bloodT.DataBind();
                connect.Close();

                SqlCommand command1 = new SqlCommand("Select TestName, BloodTestID from BloodTestType", connect);
                connect.Open();
                bloodTest.DataTextField = "TestName";
                bloodTest.DataValueField = "BloodTestID";
                bloodTest.DataSource = command1.ExecuteReader();
                bloodTest.DataBind();
                connect.Close();

                SqlCommand command2 = new SqlCommand("Select DiagnosisName, DiagnosisID from DiagnosisType", connect);
                connect.Open();
                Diag.DataTextField = "DiagnosisName";
                Diag.DataValueField = "DiagnosisID";
                Diag.DataSource = command2.ExecuteReader();
                Diag.DataBind();
                connect.Close();

                SqlCommand command3 = new SqlCommand("Select Feet from FeetID", connect);
                connect.Open();
                heNum1.DataTextField = "Feet";
                heNum1.DataValueField = "Feet";
                heNum1.DataSource = command3.ExecuteReader();
                heNum1.DataBind();
                connect.Close();

                SqlCommand command4 = new SqlCommand("Select Inches from InchID", connect);
                connect.Open();
                heNum2.DataTextField = "Inches";
                heNum2.DataValueField = "Inches";
                heNum2.DataSource = command3.ExecuteReader();
                heNum2.DataBind();
                connect.Close();
            }
        }

        protected void sub(object sender, EventArgs e)
        {

            using (connect)
            {

                string pt1 = heNum1.SelectedValue.ToString();
                string pt2 = heNum2.SelectedValue.ToString();
                string temp = pt1 + pt2;

                SqlCommand cmmd = new SqlCommand("Insert into HealthRecord(PatientID, RecordID, BloodTypeID, Age, Weight, Height, BloodTestID, DiagnosisID, PrescriptionID)  values(@PatientID, @RecordID, @BloodTypeID, @Age, @Weight, @Height, @BloodTestID, @DiagnosisID, @PrescriptionID)", connect);
                

                cmmd.Parameters.AddWithValue("@PatientID", paNum.Text.Trim());
                cmmd.Parameters.AddWithValue("@RecordID", reNum.Text.Trim());
                cmmd.Parameters.AddWithValue("@BloodTypeID", bloodT.SelectedItem.Value);
                cmmd.Parameters.AddWithValue("@Age", ageNum.Text.Trim());
                cmmd.Parameters.AddWithValue("@Weight", weNum.Text.Trim());
                cmmd.Parameters.AddWithValue("@Height", temp);
                cmmd.Parameters.AddWithValue("@BloodTestID", bloodTest.SelectedItem.Value);
                cmmd.Parameters.AddWithValue("@DiagnosisID", Diag.SelectedItem.Value);
                cmmd.Parameters.AddWithValue("@PrescriptionID", presNum.Text.Trim());
                connect.Open();
                cmmd.ExecuteNonQuery();
                connect.Close();
            }

        }
    }
}