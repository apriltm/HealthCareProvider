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
            /*if(!IsPostBack)
            {
                using (sqlCon)
                {
                    SqlCommand sqlCmd = new SqlCommand("Select StatusID, Status from StatusID", sqlCon);
                    sqlCon.Open();
                    DDstatus.DataTextField = "Status";
                    DDstatus.DataValueField = "StatusID";
                    DDstatus.DataSource = sqlCmd.ExecuteReader();
                    DDstatus.DataBind();
                    sqlCon.Close();

                }
            }*/
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}