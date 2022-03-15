<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Registration_Report.aspx.cs" Inherits="Registration_Report" %>
    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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
                    <table cellspacing="1" style="vertical-align: top; padding: 0px; margin: 0px; width: 80%;
                        border-collapse: collapse; border-spacing: 0px">
                        <tr>
                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                border-spacing: 0px; list-style-image: url('Images/arrow_bullet.jpg');" colspan="5">
                                <div align="left" style="margin: 3px; padding: 3px">
                                    <div align="left">
                                        <h2 class="h2-font">
                                            Registration Report
                                        </h2>
                                    </div>
                                    <div style="width: 99%; display: inline-block; height: 2px; background-color: #da7c08;
                                        margin-right: 2px;">
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Lbldatefrom" runat="server" Text="Date From"></asp:Label>

                            </td>
                               <td>
                                <asp:TextBox ID="Txtfrom" runat="server"></asp:TextBox>
                                      <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="Txtfrom"
                                    Format="MM/dd/yyyy">
                                </asp:CalendarExtender>
                            </td>
                            <td>
                                <asp:Label ID="Lbldateto" runat="server" Text="Date To"></asp:Label>
                            </td>
                              <td>
                                <asp:TextBox ID="Txtto" runat="server"></asp:TextBox>
                                    <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="Txtto"
                                    Format="MM/dd/yyyy">
                                </asp:CalendarExtender>
                            </td>
                           
                            <td>
                                <asp:Button ID="Btnshow" runat="server" Text="Show" onclick="Btnshow_Click" />
                            </td>
                        </tr>
                        <tr>
                        <td></td>
                        </tr>
                        <tr>
                            <td colspan="5" align="center">
                                <asp:GridView ID="Grdreport" runat="server" AutoGenerateColumns="False" 
                                    EnableModelValidation="True">
                                    <Columns>
                                      <asp:TemplateField HeaderText="SrNo">
                                        <ItemTemplate>
                                            <div align="center">
                                                <asp:Label ID="Label1" runat="server"><%#Container.DataItemIndex+1 %></asp:Label>
                                            </div>
                                        </ItemTemplate>
                                        <ItemStyle Width="5px" />
                                    </asp:TemplateField>
                                        <asp:BoundField DataField="branch" HeaderText="Branch" />
                                        <asp:BoundField DataField="Course" HeaderText="Course" />
                                        <asp:BoundField DataField="name" HeaderText="Name" />
                                        <asp:BoundField DataField="phone" HeaderText="Contact No" />
                                        <asp:BoundField DataField="date" DataFormatString="{0:dd-MMM-yyyy}" 
                                            HeaderText="Date" />
                                    </Columns>
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
