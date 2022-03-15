<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ourteam.aspx.cs" Inherits="ourteam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
    .style1
    {
        width: 264px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="center">
        <table cellspacing="1" style="vertical-align: top; padding: 0px; margin: 0px; width: 98%;
            border-collapse: collapse; border-spacing: 0px">
          
            <tr>
                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 98%; border-collapse: collapse;
                    border-spacing: 0px">
                    <div align="center">
                        <table cellspacing="1" style="vertical-align: top; padding: 0px; margin: 0px; width: 98%;
                            border-collapse: collapse; border-spacing: 0px">
                            <tr>
                                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                    border-spacing: 0px">
                                    <div align="center">
                                        <%--<asp:DataList ID="dlTeam" runat="server" RepeatColumns="2" RepeatDirection="Horizontal"
                                            Width="977px">
                                            <ItemTemplate>
                                                <div align="center">
                                                    <table cellspacing="1" style="vertical-align: top; padding: 0px; margin: 0px; border-collapse: collapse;
                                                        border-spacing: 0px; width: 311px;">
                                                        <tr>
                                                            <td style="vertical-align: top; padding: 0px; margin: 0px; border-collapse: collapse;
                                                                border-spacing: 0px">
                                                                <div align="center">
                                                                    <table cellspacing="1" style="vertical-align: top; padding: 0px; margin: 0px; border-collapse: collapse;
                                                                        border-spacing: 0px; text-align: left; width: 280px;">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 0px; margin: 0px; border-collapse: collapse;
                                                                                border-spacing: 0px" class="style1">
                                                                                <div align="left" style="margin: 2px 2px 2px 13px; width: 249px;">
                                                                                    <asp:Label ID="lblName" runat="server" Font-Bold="True" Font-Names="Rockwell" Font-Size="Small"
                                                                                        Text='<%# Eval("membername") %>'></asp:Label></div>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 0px; margin: 0px; border-collapse: collapse;
                                                                                border-spacing: 0px" class="style1">
                                                                                <div align="left" style="margin: 2px 2px 2px 13px">
                                                                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Rockwell" Font-Size="Small"
                                                                                        Text='<%# Eval("memberdesignation") %>' ForeColor="#FF3300"></asp:Label>
                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 0px; margin: 0px; border-collapse: collapse;
                                                                                border-spacing: 0px" class="style1">
                                                                                <div align="left" style="margin: 2px 2px 2px 13px">
                                                                                    <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="Rockwell" Font-Size="Small"
                                                                                        Text='<%# Eval("experience") %>'></asp:Label>
                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </ItemTemplate>
                                        </asp:DataList>--%>

                                        <asp:Image ID="imgChart" runat="server" 
                                            ImageUrl="~/Images/DCore-management.jpg" Width="1024px" />
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>