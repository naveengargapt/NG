using System;
using System.Collections.Generic;
using System.Data;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class ourteam : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    connectionprovider objConnectionProvider = new connectionprovider();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "Knowledge Point | Our Team";
      //  BindTeam();
    }

    //private void BindTeam()
    //{
    //    try
    //    {
    //        ds = objConnectionProvider.getDataset("[dbo].[sp_bindwholeteam]");
    //        dlTeam.DataSource = ds;
    //        dlTeam.DataBind();
    //    }
    //    catch (Exception ex)
    //    {
    //        Response.Write(ex.Message);
    //    }
    //}
}