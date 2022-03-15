using System;
using System.Collections.Generic;
using System.Data;
using System.IO;

using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class careers : System.Web.UI.Page
{
    connectionprovider objConnectionProvider = new connectionprovider();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "Knowledge Point | Career With Us";
        if (!IsPostBack)
        {
            BindJobTitle();
        }
    }
    private void BindJobTitle()
    {
        try
        {
            ds = objConnectionProvider.getDataset("[dbo].[sp_GetJobTitles]");
            dlJobs.DataSource = ds;
            dlJobs.DataBind();
        }
        catch (Exception ex)
        {
            string script = @"alert('Error: " + ex.Message + "');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "filessubmitted", script, true);
        }
        finally
        {
            objConnectionProvider = null;
        }
    }
    private void send_mail(string _strSender, FileUpload resumeUploader)
    {
        string mailmessage, strFileName;

        mailmessage = "Respected Sir/Mam,<br/><br/> I am applying for future job opening(s) in your organization. <br/><br/> Kindly find the attached resume.<br/>";

        strFileName = Path.GetFileName(resumeUploader.PostedFile.FileName);
        /* Save the file on the server */
        resumeUploader.PostedFile.SaveAs(Server.MapPath(strFileName ));
        System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage(_strSender, "careers@dcoresolutions.com", "Job Application For Future Opening(s)", mailmessage);
        Attachment at = new Attachment(Server.MapPath(strFileName));
        message.Attachments.Add(at);
        System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient("mail.dcoresolutions.com");
        message.Priority = MailPriority.High;
        System.Net.NetworkCredential netcredit = new System.Net.NetworkCredential("careers@dcoresolutions.com", "Dcorecareers@123");

        smtp.UseDefaultCredentials = false;

        smtp.Credentials = netcredit;

        smtp.Send(message);
    }
    protected void btnUpdateFormsQty_Click(object sender, EventArgs e)
    {
        try
        {
            mpeResume.Show();
            send_mail(tbEmail.Text, resumeUploader);
            lblResult.Text = "Your resume uploaded successfully. Close window";
            tbEmail.Text = "";
        }
        catch (Exception ex)
        {
            lblResult.Text = ex.Message;
        }
    }
    protected void lnkUploadResume_Click(object sender, EventArgs e)
    {
        mpeResume.Show();
    }
}