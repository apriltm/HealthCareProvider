using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HCProviderLogin
{
    public partial class PatientMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CalenderT.aspx");
        }


        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
           Response.Redirect("ScheduleAppt.aspx");
        }
    }
}