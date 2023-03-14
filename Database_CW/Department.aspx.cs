using System;
using System.Collections.Generic;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Database_CW
{
    public partial class Department : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ConnectinStr = "Data Source=XE;User ID=amrit_adk_cw1;Password=amrit";
            OracleConnection con = new OracleConnection(ConnectinStr);
            con.Open();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string ConnectinStr = "Data Source=XE;User ID=amrit_adk_cw1;Password=amrit";
            OracleConnection con = new OracleConnection(ConnectinStr);
            con.Open();
            OracleCommand cmd = new OracleCommand("Insert into Departments values ('" + TextBox1.Text + "','" + TextBox2.Text + "')", con);
            cmd.ExecuteNonQuery();
            Response.Redirect(Request.RawUrl);
        }
    }
}