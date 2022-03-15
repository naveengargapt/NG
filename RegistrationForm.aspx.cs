using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

public partial class RegistrationForm : System.Web.UI.Page
{
    connectionprovider objcp = new connectionprovider();
    DataSet ds;
    ArrayList pname, pvalue;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            pname = new ArrayList();
            pvalue = new ArrayList();

            pname.Add("@course");
            pvalue.Add(Ddlcourse.Text);

            pname.Add("@name");
            pvalue.Add(txtname.Text);

            pname.Add("@phone");
            pvalue.Add(Txtph.Text);

            string a = objcp.insertProcWithOutputString ("[dbo].[proc_addRegister]", pname, pvalue);
            if (a.Split(new char[] { ';' })[0] == "Sucessfully Register")
            {
                Lblresult.Text = a.Split(new char[] {';'})[0]+"And Your Registration No. Is :"+a.Split(new char[] {';'})[1];
                 string msg1 = "Dear Student, You are enrolled in the program " + Ddlcourse.Text + " and your enrollment/registration no is " + a.Split(new char [] {';'})[1] + " , From: Knowledge Point";
                objcp.SendGroupSMS(Txtph.Text, msg1);
            }
            else if (a == "")
            {
                Lblresult.Text = "Try Again Later";
            }
            else if (a == "You are Already Applied")
            {
                Lblresult.Text = a;
            }
            
        }
        catch (Exception ex)
        { 
        
        }
    }
}