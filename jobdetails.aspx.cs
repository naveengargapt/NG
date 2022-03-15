using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.IO;

using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class joobdetails : System.Web.UI.Page
{
    string _strJobTitle = string.Empty;
    DataSet ds = new DataSet();
    connectionprovider objCp = new connectionprovider();
    ArrayList paramname, paramvalue;
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "Knowledge Point | Job Details";
        BindJobDetails();
    }

    private void BindJobDetails()
    {
        try
        {
            paramname = new ArrayList();
            paramvalue = new ArrayList();

            paramname.Add("@jobid");
            paramvalue.Add(Convert.ToInt32(Request.QueryString["job"].ToString()));

            ds = objCp.getDataset("[dbo].[sp_GetJobDetails]", paramname, paramvalue);
            dlJobDetail.DataSource = ds;
            dlJobDetail.DataBind();
            _strJobTitle = ds.Tables[0].Rows[0]["title"].ToString();
        }
        catch (Exception ex)
        {
            string script = @"alert('Error: " + ex.Message + "');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "filessubmitted", script, true);
        }
    }
    private void send_mail(string _strSender, string _strTitle, FileUpload resumeUploader)
    {
        string mailmessage, strFileName;

        mailmessage = "Respected Sir/Mam,<br/><br/> I am applying for the job of: " + _strTitle + "<br/><br/> Kindly find the attached resume.<br/>";

        strFileName = Path.GetFileName(resumeUploader.PostedFile.FileName);
        /* Save the file on the server */
        resumeUploader.PostedFile.SaveAs(Server.MapPath(strFileName));
        System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage(_strSender, "careers@dcoresolutions.com", "Job Application: " + _strTitle, mailmessage);
        Attachment at = new Attachment(Server.MapPath(strFileName));
        message.Attachments.Add(at);
        System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient("mail.dcoresolutions.com");
        message.Priority = MailPriority.High;
        System.Net.NetworkCredential netcredit = new System.Net.NetworkCredential("careers@dcoresolutions.com", "Dcorecareers@123");

        smtp.UseDefaultCredentials = false;

        smtp.Credentials = netcredit;

        smtp.Send(message);
    }
    protected void btnApply_Click(object sender, EventArgs e)
    {
        try
        {
            send_mail(tbMail.Text, _strJobTitle, resumeUploader);
            tbMail.Text = "";
            lblResult.Text = "Your have successfully applied for the current job";
        }
        catch (Exception ex)
        {
        }
    }
}