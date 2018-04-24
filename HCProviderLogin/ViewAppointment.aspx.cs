using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HCProviderLogin
{
    public partial class ViewAppointment : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection("Data Source=tcp:groupnine.database.windows.net;Initial Catalog=HealthCare;Persist Security Info=True;User ID=admingroup9;Password=Group9!!");
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            GridView2.Visible = false;
            if (!IsPostBack)
            {
                DropDownList1.SelectedIndex = 0;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (sqlCon)
            {
                SqlCommand Cmd = new SqlCommand("UPDATE Appointments SET StatusID =@StatusID WHERE ApptID =@ApptID", sqlCon);
                Cmd.Parameters.AddWithValue("@StatusID", 3);
                Cmd.Parameters.AddWithValue("@ApptID", TextBox1.Text.Trim());
                sqlCon.Open();
                Cmd.ExecuteNonQuery();
                sqlCon.Close();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            GridView2.Visible = false;
        }
    }
}