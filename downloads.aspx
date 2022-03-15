<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="downloads.aspx.cs" Inherits="downloads" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
    <table cellspacing="1" 
        style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse; border-spacing: 0px">
        <tr>
            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse; border-spacing: 0px">
                  <div align="left" style="margin: 2px; padding: 2px">
                        <h2 class="h2-font">
                            SMS Alert System For Schools | Download KPS SMS Alert System</h2>
                    </div></td>
        </tr>
          <tr>
            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse; border-spacing: 0px">
                  <div align="left" style="margin: 2px; padding: 2px">
                        <asp:Label ID="lblNote" runat="server" CssClass="label-small-headings">* Specify your SMS Alert System Username &amp; Password below to download the latest version.</asp:Label>
                    </div></td>
        </tr>
          <tr>
            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse; border-spacing: 0px">
                </td>
        </tr>
          <tr>
            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse; border-spacing: 0px">
           <div align="left" style="margin: 2px; padding: 2px">
                        <asp:Label ID="Label1" runat="server" CssClass="label-small-headings">Username: </asp:Label>
                    </div>     </td>
        </tr>
          <tr>
            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse; border-spacing: 0px">
               <div align="left" style="margin: 2px; padding: 2px">
                        
                    <asp:TextBox ID="tbUserName" runat="server" CssClass="text"></asp:TextBox>
                        
                    </div>     </td>

        </tr>
          <tr>
            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse; border-spacing: 0px">
              <div align="left" style="margin: 2px; padding: 2px">
                        <asp:Label ID="Label3" runat="server" CssClass="label-small-headings">Password: </asp:Label>
                    </div>      </td>

        </tr>
          <tr>
            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse; border-spacing: 0px">
                  <div align="left" style="margin: 2px; padding: 2px">
                        
                    <asp:TextBox ID="tbPassword" runat="server" CssClass="text" TextMode="Password"></asp:TextBox>
                        
                    </div>  </td>

        </tr>
          <tr>
            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse; border-spacing: 0px">
                <div align="left" style="margin: 2px; padding: 2px">
                        
                   
                        
                    <asp:Button ID="btnDownload" runat="server" CssClass="applybtn" 
                        onclick="btnDownload_Click" Text="Download" />
&nbsp;<asp:Label ID="lblError" runat="server" CssClass="error"></asp:Label>
                        
                   
                        
                    </div>  </td>


        </tr>
    </table>
    </div>
</asp:Content>

