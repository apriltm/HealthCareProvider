using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HCProviderLogin
{
    public partial class AdminPastMonth : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection("Data Source = tcp:groupnine.database.windows.net; Initial Catalog = HealthCare; Persist Security Info=True;User ID = admingroup9; Password=Group9!!");
        protected void Page_Load(object sender, EventArgs e)
        {
            System.DateTime date1 = DateTime.Now;
            System.DateTime date2;
            date2 = date1.AddMonths(-1);
            string LastMonth = date2.ToString("yyyy-MM-dd");
            string Today = date1.ToString("yyyy-MM-dd");
            string AID = (string)(Session["AdminID"]);
            //Label1.Text = "logged in as: '" + AID + "'. Today is " + Today + "";
            using (sqlCon)
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT ApptID,a.DoctorID,d.LName,Date,VisitReasonName,Status,OfficeName,TimeSlot,a.PatientID FROM Appointments a INNER JOIN Doctors d ON a.DoctorID = d.DoctorID INNER JOIN VisitReason r ON a.VisitReasonID = r.VisitReasonID INNER JOIN StatusType s ON a.StatusID = s.StatusID INNER JOIN Offices o ON a.OfficeID = o.OfficeID INNER JOIN TimeSlot t ON a.TimeSlotID=t.TimeSlotID INNER JOIN Patient p ON a.PatientID = p.PatientID WHERE [Date] < '" + Today + "' AND [Date] > '" + LastMonth + "';", sqlCon);
                DataTable dtbl = new DataTable();
                sqlDa.Fill(dtbl);
                int i = dtbl.Rows.Count;
                Label1.Text = "Total Appointments = " + i + "";
                GridView3.DataSource = dtbl;
                GridView3.DataBind();
            }
        }
        protected void B1Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminMenu.aspx");
        }
    }
}