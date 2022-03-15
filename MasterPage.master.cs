using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

public partial class MasterPage : System.Web.UI.MasterPage
{
    ArrayList pname, pvalue;
    connectionprovider objcp = new connectionprovider();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            logoutmenu.Visible = false;
            commonmenu.Visible = true;
        }
        else
        {
         
            logoutmenu.Visible = true;
            commonmenu.Visible = false;
        }       
       
    }
    protected void Image6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
   
  
}