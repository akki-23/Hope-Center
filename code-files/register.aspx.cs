using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class register : System.Web.UI.Page
{
    SqlCommand cmd = null;
    SqlConnection conn = null;
    SqlDataAdapter adp = null;
    DataSet ds = null;
    DataTable tbl = null;
    DataRow dr = null;
   
    protected void Page_Load(object sender, EventArgs e)
    {
      string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
        conn = new SqlConnection(str);


        for (int i = 1950; i < 2010; i++)
        {
            year.Items.Add(i.ToString());
        }




    }




    protected void uname_TextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(uname.Text))
        {
            string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
            conn = new SqlConnection(str);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from registration where username=@username1", conn);
            cmd.Parameters.AddWithValue("@username1", uname.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                imgstatus.Visible = true;
                lblstatus.Visible = true;

               

                imgstatus.ImageUrl = "images/cross.jpg";
                lblstatus.Text = "UserName Already Taken";
            }
            else
            {
                imgstatus.Visible = true;
                lblstatus.Visible = true;
              
                imgstatus.ImageUrl = "images/tick.jpg";
                lblstatus.Text = "UserName Available";
            }
        }


    }
    protected void btn_accept_Click(object sender, EventArgs e)
    {
        //reg_from ACCEPT BUTTON CLICK
        string un = "";
        if (day.SelectedItem.Text == "Day" || month.SelectedItem.Text == "Month")
        {
            ScriptManager.RegisterStartupScript(btn_accept, btn_accept.GetType(), "alert", "alert('Check whether Date,month);", true);
        }

        else
        {

            string dob = day.SelectedItem.Text + "-" + month.SelectedItem.Text + "-" + year.SelectedItem.Text;

            string gend = gender.SelectedItem.ToString();

            string agri = agree.SelectedItem.ToString();

            string telephone = telephonecode1.Text + "-" + teleno.Text;
            string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
            conn = new SqlConnection(str);
            conn.Open();
            adp = new SqlDataAdapter("select * from registration", conn);
            ds = new DataSet("regis");
            adp.Fill(ds, "class_regis");
            tbl = ds.Tables["class_regis"];
            cmd = new SqlCommand("insert into registration values('" + name_1.Text + "','" + uname.Text + "','" + gend + "','" + dob + "','" + email.Text + "','" + password1.Text + "','" + Confirmpwd.Text + "','" + occupation.Text + "','" + address.Text + "','" + telephone + "','" + mobileno.Text + "','" + agree + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox1.Text + "')", conn);
            adp.InsertCommand = cmd;
            un = uname.Text;
            dr = tbl.NewRow();
            dr.BeginEdit();
            dr["name"] = name_1.Text;
            dr["username"] = uname.Text;
            dr["gender"] = gend;
            dr["dob"] = dob;
            dr["email"] = email.Text;
            dr["pwd"] = password1.Text;
            dr["confirmpwd"] = Confirmpwd.Text;
            dr["occupation"] = occupation.Text;
            dr["address"] = address.Text;
            dr["teleno"] = telephone;
            dr["mobno"] = mobileno.Text;
            dr["agree"] = agri;
            dr["sques"] = DropDownList1.SelectedItem.Text;
            dr["sans"] = TextBox1.Text;
            dr.EndEdit();
            tbl.Rows.Add(dr);
            adp.Update(ds, "class_regis");


            Response.Write("<script> alert ('You have Registerd Successfully'); </script>");



            Response.Redirect("login.aspx");


        }

    }
   
    protected void day_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}