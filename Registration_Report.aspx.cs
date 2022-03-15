using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;


public partial class Registration_Report : System.Web.UI.Page
{
    DataSet ds;
    connectionprovider objcp = new connectionprovider();
    DataView dv;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                Txtfrom.Text = DateTime.Today.ToString("MM/dd/yyyy");
                Txtto.Text = DateTime.Today.ToString("MM/dd/yyyy");
                ds = objcp.getDataset("select srno,name,course,phone,convert(varchar(10),date,101) as date,branch from register");
                Session["ds"] = ds;
                Grdreport.DataSource = ds.Tables[0];
                Grdreport.DataBind();
            }
        }
        catch (Exception ex)
        { }
    }
    protected void Btnshow_Click(object sender, EventArgs e)
    {
        ds = (DataSet)Session["ds"];
        dv = ds.Tables[0].DefaultView;
        dv.RowFilter = "";        
        dv.RowFilter = "date>='" + Txtfrom.Text + "' and date<='" + Txtto.Text + "'";
     //   dv.RowFilter = " (Date >= #'" + Convert.ToDateTime(Txtfrom.Text) + "'# And Date <= #" + Convert.ToDateTime(Txtto.Text) + "# ) ";
        Grdreport.DataSource = dv;
        Grdreport.DataBind();
    }
}