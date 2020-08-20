using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class contact_us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into feedback values(@nm,@email,@cnct,@msg) ", con);
        cmd.Parameters.AddWithValue("@nm",TextBox1.Text);
        cmd.Parameters.AddWithValue("@email",TextBox2.Text);
        cmd.Parameters.AddWithValue("@cnct",TextBox3.Text);
        cmd.Parameters.AddWithValue("@msg",TextBox4.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        TextBox1.Text="";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
}