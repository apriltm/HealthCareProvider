using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HCProviderLogin
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = string.Empty;
            str = (string)Session["DoctorID"];
            //Label1.Text = str;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewAppointmentD.aspx");
        }
    }
}