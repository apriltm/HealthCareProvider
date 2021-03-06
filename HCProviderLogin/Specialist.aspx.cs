﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HCProviderLogin
{
    public partial class Specialist : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection("Data Source=tcp:groupnine.database.windows.net;Initial Catalog=HealthCare;Persist Security Info=True;User ID=admingroup9;Password=Group9!!");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (sqlCon)
                {
                    SqlCommand sqlCmd = new SqlCommand("Select VisitReasonID, VisitReasonName from VisitReason", sqlCon);
                    sqlCon.Open();
                    DDrea.DataTextField = "VisitReasonName";
                    DDrea.DataValueField = "VisitReasonID";
                    DDrea.DataSource = sqlCmd.ExecuteReader();
                    DDrea.DataBind();
                    sqlCon.Close();

                    SqlCommand sqlCmd1 = new SqlCommand("Select TimeSlotID, TimeSlot from TimeSlot", sqlCon);
                    sqlCon.Open();
                    DDtime.DataTextField = "TimeSlot";
                    DDtime.DataValueField = "TimeSlotID";
                    DDtime.DataSource = sqlCmd1.ExecuteReader();
                    DDtime.DataBind();
                    sqlCon.Close();

                    SqlCommand sqlCmd2 = new SqlCommand("Select OfficeID, OfficeName from Offices", sqlCon);
                    sqlCon.Open();
                    DDloc.DataTextField = "OfficeName";
                    DDloc.DataValueField = "OfficeID";
                    DDloc.DataSource = sqlCmd2.ExecuteReader();
                    DDloc.DataBind();
                    sqlCon.Close();

                   /* SqlCommand sqlCmd3 = new SqlCommand("Select DoctorTypeID, DoctorType from DoctorType where DoctorType != 1", sqlCon);
                    sqlCon.Open();
                    DDD.DataTextField = "DoctorType";
                    DDD.DataValueField = "DoctorTypeID";
                    DDD.DataSource = sqlCmd3.ExecuteReader(); 
                    DDD.DataBind();
                    sqlCon.Close();*/



                    LaReq.Visible = false;
                    Label8.Visible = false;


                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


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

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click2(object sender, EventArgs e)
        {

        }

        protected void Button1_Click3(object sender, EventArgs e)
        {
            using (sqlCon)
            {

                sqlCon.Open();
                string str = string.Empty;
                SqlCommand spe = new SqlCommand("SELECT PrimaryDoctorID from Patient WHERE PatientID=@PatientID", sqlCon);
                str = Convert.ToString(Session["PatientID"]);
                spe.Parameters.AddWithValue("@PatientID", str);
                string PPD = Convert.ToString(spe.ExecuteScalar());
                string ApID = GeneratePassword(true, 9);
                SqlCommand cmd = new SqlCommand("insert into Appointments (ApptID,Date,VisitReasonID,StatusID,OfficeID,TimeSlotID, PatientID, DoctorID, Specialist, DoCApprove) values (@ApptID, @Date, @VisitReasonID, @StatusID, @OfficeID, @TimeSlotID, @PatientID, @DoctorID, @Specialist, @DocApprove)", sqlCon);
                cmd.Parameters.AddWithValue("@ApptID", ApID);
                cmd.Parameters.AddWithValue("@Date", TextBox1.Text);
                cmd.Parameters.AddWithValue("@VisitReasonID", DDrea.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@StatusID", 1);
                cmd.Parameters.AddWithValue("@OfficeID", DDloc.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@TimeSlotID", DDtime.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PatientID", str);
                cmd.Parameters.AddWithValue("@DoctorID", PPD);
                cmd.Parameters.AddWithValue("@SpecialIst", DDD.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@DocApprove", 1);
                cmd.ExecuteNonQuery();
                int i;
                SqlCommand check = new SqlCommand("SELECT StatusID FROM Appointments WHERE ApptID =@ApptID AND Specialist !=@DoctorTypeID", sqlCon);
                check.Parameters.AddWithValue("@ApptID", ApID);
                check.Parameters.AddWithValue("@DoctorTypeID", 1);
                i = Convert.ToInt32(check.ExecuteScalar());
                if (i == 6)
                {
                    Label8.Visible = true;

                }

                else
                {
                    LaReq.Visible = true;
                }
                //Label7.Text = Convert.ToString(i);
                sqlCon.Close();



            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("PatientMenu.aspx");
        }
    }

}