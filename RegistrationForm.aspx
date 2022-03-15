<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="RegistrationForm.aspx.cs" Inherits="RegistrationForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="50%">
        <tr>
            <td colspan="2" align="center">
                <h2 class="h2-font">
                    Registration Form
                </h2>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Lblcourse" runat="server" Text="Course"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="Ddlcourse" runat="server" Width="150px">
                    <asp:ListItem>C</asp:ListItem>
                    <asp:ListItem>C++</asp:ListItem>
                    <asp:ListItem>Core Java</asp:ListItem>
                    <asp:ListItem>Adv. Java</asp:ListItem>
                      <asp:ListItem>Sql Server</asp:ListItem>
                        <asp:ListItem>Oracle</asp:ListItem>
                    <asp:ListItem>Tally</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Lblname" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Lblph" runat="server" Text="Phone No."></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Txtph" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
        <td align="center" colspan="2">
        <asp:Button ID="Btnsubmit" runat="server" Text="Submit" onclick="Btnsubmit_Click" />
        </td>
        </tr>
        <tr>
        <td align="center" colspan="2">
        <asp:Label ID="Lblresult" runat="server" ForeColor="Red"></asp:Label>
        </td>
        </tr>
    </table>
</asp:Content>
