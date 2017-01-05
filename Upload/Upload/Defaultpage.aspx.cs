using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Upload
{
    public partial class Defaultpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Response.Redirect("~/Welcome.aspx");
            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlConnect"].ToString());
            con.Open();
            string query = "select count(*) from tbluser where user_name ='" + Txtuser.Text + "'and pass='" +Txtpass.Text+ "'";

            SqlCommand com = new SqlCommand(query, con);
            string output = com.ExecuteScalar().ToString();

            if (output == "1")
            {
                //now we create a session 
                Session["user"] = Txtuser.Text;
                Response.Redirect("~/Welcome.aspx");
            }
            else
            {
                Response.Write("Login Failed");

            }
        }
    }

}