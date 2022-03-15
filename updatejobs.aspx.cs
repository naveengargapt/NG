using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class updatejobs : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    ArrayList paramname, paramvalue;
    connectionprovider objCp = new connectionprovider();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            this.Title = "Knowledge Point | Add New Job";
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            paramname = new ArrayList();
            paramvalue = new ArrayList();

            paramname.Add("@title");
            paramvalue.Add(tbJobTitle.Text);

            paramname.Add("@description");
            paramvalue.Add(tbJobDescription.Content);

            paramname.Add("@profile");
            paramvalue.Add(tbRequiredProfile.Content);

            paramname.Add("@vacancies");
            paramvalue.Add(tbNumber.Text);

            int temp = objCp.insertProc("[dbo].[sp_NewJob]", paramname, paramvalue);
            if (temp > 0)
            {
                lblResult.Text = "Job added successfully";
                tbNumber.Text = tbJobTitle.Text = tbJobDescription.Content = tbRequiredProfile.Content = "";
            }
            else
            {
                lblResult.Text = "Error in saving job details";
            }
        }
        catch (Exception ex)
        {
            string script = @"alert('Error: " + ex.Message + "');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "filessubmitted", script, true);
        }
    }
}