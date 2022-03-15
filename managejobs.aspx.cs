using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class managejobs : System.Web.UI.Page
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
            this.Title = "Knowledge Point | Manage Already Added Jobs";
            if (!IsPostBack)
            {
                BindJobs();
            }
        }
    }
    private void BindJobs()
    {
        try
        {
            ds = objCp.getDataset("[dbo].[sp_GetAllJobs]");
            gvjobs.DataSource = ds; gvjobs.DataBind();
        }
        catch (Exception ex)
        {
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            paramname = new ArrayList();
            paramvalue = new ArrayList();

            paramname.Add("@jobid");
            paramvalue.Add(Convert.ToInt32(ViewState["jobid"].ToString()));

            paramname.Add("@title");
            paramvalue.Add(tbJobTitle.Text);

            paramname.Add("@description");
            paramvalue.Add(EditorDescription.Content);

            paramname.Add("@profile");
            paramvalue.Add(editroCandidateProfile.Content);

            paramname.Add("@vacancies");
            paramvalue.Add(tbNumber.Text);

            paramname.Add("@status");
            paramvalue.Add(ddlStatus.SelectedItem.Text);

            int output = objCp.insertProc("[dbo].[sp_updatejobs]", paramname, paramvalue);
            if (output > 0)
            {
                lblResult.Text = "Job details updated";
                BindJobs();
                tbNumber.Text = "";
                tbNumber.Enabled = false;
                tbJobTitle.Text = "";
                tbJobTitle.Enabled = false;
                editroCandidateProfile.Content = "";
                editroCandidateProfile.Enabled = false;
                EditorDescription.Content = "";
                editroCandidateProfile.Enabled = false;
                ddlStatus.SelectedIndex = 0;
            }
            else
            {
                lblResult.Text = "Error in processing";
            }
        }
        catch (Exception ex)
        {
        }
    }
    protected void lnkJobTitle_Click(object sender, EventArgs e)
    {
        LinkButton lnkTitle = (LinkButton)sender;
        ViewState["jobid"] = lnkTitle.CommandArgument.ToString();
        GetJobDetails(Convert.ToInt32(lnkTitle.CommandArgument.ToString()));
    }

    private void GetJobDetails(int jobid)
    {
        try
        {
            tbJobTitle.Enabled = true;
            tbNumber.Enabled = true;
            editroCandidateProfile.Enabled = true;
            EditorDescription.Enabled = true;
            ddlStatus.Enabled = true;
            btnSave.Enabled = true;

            tbJobTitle.Focus();
            paramname = new ArrayList();
            paramvalue = new ArrayList();

            paramname.Add("@jobid");
            paramvalue.Add(jobid);

            ds = objCp.getDataset("[dbo].[sp_GetJobDetails]", paramname, paramvalue);
            tbJobTitle.Text = ds.Tables[0].Rows[0]["title"].ToString();
            editroCandidateProfile.Content = ds.Tables[0].Rows[0]["desiredprofile"].ToString();
            EditorDescription.Content = ds.Tables[0].Rows[0]["description"].ToString();
            tbNumber.Text = ds.Tables[0].Rows[0]["vacancies"].ToString();
            string status = ds.Tables[0].Rows[0]["status"].ToString();
            ddlStatus.SelectedIndex = ddlStatus.Items.IndexOf(ddlStatus.Items.FindByText(status));
        }
        catch (Exception ex)
        {
        }
    }
}