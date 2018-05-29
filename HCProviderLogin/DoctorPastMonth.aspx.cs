using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace HCProviderLogin
{
    public partial class DoctorPastMonth : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection("Data Source = tcp:groupnine.database.windows.net; Initial Catalog = HealthCare; Persist Security Info=True;User ID = admingroup9; Password=Group9!!");
        protected void Page_Load(object sender, EventArgs e)
        {
            System.DateTime date1 = DateTime.Now;
            System.DateTime date2;
            date2 = date1.AddMonths(-1);
            string LastMonth = date2.ToString("yyyy-MM-dd");
            string Today = date1.ToString("yyyy-MM-dd");
            string DID = (string)(Session["DoctorID"]);
            //Label1.Text = "logged in as: '" + DID + "'. Today is " + Today + "";
            using (sqlCon)
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("Select ApptID,Date,VisitReasonName,Status,OfficeName,TimeSlot,a.PatientID,LName FROM Appointments a INNER JOIN VisitReason r ON a.VisitReasonID = r.VisitReasonID INNER JOIN StatusType s ON a.StatusID = s.StatusID INNER JOIN Offices o ON a.OfficeID = o.OfficeID INNER JOIN TimeSlot t ON a.TimeSlotID = t.TimeSlotID INNER JOIN Patient p ON a.PatientID = p.PatientID WHERE [Date] > '" + LastMonth + "' AND [Date] <= '" + Today + "' AND DoctorID = '" + DID + "';", sqlCon);
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                int i = dtbl.Rows.Count;
                GridView2.DataSource = dtbl;
                GridView2.DataBind();
                Label1.Text = "Total Appointments = " + i.ToString() + "";
                sqlCon.Close();
            }
        }
        protected void B1Click(object sender, EventArgs e)
        {
            Response.Redirect("DoctorMenu.aspx");
        }
    }
}