using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.IO;

public partial class payment : System.Web.UI.Page
{
    SqlConnection conn = null;
    SqlCommand cmd = null;

    SqlDataReader drcurrent = null;

    protected void Page_Load(object sender, EventArgs e)
    {



        if (Session["mykey"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            Label2.Text = Convert.ToString(Session["mykey"]);
        }


        if (Request.QueryString["helpid"] != null)
        {
            string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
            SqlConnection conn = new SqlConnection(str);
            conn.Open();

            cmd = new SqlCommand("select  * from help where id=@id ", conn);
            cmd.Parameters.AddWithValue("@id", Request.QueryString["helpid"].ToString());
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            packageprice.Text = dr["Donation_amount"].ToString();
            Session["Cause"] = dr["Cause"].ToString();
            Session["Location"] = dr["Location"].ToString();
            Session["NGO"] = "Private Donation";
            Session["tax_bnft"] = "Applied under Policy";
            dr.Close();
            conn.Close();
        }
        else
        {
            packageprice.Text = Convert.ToString(Session["donation_price"]);

        }

        for (int i = 2016; i <= 2020; i++)
        {
            DropDownList3.Items.Add(i.ToString());
        }
       

       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

     
         string expire = DropDownList2.SelectedItem.Text + "-" + DropDownList3.SelectedItem.Text;
        string str = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
        conn = new SqlConnection(str);
      cmd = new SqlCommand("insert into payment values(@un,@dn,@c,@l,@ng,@tb,@ct,@cdno,@chn,@exp)",conn);
       
        cmd.Parameters.AddWithValue("@un",Label2.Text);
        cmd.Parameters.AddWithValue("@dn",packageprice.Text);
        cmd.Parameters.AddWithValue("@c",Session["Cause"].ToString());
        cmd.Parameters.AddWithValue("@l",Session["Location"].ToString());
        cmd.Parameters.AddWithValue("@ng",Session["NGO"].ToString());
        cmd.Parameters.AddWithValue("@tb",Session["tax_bnft"].ToString());
        cmd.Parameters.AddWithValue("@ct",DropDownList1.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@cdno",cardnum.Text);
        cmd.Parameters.AddWithValue("@chn",holdername.Text);
        cmd.Parameters.AddWithValue("@exp",expire);
        
        
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
       //..............................................
        conn.Open();
        //cmd = new SqlCommand("select  FullName,Email from UsersProfiles where UserName=@username ", conn);
        //cmd.Parameters.AddWithValue("@username", Label1.Text);
        //drcurrent = cmd.ExecuteReader();
        //drcurrent.Read();
        //string name = (string)drcurrent["FullName"];
        //string email = (string)drcurrent["Email"];
        //drcurrent.Close();
        //conn.Close();

        //// mainling process
        //MailMessage mail = new MailMessage();
        //mail.To.Add(email);
        //mail.From = new MailAddress("dhootharpreet@gmail.com");
        //mail.Subject = "THANK YOU FOR USING AIRLINE RESERVATION SERVICES";
        ////booking message
        //mail.Body = "Hello" + " " + name + "," + "<br/>" + "<p>" + "Thank you for booking with AIRLINE RESERVATION SERVICES. This is your E-ticket.We wishes you a pleasant journey and hope to serve you again in the future." + "</p>" + "<br/>" + "<table>" + "<tr><td>" + "Booked on:" + datenow + "  " + timenow + "</td></tr>" + "<tr><td>" + "Booking Refrence Id:" + Session["bookingId"].ToString() + "</td></tr>" + "<tr><td>" + "Total price:" + package + "</td></tr>" + "<tr><td>" + "Passengers:" + Session["psngrs"].ToString() + "</td></tr>" + "<tr></tr>" + "<tr><td>" + "Depart Date:" + " " + dpdate + "</td></tr> " + "</table> " + "<br/>" + "All passengers must present valid identification<br/>" + "In case of cancellations less than 6 hours before Date We are not responsible for any losses if the request is recieved less than 6 hours before departure date.<br/>Thank you for selecting us as your choice of reservation website. ";
        //mail.IsBodyHtml = true;
        //SmtpClient smtp = new SmtpClient();
        //smtp.Host = "smtp.gmail.com";
        //smtp.Port = 587;

        //smtp.Credentials = new System.Net.NetworkCredential("dhootharpreet@gmail.com", "dhootgirl1");
        //smtp.EnableSsl = true;



        //try
        //{
        //    smtp.Send(mail);
           Response.Write("<script>alert('Payment made, mail sent to your id...')</script>");

        //}
        //catch (Exception ex)
        //{
        //    Response.Write(ex.ToString());
        //}





    }
}