using System;
using System.Collections.Generic;
using System.Windows;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HCProviderLogin
{
    public partial class SignUp : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=tcp:groupnine.database.windows.net;Initial Catalog=HealthCare;Persist Security Info=True;User ID=admingroup9;Password=Group9!!");
        protected void Page_Load(object sender, EventArgs e)
        {
            string letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
            /* string special = "`~!@#$%^&*()_-+={}[]|\:;"''<>,.?/";

            if(TextBox4.Text.Contains(TextBox4.Text.Any(char))
            {
                Message
            } */
            using (con)
            {
                SqlCommand sqlC = new SqlCommand("Select InsuranceProviderID, InsuranceProviderName from InsuranceProviderType", con);
                con.Open();
                DropDownList3.DataTextField = "InsuranceProviderName";
                DropDownList3.DataValueField = "InsuranceProviderID";
                DropDownList3.DataSource = sqlC.ExecuteReader();
                DropDownList3.DataBind();
                con.Close();

                SqlCommand sqlC1 = new SqlCommand("Select SexID, SexName from Sex", con);
                con.Open();
                DropDownList2.DataTextField = "SexName";
                DropDownList2.DataValueField = "SexID";
                DropDownList2.DataSource = sqlC1.ExecuteReader();
                DropDownList2.DataBind();
                con.Close();

                SqlCommand sqlC2 = new SqlCommand("Select StateID, StateName from States", con);
                con.Open();
                DropDownList1.DataTextField = "StateName";
                DropDownList1.DataValueField = "StateID";
                DropDownList1.DataSource = sqlC2.ExecuteReader();
                DropDownList1.DataBind();
                con.Close();


            }
        }


        SqlConnection con1 = new SqlConnection("Data Source=tcp:groupnine.database.windows.net;Initial Catalog=HealthCare;Persist Security Info=True;User ID=admingroup9;Password=Group9!!");
        protected void Button1_Click(object sender, EventArgs e)
        {
            using (con1)
            {
                string random = GeneratePassword(true, 9);
                string str = TextBox4.Text.ToString() + " " + TextBox8.Text.ToString();
                SqlCommand cmand = new SqlCommand("insert into Patient (PatientID, FName, MInit, LName, StreetAddress, City, StateID, ZipCode, HomeNumber, CellNumber, EmergencyNumber, AltNumber, SexID, BirthDate, InsuranceProvider, Email) values (@PatientID, @FName, @MInit, @LName, @StreetAddress, @City, @StateID, @ZipCode, @HomeNumber, @CellNumber, @EmergencyNumber, @AltNumber, @SexID, @BirthDate, @InsuranceProvider, @Email)", con1);
                            con1.Open();

                            cmand.Parameters.AddWithValue("@PatientID", random);
                            cmand.Parameters.AddWithValue("@FName", TextBox1.Text);
                            cmand.Parameters.AddWithValue("@MInit", TextBox2.Text);
                            cmand.Parameters.AddWithValue("@LName", TextBox3.Text);
                            cmand.Parameters.AddWithValue("@StreetAddress", str);
                            cmand.Parameters.AddWithValue("@City", TextBox5.Text);
                            cmand.Parameters.AddWithValue("@StateID", DropDownList1.SelectedValue);
                            cmand.Parameters.AddWithValue("@ZipCode", TextBox6.Text);
                            cmand.Parameters.AddWithValue("@HomeNumber", TextBox9.Text);
                            cmand.Parameters.AddWithValue("@CellNumber", TextBox10.Text);
                            cmand.Parameters.AddWithValue("@EmergencyNumber", TextBox11.Text);
                            cmand.Parameters.AddWithValue("@AltNumber", TextBox12.Text);
                            cmand.Parameters.AddWithValue("@Email", TextBox13.Text);
                            cmand.Parameters.AddWithValue("@SexID", DropDownList2.SelectedItem.Value);
                            cmand.Parameters.AddWithValue("@BirthDate", TextBox7.Text);
                            cmand.Parameters.AddWithValue("@InsuranceProvider", DropDownList3.SelectedItem.Value);

                            cmand.ExecuteNonQuery();
                            Label1.Visible = true;
                            con1.Close();

                SqlCommand user = new SqlCommand("insert into PatientLogin (Username, Passwd, PatientID) values (@Username, @Password, @PatientID)" , con1);
                con1.Open();
                user.Parameters.AddWithValue("@Username", TextBox14.Text.Trim());
                user.Parameters.AddWithValue("@Password", TextBox15.Text.Trim());
                user.Parameters.AddWithValue("@PatientID", random);
                user.ExecuteNonQuery();
                con1.Close();

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

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
