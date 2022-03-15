using System;
using System.Collections.Generic;
using System.Data;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

public partial class Home : System.Web.UI.Page
{
    connectionprovider objConnectionProvider = new connectionprovider();
    DataSet ds = new DataSet();
    ArrayList pname, pvalue;
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "Knowledge Point | SEO, ERP, Web Development, Web Designing, Web Hosting Company";
  //      BindTeam();
//        mde.Show();
    }
    private void BindTeam()
    {
        //try
        //{
        //    ds = objConnectionProvider.getDataset("[dbo].[sp_getmembers]");
        //    dlMembers.DataSource = ds;
        //    dlMembers.DataBind();
        //}
        //catch (Exception ex)
        //{
        }
    protected void Btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
    //        mde.Show();
            pname = new ArrayList();
            pvalue = new ArrayList();
            int selCount = 0;
            string course = "";
            for (int i = 0; i < Ddlcourse.Items.Count; i++)
                if (Ddlcourse.Items[i].Selected)
                {
                    selCount++;
                    course =course+ Ddlcourse.Items[i].Text + ",";
                }
            if (selCount > 2 || selCount <= 0)
            {
                Lblresult.Text = "You can select one or two course atleast";
            }
            else
            {
                pname.Add("@course");
                pvalue.Add(course.Substring(0, course.Length - 1));

                pname.Add("@name");
                pvalue.Add(txtname.Text);

                pname.Add("@phone");
                pvalue.Add(Txtph.Text);

                pname.Add("@branch");
                pvalue.Add(rdbranch.SelectedValue.ToString());

                string a = objConnectionProvider.insertProcWithOutputString("[dbo].[proc_addRegister]", pname, pvalue);
                if (a.Split(new char[] { ';' })[0] == "Sucessfully Register")
                {
                    Lblresult.Text = a.Split(new char[] { ';' })[0] + "And Your Registration No. Is :" + a.Split(new char[] { ';' })[1];

                    string msg1 = "Dear Student, You are enrolled in the program " + course.Substring(0, course.Length - 1) + " and your enrollment/registration no is " + a.Split(new char[] { ';' })[1] + " , From: Knowledge Point";
                    objConnectionProvider.SendGroupSMS(Txtph.Text, msg1);
                }
                else if (a == "")
                {
                    Lblresult.Text = "Try Again Later";
                }
                else if (a == "You are Already Applied")
                {
                    Lblresult.Text = a;
                }
      //          mde.Show();
            }

        }
        catch (Exception ex)
        {

        }
    }
}
