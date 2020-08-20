using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class donate : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
  
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
        if (Page.IsPostBack == false)
        {
            if (Session["mykey"] == null)
            {
                Response.Redirect("login.aspx");
            }
            BindDropdowns();
        }
    }
    protected void BindDropdowns()
    {
        SqlConnection con = new SqlConnection(str);
        SqlDataAdapter adp = new SqlDataAdapter("select * from location", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DropDownList3.DataTextField = "city";
        DropDownList3.DataValueField = "id";
        DropDownList3.DataSource = ds;
        DropDownList3.DataBind();
        DropDownList3.Items.Insert(0, new ListItem("--Select location--", "0"));

    }
    
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str); 
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select * from all_ngo where city_id=" + DropDownList3.SelectedValue, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DropDownList4.DataTextField = "ngo";
        DropDownList4.DataValueField = "n_id";
        DropDownList4.DataSource = ds;
        DropDownList4.DataBind();
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        Session["Cause"] = DropDownList2.SelectedItem.Text;
        Session["Location"] = DropDownList3.SelectedItem.Text;
        Session["NGO"] = DropDownList4.SelectedItem.Text;
        Session["donation_price"] =TextBox1.Text ;
        Session["tax_bnft"] = DropDownList5.SelectedItem.Text;
        Response.Redirect("payment.aspx");

    }
}