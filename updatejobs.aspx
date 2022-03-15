<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="updatejobs.aspx.cs" Inherits="updatejobs" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <div align="center">
        <table style="vertical-align: top; width: 1020px;">
            <tr>
                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 77%; border-collapse: collapse;
                    border-spacing: 0px">
                    <table cellspacing="1" style="vertical-align: top; padding: 0px; margin: 0px; width: 100%;
                        border-collapse: collapse; border-spacing: 0px">
                        <tr>
                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                border-spacing: 0px; list-style-image: url('Images/arrow_bullet.jpg');">
                                <div align="left" style="margin: 3px; padding: 3px">
                                    <div align="left">
                                        <h2 class="h2-font">
                                            Add New Job
                                        </h2>
                                    </div>
                                    <div style="width: 99%; display: inline-block; height: 2px; background-color: #da7c08;
                                        margin-right: 2px;">
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                border-spacing: 0px; list-style-image: url('Images/arrow_bullet.jpg');">
                                <div align="left" style="margin: 4px 4px 4px 16px">
                                    <asp:Label ID="Label1" runat="server" CssClass="label-small-headings" Text="Job Title"></asp:Label>
                                    &nbsp;<asp:Label ID="Label2" runat="server" CssClass="error" Text="*"></asp:Label>
                                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbJobTitle"
                                        CssClass="error" ErrorMessage="Specify job title"></asp:RequiredFieldValidator><div
                                            style="float: right; padding: 3px; margin-right: 5px">
                                            <asp:Label ID="lblResult" runat="server" Font-Bold="True" Font-Names="Rockwell" 
                                                Font-Size="Medium"></asp:Label></div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                border-spacing: 0px; list-style-image: url('Images/arrow_bullet.jpg');">
                                <div align="left" style="margin: 4px 4px 4px 16px">
                                    <asp:TextBox ID="tbJobTitle" runat="server" CssClass="text" Width="800px"></asp:TextBox>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                border-spacing: 0px; list-style-image: url('Images/arrow_bullet.jpg');">
                                <div align="left" style="margin: 4px 4px 4px 16px">
                                    <asp:Label ID="Label4" runat="server" CssClass="label-small-headings" Text="No. Of Openings"></asp:Label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                border-spacing: 0px; list-style-image: url('Images/arrow_bullet.jpg');">
                                <div align="left" style="margin: 4px 4px 4px 16px">
                                    <asp:TextBox ID="tbNumber" runat="server" CssClass="text" Width="50px"></asp:TextBox>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                border-spacing: 0px; list-style-image: url('Images/arrow_bullet.jpg');">
                                <div align="left" style="margin: 4px 4px 4px 16px">
                                    <asp:Label ID="Label3" runat="server" CssClass="label-small-headings" Text="Job Description"></asp:Label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                border-spacing: 0px; list-style-image: url('Images/arrow_bullet.jpg');">
                                <div align="left" style="margin: 4px 4px 4px 16px">
                                    <cc1:Editor ID="tbJobDescription" runat="server" Height="200px" Width="800px" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                border-spacing: 0px; list-style-image: url('Images/arrow_bullet.jpg');">
                                <div align="left" style="margin: 4px 4px 4px 16px">
                                    <asp:Label ID="Label5" runat="server" CssClass="label-small-headings" Text="Required Profile"></asp:Label>
                                    &nbsp;<asp:Label ID="Label6" runat="server" CssClass="error" Text="*"></asp:Label>
                                    &nbsp;<asp:RequiredFieldValidator ID="rfvProfile" runat="server" ControlToValidate="tbJobTitle"
                                        CssClass="error" ErrorMessage="Specify required candidate profile"></asp:RequiredFieldValidator>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                border-spacing: 0px; list-style-image: url('Images/arrow_bullet.jpg');">
                                <div align="left" style="margin: 4px 4px 4px 16px">
                                    <cc1:Editor ID="tbRequiredProfile" runat="server" Height="200px" 
                                        Width="800px" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                border-spacing: 0px; list-style-image: url('Images/arrow_bullet.jpg');">
                                <div align="left" style="margin: 4px 4px 4px 16px">
                                    <asp:Button ID="btnSave" runat="server" CssClass="applybtn" Text="Save Job" BorderStyle="None"
                                        OnClick="btnSave_Click" />
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>