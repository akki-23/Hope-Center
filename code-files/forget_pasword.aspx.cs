using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;

public partial class forget_pasword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void loginbtn_submit_Click(object sender, EventArgs e)
    {
        string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
        SqlConnection conn = new SqlConnection(str);
        conn.Open();
        SqlCommand cmd = new SqlCommand("select * from registration where username=@username1 and sques=@pwd and sans=@sans", conn);
        cmd.Parameters.AddWithValue("@username1", login_uname.Text);
        cmd.Parameters.AddWithValue("@pwd", DropDownList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@sans", TextBox1.Text);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            dr.Read();
            string a= dr["pwd"].ToString();

            Label2.Text = "Your Password is : " + a.ToString();
        }
        else
        {
            Response.Write("<script> alert ('Invalid User'); </script>");

        }

    }
}