<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="center" style="height: 377px; background-repeat: no-repeat; width: 1024px;
        background-color: #FFFFFF;">
        <table cellspacing="1" style="width: 1024px; height: 371px; background-repeat: no-repeat;">
            <tr>
                <td style="vertical-align: top; padding: 0px; margin: 0px; border-spacing: 0px; border-collapse: collapse;">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top; padding: 0px; margin: 0px; border-spacing: 0px; border-collapse: collapse;">
                    <div align="left" style="background-color: #CCCCCC; margin-left: 0px; height: 25px">
                        <asp:Label ID="lblHeader" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium"
                            BorderStyle="None" Style="margin-left: 5px; margin-top: 3px">Administrator Login</asp:Label></div>
                </td>
            </tr>
            <tr>
                <td style="border-width: 1px; border-color: #CCCCCC; vertical-align: top; padding: 0px;
                    margin: -3px 0px 0px 0px; border-spacing: 0px; border-collapse: collapse; border-right-style: solid;
                    border-bottom-style: solid; border-left-style: solid;">
                    <div align="left" style="height: 271px; width: 941px; margin-left: 80px; background-repeat: no-repeat;
                        margin-top: 9px;" class="div-round">
                        <asp:Panel ID="MyPanel" runat="server" DefaultButton="btnLogin" Style="margin-top: 0px">
                            <table class="div-round" style="border: 1px solid #FDFDFF; margin-top: 8px">
                                <tr>
                                    <td valign="top" style="width: 60%">
                                        <div align="center" style="width: 500px">
                                            <table cellspacing="1" style="width: 420px; vertical-align: top; margin-left: 10px;
                                                height: 211px; margin-top: 3px; background-image: url('Images/login_form.jpg');
                                                background-repeat: no-repeat;" class="div-round">
                                                <tr>
                                                    <td style="padding: 0px; margin: 0px; vertical-align: top; border-spacing: 0px; border-collapse: collapse;
                                                        text-align: justify;">
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px; margin: 0px; vertical-align: top; border-spacing: 0px; border-collapse: collapse;
                                                        text-align: justify;">
                                                        <div align="left" style="margin-left: 5px">
                                                            <div align="left" style="margin-bottom: 5px; margin-left: 12px; height: 19px; margin-top: 19px;">
                                                                <asp:Label ID="lblerror" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                                                                    ForeColor="#CC0000"></asp:Label>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px; margin: 0px; vertical-align: top; border-spacing: 0px; border-collapse: collapse;
                                                        text-align: justify;">
                                                        <div align="left" style="margin-top: 4px; margin-left: 19px">
                                                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                                                                ForeColor="#336699" Text="Login ID"></asp:Label>
                                                            <asp:Label ID="Label5" runat="server" Font-Size="Small" ForeColor="Red" Text="*"></asp:Label>
                                                            &nbsp;
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px; margin: 0px; vertical-align: top; border-spacing: 0px; border-collapse: collapse;
                                                        text-align: justify;">
                                                        <div align="left" style="margin-left: 19px">
                                                            <asp:TextBox ID="txtUserID" runat="server" Width="200px" CssClass="text"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUserID"
                                                                ErrorMessage="Enter user id" Font-Bold="True" CssClass="error"></asp:RequiredFieldValidator></div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px; margin: 0px; vertical-align: top; border-spacing: 0px; border-collapse: collapse;
                                                        text-align: justify;">
                                                        <div align="left" style="margin-left: 19px">
                                                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
                                                                ForeColor="#336699" Text="Password"></asp:Label>
                                                            <asp:Label ID="Label6" runat="server" Font-Size="Small" ForeColor="Red" Text="*"></asp:Label></div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px; margin: 0px; vertical-align: top; border-spacing: 0px; border-collapse: collapse;
                                                        text-align: justify;">
                                                        <div align="left" style="margin-left: 19px">
                                                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="200px" CssClass="text"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword"
                                                                ErrorMessage="Enter password" Font-Bold="True" CssClass="error"></asp:RequiredFieldValidator></div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px; margin: 0px; vertical-align: top; border-spacing: 0px; border-collapse: collapse;
                                                        text-align: justify;">
                                                        <div align="left" style="margin-left: 19px; margin-top: 3px;">
                                                            <asp:Button ID="btnLogin" runat="server" CssClass="buttons" Text="Login" OnClick="btnLogin_Click" />
                                                            &nbsp;
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0px; margin: 0px; vertical-align: top; border-spacing: 0px; border-collapse: collapse;
                                                        text-align: justify;">
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                    <td valign="top" style="width: 40%">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>