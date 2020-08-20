using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;


public partial class add_locations : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
  
    protected void Page_Load(object sender, EventArgs e)
    {
       
         


        if (Page.IsPostBack == false)
        {

            BindDropdowns();
        }
       
    }

    protected void BindDropdowns()
    {
        SqlConnection con = new SqlConnection(str);
        SqlDataAdapter adp = new SqlDataAdapter("select * from location", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DropDownList1.DataTextField = "city";
        DropDownList1.DataValueField = "id";
        DropDownList1.DataSource = ds;
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("--Select location--", "0"));

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);
          con.Open();
        SqlCommand cmd = new SqlCommand("insert into location values(@loc) ", con);
        cmd.Parameters.AddWithValue("@loc", login_uname.Text);
        cmd.ExecuteNonQuery();
           con.Close();

           Response.Write("<script> alert ('inserted Successfuly; </script>");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
        SqlConnection conn = new SqlConnection(str);
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into all_ngo values(@ngo,@city_id) ", conn);
        cmd.Parameters.AddWithValue("@ngo", TextBox1.Text);
        cmd.Parameters.AddWithValue("@city_id",DropDownList1.SelectedValue);
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script> alert ('inserted Successfuly; </script>");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string filepath = FileUpload1.PostedFile.FileName;
        string filename = Path.GetFileName(filepath);
        FileUpload1.SaveAs(Server.MapPath("pic/" + filename));
         
        string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
        SqlConnection conn = new SqlConnection(str);
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into help values(@img,@cau,@don,@loc) ", conn);
        cmd.Parameters.AddWithValue("@img", filename);
        cmd.Parameters.AddWithValue("@cau", TextBox3.Text);

        cmd.Parameters.AddWithValue("@don", TextBox4.Text);

        cmd.Parameters.AddWithValue("@loc", TextBox5.Text);
        cmd.ExecuteNonQuery();
        conn.Close();

        Response.Write("<script> alert ('inserted Successfuly; </script>");

    }
}