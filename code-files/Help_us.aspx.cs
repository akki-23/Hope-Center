using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Help_us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    


    protected void myclick(object sender, EventArgs e)
    {


        var lb = (Button)sender;
        //var lb = (LinkButton)sender;
        var row = (GridViewRow)lb.NamingContainer;
        if (row != null)
        {
            var lblRequestor = row.FindControl("Label4") as Label;

            if (lblRequestor != null)
            {
                //Get values
                string aa = lblRequestor.Text;
                Response.Redirect("payment.aspx?helpid="+aa.ToString());



               
            }

        }


    }


}