using System;
using System.Collections.Generic;
using System.Data.OracleClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Database_CW
{
    public partial class Job : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connection = "Data Source=XE;User ID=amrit_cw1;Password=amrit;";
            OracleConnection oConnection = new OracleConnection(connection);
            oConnection.Open();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ConnectinStr = "Data Source=XE;User ID=amrit_adk_cw1;Password=amrit";
            OracleConnection con = new OracleConnection(ConnectinStr);
            con.Open();
            OracleCommand cmd = new OracleCommand("Insert into Jobs values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text +  "')", con);
            cmd.ExecuteNonQuery();
            Response.Redirect(Request.RawUrl);
        }
    }
}