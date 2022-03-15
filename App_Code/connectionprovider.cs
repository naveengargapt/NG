using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;

public class connectionprovider
{
    //string conn = ConfigurationManager.ConnectionStrings["strcon"].ToString();
    string conn = ConfigurationManager.ConnectionStrings["servercon"].ToString();
    public SqlConnection con;
    public SqlConnection servercon;
    SqlDataAdapter da;
    SqlDataAdapter serverda;
    
    DataSet serverds;
    SqlCommand cmd;
    DataSet ds;
    public connectionprovider()
    {
        
         
        
    }
    public SqlConnection getConnction()
    {
        if (con != null && con.State == ConnectionState.Open)
            return con;
        con = new SqlConnection(conn);
        con.Open();
        return con;
    }
    public SqlConnection getserverConnction()
    {
        if (servercon != null && servercon.State == ConnectionState.Open)
            return servercon;
        servercon = new SqlConnection(conn);
        servercon.Open();
        return servercon;
    }

    public DataSet getDataset(string procName, ArrayList paramName, ArrayList paramValue)
    {
        con = getConnction();
        ds = new DataSet();
        da = new SqlDataAdapter(procName, con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        for (int i = 0; i < paramName.Count; i++)
        {
            da.SelectCommand.Parameters.AddWithValue(paramName[i].ToString(), paramValue[i].ToString());
        }
        da.Fill(ds);
        return ds;
    }

    public DataSet getserverDataset(string procName, ArrayList paramName, ArrayList paramValue)
    {
        servercon = getserverConnction();
        serverds = new DataSet();
        serverda = new SqlDataAdapter(procName, servercon);
        serverda.SelectCommand.CommandType = CommandType.StoredProcedure;
        for (int i = 0; i < paramName.Count; i++)
        {
            serverda.SelectCommand.Parameters.AddWithValue(paramName[i].ToString(), paramValue[i].ToString());
        }
        serverda.Fill(serverds);
        return serverds;
    }

    public DataSet procWithoutparam(string procName)
    {
        con = getConnction();
        ds = new DataSet();
        da = new SqlDataAdapter(procName, con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;

        da.Fill(ds);
        return ds;
    }
    public int InsertWithouParam(string procName)
    {
        int x;
        con.Close();
        cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = procName;
        cmd.Connection = con;
        con.Open();

        x = cmd.ExecuteNonQuery();

        con.Close();
        return x;
    }

    public DataSet getDataset(string query)
    {
        da = new SqlDataAdapter(query, getConnction());
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public int executeCommand(string query)
    {
        int x;
        cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = query;
        cmd.Connection = getConnction();
        x = cmd.ExecuteNonQuery();
        con.Close();
        return x;
    }

    public DataSet getDataset(string strfields, string strtable, string condition)
    {
        con = getConnction();
        da = new SqlDataAdapter("select " + strfields + " from " + strtable + condition, con);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public void closeConnection()
    {
        con.Close();
    }

    public void reset(Panel pan)
    {
        foreach (Control ctrl in pan.Controls)
        {
            if (ctrl is TextBox)
            {
                ((TextBox)ctrl).Text = "";
            }
            if (ctrl is DropDownList)
            {
                if (((DropDownList)ctrl).SelectedItem == null)
                {
                }
                else
                { ((DropDownList)ctrl).SelectedIndex = 0; }
            }
            if (ctrl is CheckBox)
            {
                ((CheckBox)ctrl).Checked = false;
            }
            if (ctrl is RadioButton)
            {
                ((RadioButton)ctrl).Checked = false;
            }
        }
    }

    public int insertProc(string procName, ArrayList paramName, ArrayList paramValue)
    {
        int temp = 0;

        cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = procName;
        cmd.Connection = getConnction();
        //con.Open();

        for (int i = 0; i < paramName.Count; i++)
        {
            cmd.Parameters.AddWithValue(paramName[i].ToString(), paramValue[i].ToString());
        }

        temp = cmd.ExecuteNonQuery();
        con.Close();
        return temp;
    }

    public int insertProcWithOutput(string procName, ArrayList parameterName, ArrayList parameterValue)
    {
        int x;
        con = getConnction();
        con.Close();
        cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = procName;
        cmd.Connection = con;
        con.Open();

        for (int i = 0; i < parameterName.Count; i++)
        {
            cmd.Parameters.AddWithValue(parameterName[i].ToString(), parameterValue[i].ToString());
        }
        SqlParameter transID = new SqlParameter("@result", SqlDbType.Int);
        transID.Direction = ParameterDirection.Output;
        cmd.Parameters.Add(transID);
        cmd.ExecuteNonQuery();
        x = Convert.ToInt32(transID.Value);
        con.Close();
        return x;
    }

    public string insertProcWithOutputString(string procName, ArrayList parameterName, ArrayList parameterValue)
    {
        string strMessage;
        con = getConnction();
        con.Close();

        cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = procName;
        cmd.Connection = con;
        con.Open();

        for (int i = 0; i < parameterName.Count; i++)
        {
            cmd.Parameters.AddWithValue(parameterName[i].ToString(), parameterValue[i].ToString());
        }
        SqlParameter paramOutPut = new SqlParameter("@Result", SqlDbType.NVarChar, 450);
        paramOutPut.Direction = ParameterDirection.Output;
        cmd.Parameters.Add(paramOutPut);
        cmd.ExecuteNonQuery();
        strMessage = paramOutPut.Value.ToString();
        con.Close();
        return strMessage;
    }

    public int InsertGeneralValues(string strCode, string strName, string strLocation, string strAffiliation, string strTable, string strID)
    {
        int x;
        con = getConnction();
        con.Close();
        cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "procInsertGeneralMaster";
        cmd.Connection = con;
        con.Open();

        cmd.Parameters.AddWithValue("@Name", strName);
        cmd.Parameters.AddWithValue("@Code", strCode);

        cmd.Parameters.AddWithValue("@Location", strLocation);
        cmd.Parameters.AddWithValue("@Affiliation", strAffiliation);
        cmd.Parameters.AddWithValue("@Table", strTable);
        cmd.Parameters.AddWithValue("@ID", strID);
        x = cmd.ExecuteNonQuery();
        con.Close();
        con.Dispose();
        cmd.Dispose();
        return x;
    }

    public int InsertRecord(string procName, ArrayList paramName, ArrayList paramValue)
    {
        int x;
        con = getConnction();
        con.Close();
        cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = procName;
        cmd.Connection = con;
        con.Open();

        for (int i = 0; i < paramName.Count; i++)
        {
            cmd.Parameters.AddWithValue(paramName[i].ToString(), paramValue[i].ToString());
        }
        SqlParameter appno = new SqlParameter("@RegNo", SqlDbType.Int);
        appno.Direction = ParameterDirection.Output;
        cmd.Parameters.Add(appno);
        cmd.ExecuteNonQuery();
        x = Convert.ToInt32(appno.Value);
        con.Close();
        return x;
    }

    //insert record with image

    public int InsertStudentRecord(string procName, ArrayList paramName, ArrayList paramValue, byte[] img)
    {
        int x;
        con = getConnction();
        con.Close();
        cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = procName;
        cmd.Connection = con;
        con.Open();

        for (int i = 0; i < paramName.Count; i++)
        {
            cmd.Parameters.AddWithValue(paramName[i].ToString(), paramValue[i].ToString());
        }
        SqlParameter appno = new SqlParameter("@RegNo", SqlDbType.Int);
        appno.Direction = ParameterDirection.Output;
        SqlParameter userImage = new SqlParameter("@StImage", SqlDbType.Image);
        userImage.Value = img;

        cmd.Parameters.Add(appno);
        cmd.Parameters.Add(userImage);
        cmd.ExecuteNonQuery();
        x = Convert.ToInt32(appno.Value);
        con.Close();
        return x;
    }
    public int updateStudentPhoto(string procName, ArrayList paramName, ArrayList paramValue, byte[] img)
    {
        int x;
        con = getConnction();
        con.Close();
        cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = procName;
        cmd.Connection = con;
        con.Open();

        for (int i = 0; i < paramName.Count; i++)
        {
            cmd.Parameters.AddWithValue(paramName[i].ToString(), paramValue[i].ToString());
        }
        //SqlParameter appno = new SqlParameter("@RegNo", SqlDbType.Int);
        //appno.Direction = ParameterDirection.Output;
        SqlParameter userImage = new SqlParameter("@StImage", SqlDbType.Image);
        userImage.Value = img;

        //   cmd.Parameters.Add(appno);
        cmd.Parameters.Add(userImage);
        x = cmd.ExecuteNonQuery();
        //   x = Convert.ToInt32(appno.Value);
        con.Close();
        return x;
    }
    public void bindDropDowns(DropDownList droplist, string fields, string tableName, string orderby, string textField, string valueField, string firstValue)
    {
        con = getConnction();
        da = new SqlDataAdapter("select " + fields + " from " + tableName + " order by " + orderby, con);
        ds = new DataSet();
        da.Fill(ds);
        droplist.DataSource = ds;
        droplist.DataTextField = textField;
        droplist.DataValueField = valueField;
        droplist.DataBind();
        droplist.Items.Insert(0, firstValue);
    }

    public void bindDropDowns(DropDownList droplist, string fields, string tableName, string wherecondition, string orderby, string textField, string valueField, string firstElement)
    {
        con = getConnction();
        da = new SqlDataAdapter("select " + fields + " from " + tableName + " where " + wherecondition + " order by " + orderby, con);
        ds = new DataSet();
        da.Fill(ds);
        droplist.DataSource = ds;
        droplist.DataTextField = textField;
        droplist.DataValueField = valueField;
        droplist.DataBind();
        droplist.Items.Insert(0, firstElement);
    }

    public void bindRadioButtons(RadioButtonList rbList, string tableName, string orderby, string textField, string valueField)
    {
        con = getConnction();
        da = new SqlDataAdapter("select * from " + tableName + " order by " + orderby, con);
        ds = new DataSet();
        da.Fill(ds);
        rbList.DataSource = ds;
        rbList.DataTextField = textField;
        rbList.DataValueField = valueField;
        rbList.DataBind();
    }

    public DataSet BindInformationCentres(string strState, string strCity, string strOrder)
    {
        con = getConnction();

        cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "procGetCentres";
        cmd.Connection = con;
        cmd.Parameters.AddWithValue("@State", strState);
        cmd.Parameters.AddWithValue("@City", strCity);
        cmd.Parameters.AddWithValue("@Order", strOrder);
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
    public  string SendGroupSMS(string contactno, string msg)
    {
        string strUrl = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=naveen@dcoresolutions.com:ZAD@11132&senderID=ZADGLO&receipientno=" + contactno + "&msgtxt=" + msg + "&state=4"; WebRequest request = HttpWebRequest.Create(strUrl); HttpWebResponse response = (HttpWebResponse)request.GetResponse();
        Stream s = (Stream)response.GetResponseStream();
        StreamReader readStream = new StreamReader(s); string dataString = readStream.ReadToEnd(); response.Close(); s.Close(); readStream.Close();
        return dataString;
    }
}