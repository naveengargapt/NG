using System;
using System.Collections;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class login : System.Web.UI.Page
{
    connectionprovider objCp = new connectionprovider();
    ArrayList paramname, paramvalue;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Clear();
        this.Title = "Knowledge Point | Administrator Login";
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            paramname = new ArrayList();
            paramvalue = new ArrayList();

            paramname.Add("@loginid");
            paramvalue.Add(txtUserID.Text);

            paramname.Add("@password");
            paramvalue.Add(txtPassword.Text);

            int output = objCp.insertProcWithOutput("[dbo].[sp_login]", paramname, paramvalue);
            if (output > 0)
            {
                Session["uid"] = txtUserID.Text;
                Response.Redirect("updatejobs.aspx", false);
            }
            else
            {
                string script = @"alert('Unauthorized user');";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "filessubmitted", script, true);
            }
        }
        catch (Exception ex)
        {
        }
    }
}