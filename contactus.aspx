<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="center">
        <table style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
            border-spacing: 0px">
            <tr>
                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 50%; border-collapse: collapse;
                    border-spacing: 0px">
                    <table cellspacing="1" style="vertical-align: top; padding: 0px; margin: 0px; width: 100%;
                        border-collapse: collapse; border-spacing: 0px">
                        <tr>
                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                border-spacing: 0px">
                                <div align="left" style="margin-left: 10px; margin-top: 20px">
                                    <h2 class="h2-font">
                                        Contact Us</h2>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                border-spacing: 0px">
                                <div align="left" style="margin-left: 10px">
                                    <table style="vertical-align: top; width: 100%">
                                        <tr>
                                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                                border-spacing: 0px">
                                                <div align="left" style="margin-left: 10px; margin-top: 10px">
                                                    <asp:Label ID="lblName" runat="server" Text="Your Name" CssClass="label-small-headings"></asp:Label>
                                                    <span class="error">*</span>&nbsp;
                                                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="tbName"
                                                        CssClass="error" ErrorMessage="Specify your name"></asp:RequiredFieldValidator>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                                border-spacing: 0px">
                                                <div align="left" style="margin-left: 10px; margin-top: 1px">
                                                    <asp:TextBox ID="tbName" runat="server" CssClass="text" Width="300px"></asp:TextBox>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                                border-spacing: 0px">
                                                <div align="left" style="margin-left: 10px; margin-top: 10px">
                                                    <asp:Label ID="Label1" runat="server" Text="Your Organization" CssClass="label-small-headings"></asp:Label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                                border-spacing: 0px">
                                                <div align="left" style="margin-left: 10px; margin-top: 1px">
                                                    <asp:TextBox ID="tbOrganization" runat="server" CssClass="text" Width="300px"></asp:TextBox>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                                border-spacing: 0px">
                                                <div align="left" style="margin-left: 10px; margin-top: 10px">
                                                    <asp:Label ID="Label2" runat="server" Text="Your Email" CssClass="label-small-headings"></asp:Label><span
                                                        class="error">*</span> &nbsp;<asp:RequiredFieldValidator ID="rfvMail" runat="server"
                                                            ControlToValidate="tbMail" CssClass="error" ErrorMessage="Specify your email"></asp:RequiredFieldValidator>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                                border-spacing: 0px">
                                                <div align="left" style="margin-left: 10px; margin-top: 1px">
                                                    <asp:TextBox ID="tbMail" runat="server" CssClass="text" Width="300px"></asp:TextBox>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                                border-spacing: 0px">
                                                <div align="left" style="margin-left: 10px; margin-top: 10px">
                                                    <asp:Label ID="Label3" runat="server" Text="Your Contact No." CssClass="label-small-headings"></asp:Label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                                border-spacing: 0px">
                                                <div align="left" style="margin-left: 10px; margin-top: 1px">
                                                    <asp:TextBox ID="tbContactNumber" runat="server" CssClass="text" Width="300px"></asp:TextBox>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                                border-spacing: 0px">
                                                <div align="left" style="margin-left: 10px; margin-top: 10px">
                                                    <asp:Label ID="Label4" runat="server" Text="Your Message" CssClass="label-small-headings"></asp:Label><span
                                                        class="error">*</span>&nbsp;
                                                    <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ControlToValidate="tbMessage"
                                                        CssClass="error" ErrorMessage="Specify your message"></asp:RequiredFieldValidator>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                                border-spacing: 0px">
                                                <div align="left" style="margin-left: 10px; margin-top: 1px">
                                                    <asp:TextBox ID="tbMessage" runat="server" CssClass="text" Width="300px" Height="100px"
                                                        TextMode="MultiLine"></asp:TextBox>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                                border-spacing: 0px">
                                                <div align="left" style="margin-left: 10px; margin-top: 1px">
                                                    <asp:ImageButton ID="btnSend" runat="server" AlternateText="Send" ImageUrl="~/Images/send_button_icon_dcore_solutions.png"/>
                                                    <asp:Label ID="lblResult" runat="server" CssClass="error"></asp:Label>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 50%; border-collapse: collapse;
                    border-spacing: 0px">
                    <div align="left">
                        <table cellspacing="1" style="vertical-align: top; padding: 0px; margin: 0px; width: 100%;
                            border-collapse: collapse; border-spacing: 0px">
                            <tr>
                                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                    border-spacing: 0px">
                                    <div align="left" style="margin-left: 10px; margin-top: 20px">
                                        <h2 class="h2-font">
                                            Get Help & Support</h2>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                    border-spacing: 0px">
                                    <div align="left" style="margin-left: 10px; margin-top: 2px">
                                        <table style="vertical-align: top; width: 100%">
                                            <tr>
                                                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                                    border-spacing: 0px">
                                                    <div align="left" style="margin-left: 10px; margin-top: 0px">
                                                        <p class="para" style="float: left; height: 62px;">
                                                            For support or assistance from us<asp:Image ID="imgSupport" runat="server" Style="float: right;
                                                                margin-left: 20px; margin-right: 75px" ImageUrl="~/Images/life-saver.png" />
                                                            mail us at support@knowledgepoint.net.in or send your query to us by filling the form
                                                            on the left.</p>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                                    border-spacing: 0px">
                                                    <div align="left" style="margin-left: 10px; margin-top: 1px; margin-bottom: 12px;">
                                                        <h2 class="h2-font">
                                                            Street Address</h2>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                                    border-spacing: 0px">
                                                    <div align="left" style="margin-left: 10px; margin-top: 1px">
                                                        <p class="para">
                                                            Knowledge Point<br />
                                                            Janta Colony,Near Naam Dev Mandir,
                                                            <br />
                                                            Rohtak-124001<br />
                                                            Haryana, India</p>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                                    border-spacing: 0px">
                                                    <div align="left" style="margin-left: 10px; margin-top: 1px; margin-bottom: 12px;">
                                                        <h2 class="h2-font">
                                                            Contact Numbers</h2>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                                    border-spacing: 0px">
                                                    <div align="left" style="margin-left: 10px; margin-top: 1px">
                                                        <span class="para">+91-946 677 8852<br />                                                            
                                                            +91 989 666 8009 </span>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
</asp:Content>
