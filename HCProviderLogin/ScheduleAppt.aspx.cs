using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HCProviderLogin
{
    public partial class ScheduleAppt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection("Data Source=tcp:groupnine.database.windows.net;Initial Catalog=HealthCare;Persist Security Info=True;User ID=admingroup9;Password=Group9!!"))
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


            }
        }
    }
}