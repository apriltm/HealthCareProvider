using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HCProviderLogin
{
    public partial class Prescriptions : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection("Data Source=tcp:groupnine.database.windows.net;Initial Catalog=HealthCare;Persist Security Info=True;User ID=admingroup9;Password=Group9!!");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlCommand sqlCmd = new SqlCommand("Select MedicationID, MedicationName from MedicationType", sqlCon);
                sqlCon.Open();
                DropDownList1.DataTextField = "MedicationName";
                DropDownList1.DataValueField = "MedicationID";
                DropDownList1.DataSource = sqlCmd.ExecuteReader();
                DropDownList1.DataBind();
                sqlCon.Close();
            }
        }

        protected void goTo(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (sqlCon)
            {
                string str2 = GeneratePassword(true, 9);
                string str = (string)Session["DoctorID"];
                SqlCommand cmd = new SqlCommand("Insert into Prescriptions (ApptID, Refills, PrescriptionID, MedicationID, PatientID, DoctorID) value (@ApptID,@Refills,#@PrescriptionID, @MedicationID, @PatientID, @DoctorID) " +
                    "ApptID =@ApptID AND PatientID =@PatientID AND DoctorID=@DoctorID", sqlCon);
                cmd.Parameters.AddWithValue("@ApptID", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Refill", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@PrescriptionID", str2);
                cmd.Parameters.AddWithValue("@MedicationID", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@Patient", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@DoctorID", str);
                sqlCon.Open();
                cmd.ExecuteNonQuery();
                sqlCon.Close();


            }
        }
        public static string GeneratePassword(bool includeNumeric, int lengthOfPassword)
        {
            const int MAXIMUM_IDENTICAL_CONSECUTIVE_CHARS = 2;
            const string NUMERIC_CHARACTERS = "0123456789";
            const int PASSWORD_LENGTH_MIN = 8;
            const int PASSWORD_LENGTH_MAX = 128;

            if (lengthOfPassword < PASSWORD_LENGTH_MIN || lengthOfPassword > PASSWORD_LENGTH_MAX)
            {
                return "Password length must be between 8 and 128.";
            }

            string characterSet = "";

            if (includeNumeric)
            {
                characterSet += NUMERIC_CHARACTERS;
            }

            char[] password = new char[lengthOfPassword];
            int characterSetLength = characterSet.Length;

            System.Random random = new System.Random();
            for (int characterPosition = 0; characterPosition < lengthOfPassword; characterPosition++)
            {
                password[characterPosition] = characterSet[random.Next(characterSetLength - 1)];

                bool moreThanTwoIdenticalInARow =
                    characterPosition > MAXIMUM_IDENTICAL_CONSECUTIVE_CHARS
                    && password[characterPosition] == password[characterPosition - 1]
                    && password[characterPosition - 1] == password[characterPosition - 2];

                if (moreThanTwoIdenticalInARow)
                {
                    characterPosition--;
                }
            }

            return string.Join(null, password);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("DoctorMenu.aspx");
        }
    }
}