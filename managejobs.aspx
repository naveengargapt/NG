<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="managejobs.aspx.cs" Inherits="managejobs" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .fixed
        {
            position: absolute;
            top: 20%;
            left: 50%;
        }
        .Update
        {
            position: absolute;
            top: -16px;
            left: -56px;
            width: 450px;
        }
        
        .Modal
        {
            position: absolute;
            top: 30%;
            left: 0px;
            width: 100%;
            height: 100%;
            z-index: 100;
            background-color: White;
            opacity: 0.85;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="center>"
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="panelUpdate" runat="server">
            <ContentTemplate>
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
                                                    Manage Already Added Jobs
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
                                        <div align="center" style="margin: 4px 4px 4px 16px; height: 333px; overflow: auto;
                                            vertical-align: top;">
                                            <asp:GridView ID="gvjobs" runat="server" AutoGenerateColumns="False" EnableModelValidation="True"
                                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                                                CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="672px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="Sr. No.">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label1" runat="server"><%#Container.DataItemIndex+1 %></asp:Label>
                                                        </ItemTemplate>
                                                        <ItemStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Job Title">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("title") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="lnkJobTitle" runat="server" CssClass="footer_anchor" Font-Size="Medium"
                                                                ForeColor="#CC0000" Text='<%# Bind("title") %>' CommandArgument='<%# Eval("job_id") %>'
                                                                CausesValidation="False" OnClick="lnkJobTitle_Click"></asp:LinkButton>
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="postedon" HeaderText="Posted On">
                                                        <ItemStyle ForeColor="#CC0000" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="status" HeaderText="Status">
                                                        <ItemStyle ForeColor="#CC0000" HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#FFCC66" />
                                                    </asp:BoundField>
                                                </Columns>
                                                <EmptyDataTemplate>
                                                    <span class="para">No job(s) have been added yet</span>
                                                </EmptyDataTemplate>
                                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                                <HeaderStyle BackColor="#FF572D" Font-Bold="True" Font-Names="Rockwell" Font-Size="Medium"
                                                    ForeColor="White" />
                                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                                <RowStyle Font-Names="Rockwell" />
                                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                            </asp:GridView>
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
                                                    <asp:Label ID="lblResult" runat="server" Font-Bold="True" Font-Names="Rockwell" Font-Size="Medium"></asp:Label></div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                        border-spacing: 0px; list-style-image: url('Images/arrow_bullet.jpg');">
                                        <div align="left" style="margin: 4px 4px 4px 16px">
                                            <asp:TextBox ID="tbJobTitle" runat="server" CssClass="text" Width="800px" Enabled="False"></asp:TextBox>
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
                                            <asp:TextBox ID="tbNumber" runat="server" CssClass="text" Width="50px" Enabled="False"></asp:TextBox>
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
                                            <cc1:Editor ID="EditorDescription" runat="server" Height="200px" Width="800px" />
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                        border-spacing: 0px; list-style-image: url('Images/arrow_bullet.jpg');">
                                        <div align="left" style="margin: 4px 4px 4px 16px">
                                            <asp:Label ID="Label5" runat="server" CssClass="label-small-headings" Text="Required Profile"></asp:Label>
                                            &nbsp;<asp:Label ID="Label6" runat="server" CssClass="error" Text="*"></asp:Label>
                                            &nbsp;<asp:RequiredFieldValidator ID="rfvProfile" runat="server" ControlToValidate="editroCandidateProfile"
                                                CssClass="error" ErrorMessage="Specify required candidate profile"></asp:RequiredFieldValidator>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                        border-spacing: 0px; list-style-image: url('Images/arrow_bullet.jpg');">
                                        <div align="left" style="margin: 4px 4px 4px 16px">
                                            <cc1:Editor ID="editroCandidateProfile" runat="server" Height="200px" Width="800px" />
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                        border-spacing: 0px; list-style-image: url('Images/arrow_bullet.jpg');">
                                        <div align="left" style="margin: 4px 4px 4px 16px">
                                            <asp:Label ID="Label7" runat="server" CssClass="label-small-headings" Text="Status"></asp:Label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                        border-spacing: 0px; list-style-image: url('Images/arrow_bullet.jpg');">
                                        <div align="left" style="margin: 4px 4px 4px 16px">
                                            <asp:DropDownList ID="ddlStatus" runat="server" Enabled="False">
                                                <asp:ListItem>Open</asp:ListItem>
                                                <asp:ListItem>Closed</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                        border-spacing: 0px; list-style-image: url('Images/arrow_bullet.jpg');">
                                        <div align="left" style="margin: 4px 4px 4px 16px">
                                            <asp:Button ID="btnSave" runat="server" CssClass="applybtn" Text="Save Job" BorderStyle="None"
                                                OnClick="btnSave_Click" Enabled="False" />
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="progress" runat="server">
            <ProgressTemplate>
                <div class="Modal">
                    <span class="fixed"><span class="Update">
                        <asp:Image ID="imgLoading" runat="server" ImageUrl="~/Images/loading.gif" /></span></span></div>
            </ProgressTemplate>
        </asp:UpdateProgress>
    </div>
</asp:Content>