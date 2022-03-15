using System;
using System.Collections.Generic;

using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "Knowledge Point | Contact Us";
    }
    protected void btnSend_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            send_mail(tbName.Text, tbMail.Text, tbOrganization.Text, tbContactNumber.Text, tbMessage.Text);
            lblResult.Text = "Your query submitted successfully. We will revert back soon";
            tbMessage.Text = tbMail.Text = tbContactNumber.Text = tbOrganization.Text = tbName.Text = "";
        }
        catch (Exception ex)
        {
            lblResult.Text = " Sorry! Your query can not be sent at this time. Please try again later";
        }
    }
    private void send_mail(string _strName, string _strMail, string _strOrganization, string _strContact, string _strMessage)
    {
        string _strMessageToSend = "Persong Name: " + _strName + "<br/> Person Organization: " + _strOrganization + "<br/>Person Contact: " + _strContact + "<br/>Query: " + _strMessage;

        System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage(_strMail, "support@dcoresolutions.com", " Query from Knowledge Point Visitor", _strMessageToSend);

        System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient("mail.dcoresolutions.com");
        message.Priority = MailPriority.High;
        System.Net.NetworkCredential netcredit = new System.Net.NetworkCredential("support@dcoresolutions.com", "ZAD@11132");

        smtp.UseDefaultCredentials = false;

        smtp.Credentials = netcredit;

        smtp.Send(message);
    }
}