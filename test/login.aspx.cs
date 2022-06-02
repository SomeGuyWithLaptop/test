using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace test
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection (cn);
            
            string quary = "insert into insertData values('" +TextBox1.Text+"', '"+TextBox2.Text+"')";
            
            con.Open();
            
            SqlCommand cmd = new SqlCommand (quary, con);

            int rs = cmd.ExecuteNonQuery();
            if (rs>= 1)
                {
                Response.Write("Login Successfully");
            }
            else
            {
                Response.Write("Login Failed");
            }
        }
    }
}