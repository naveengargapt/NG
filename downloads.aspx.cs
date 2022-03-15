using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;
using System.IO;
public partial class downloads : System.Web.UI.Page
{
    ArrayList paraname, paravalue;
    DataSet ds = new DataSet();
    connectionprovider objCon = new connectionprovider();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "SMS Alert System For Schools | Knowledge Point | Download DCore Smart School SMS Alert System";
    }
    protected void btnDownload_Click(object sender, EventArgs e)
    {
        try
        {
            paraname = new ArrayList();
            paravalue = new ArrayList();

            paraname.Add("@username");
            paravalue.Add(tbUserName.Text.Trim().TrimEnd().TrimStart());
            paraname.Add("@password");
            paravalue.Add(tbPassword.Text.Trim().TrimStart().TrimEnd());

            ds = objCon.getserverDataset("[dbo].[sp_downloadverification]", paraname, paravalue);
            if (Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) > 0)
            {
                string FilePath = ("downloads/SMS-Alert-Set-Up.rar");

                if (File.Exists(Server.MapPath(FilePath)))
                {
                    Response.AddHeader("Content-Disposition", "attachment;filename=\"" + FilePath.Replace("downloads", tbUserName.Text) + "\"");
                    Response.TransmitFile(Server.MapPath(FilePath));
                    Response.End();
                    lblError.Text = "";
                    tbUserName.Text = tbPassword.Text = "";
                }
                else
                {
                    lblError.Text = "Set up file is not updated yet. Try after some time";
                }
            }
            else
            {
                lblError.Text = "Invalid username or password";
            }
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;

        }

    }
}