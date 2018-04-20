using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace HCProviderLogin
{
    public partial class PatientLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BnLogin_Click(object sender, EventArgs e)
        {
            

            string username = TextBox1.Text;
            string password = TextBox2.Text;

            Console.WriteLine(username);
            Console.Read();
        }
    }
}