using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HCProviderLogin
{
    public partial class AppointApproval : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection("Data Source = tcp:groupnine.database.windows.net; Initial Catalog = HealthCare; Persist Security Info=True;User ID = admingroup9; Password=Group9!!");
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting1(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            using (sqlCon)
            {
                /*string str = string.Empty;
                str = (string)Session["AdminID"];
                SqlCommand cmd = new SqlCommand("insert into Appointments (AdminID) values (@AdminID)", sqlCon);
                cmd.Parameters.AddWithValue("@AdminID", str);
                sqlCon.Open();
                cmd.ExecuteNonQuery();
                sqlCon.Close();*/
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("AdminMenu.aspx");
        }
    }
}