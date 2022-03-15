<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jobdetails.aspx.cs" Inherits="joobdetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" type="text/css" href="menu.css" />
    <script language="javascript" type="text/javascript">
        function ValidateAttachment(Source, args) {
            var UploadControl = document.getElementById('<%= resumeUploader.ClientID %>');

            var FilePath = UploadControl.value;

            if (FilePath == '') {
                args.IsValid = false; //No file found
            }
            else {
                var Extension = FilePath.substring(FilePath.lastIndexOf('.') + 1).toLowerCase();

                if (Extension == "doc" || Extension == "docx") {
                    args.IsValid = true; // Valid file type
                }
                else {
                    args.IsValid = false; // Not valid file type
                }
            }
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table style="vertical-align: top; padding: 0px; margin: 0px; width: 1024px; border-collapse: collapse;
            border-spacing: 0px">
            <tr>
                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 1024px; border-collapse: collapse;
                    border-spacing: 0px">
                    <div align="center">
                        <asp:DataList ID="dlJobDetail" runat="server" BorderColor="Black" BorderStyle="Solid"
                            BorderWidth="1px">
                            <ItemTemplate>
                                <table cellspacing="1" style="vertical-align: top; padding: 0px; margin: 0px; width: 1024px;
                                    border-collapse: collapse; border-spacing: 0px">
                                    <tr>
                                        <td style="vertical-align: top; padding: 0px; margin: 0px; width: 1024px; border-collapse: collapse;
                                            border-spacing: 0px">
                                            <div align="center">
                                                <asp:Label ID="lblTitle" runat="server" ForeColor="#003366" Font-Bold="True" Font-Size="Large"
                                                    Font-Names="Rockwell" Text='<%# Eval("title") %>'></asp:Label></div>
                                            <div align="center">
                                                <asp:Label ID="lblOpenings" runat="server" Font-Bold="true" Text='<%#Eval("numofvacancies") %>'></asp:Label>&nbsp;<asp:Label
                                                    ID="Label3" runat="server" Font-Bold="true" Style="float: right; margin: 2px"
                                                    Text='<%#Eval("postedon") %>'></asp:Label></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: top; padding: 0px; margin: 0px; width: 1024px; border-collapse: collapse;
                                            border-spacing: 0px">
                                            <div align="left" style="margin: 3px; padding: 2px">
                                                <asp:Label ID="Label1" runat="server" ForeColor="#003366" Font-Bold="False" Font-Size="Medium"
                                                    Font-Names="Rockwell" Text="Job Description"></asp:Label></div>
                                            <div style="width: 99%; display: inline-block; height: 2px; background-color: #da7c08;
                                                margin-right: 2px;">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: top; padding: 0px; margin: 0px; width: 1024px; border-collapse: collapse;
                                            border-spacing: 0px">
                                            <div align="left" style="margin: 3px; padding: 2px">
                                                <asp:Label ID="Label5" runat="server" ForeColor="black" Font-Bold="False" Font-Size="small"
                                                    Font-Names="verdana" Text='<%#Eval("description") %>'></asp:Label></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: top; padding: 0px; margin: 0px; width: 1024px; border-collapse: collapse;
                                            border-spacing: 0px">
                                            <div align="left" style="margin: 3px; padding: 2px">
                                                <asp:Label ID="Label2" runat="server" ForeColor="#003366" Font-Bold="False" Font-Size="Medium"
                                                    Font-Names="Rockwell" Text="Desired Candidate Profile"></asp:Label></div>
                                            <div style="width: 99%; display: inline-block; height: 2px; background-color: #da7c08;
                                                margin-right: 2px;">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: top; padding: 0px; margin: 0px; width: 1024px; border-collapse: collapse;
                                            border-spacing: 0px">
                                            <div align="left" style="margin: 3px; padding: 2px">
                                                <asp:Label ID="Label4" runat="server" ForeColor="black" Font-Bold="False" Font-Size="small"
                                                    Font-Names="verdana" Text='<%#Eval("desiredprofile") %>'></asp:Label></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: top; padding: 0px; margin: 0px; width: 1024px; border-collapse: collapse;
                                            border-spacing: 0px">
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 1024px; border-collapse: collapse;
                    border-spacing: 0px">
                    <div align="left" style="margin: 18px 3px 3px 3px; padding: 2px">
                        <asp:Label ID="Label7" runat="server" ForeColor="#003366" Font-Bold="False" Font-Size="Medium"
                            Font-Names="Rockwell" Text="Your email"></asp:Label>
                        <asp:Label ID="Label8" runat="server" CssClass="error" Text="*"></asp:Label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbMail"
                            CssClass="error" ErrorMessage="Specify your email"></asp:RequiredFieldValidator>
                        &nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbMail"
                            CssClass="error" ErrorMessage="Invalid format of email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 1024px; border-collapse: collapse;
                    border-spacing: 0px">
                    <div align="left" style="margin: 5px 3px 3px 14px; padding: 2px">
                        <asp:TextBox ID="tbMail" runat="server" Width="200px"></asp:TextBox>
                    </div>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 1024px; border-collapse: collapse;
                    border-spacing: 0px">
                    <div align="left" style="margin: 11px 3px 3px 3px; padding: 2px">
                        <asp:Label ID="Label1" runat="server" ForeColor="#003366" Font-Bold="False" Font-Size="Medium"
                            Font-Names="Rockwell" Text="Attach Resume (.doc, .docx)"></asp:Label>
                        <asp:Label ID="Label6" runat="server" CssClass="error" Text="*"></asp:Label>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="resumeUploader"
                            CssClass="error" ErrorMessage="Attach resume"></asp:RequiredFieldValidator>
                        &nbsp;<asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="ValidateAttachment"
                            ErrorMessage="Please select valid .doc or .docx file" CssClass="error"></asp:CustomValidator>
                    </div>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 1024px; border-collapse: collapse;
                    border-spacing: 0px">
                    <div align="left" style="margin: 3px 3px 10px 14px; padding: 2px; height: 28px;">
                        <asp:FileUpload ID="resumeUploader" runat="server" />
                    </div>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 1024px; border-collapse: collapse;
                    border-spacing: 0px">
                    <div align="left" style="margin: 0px 3px 2px 3px; padding: 1px;">
                        <asp:Label ID="lblResult" runat="server" ForeColor="#003366" Font-Bold="False" Font-Size="Medium"
                            Font-Names="Rockwell"></asp:Label>
                    </div>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 1024px; border-collapse: collapse;
                    border-spacing: 0px">
                    <div align="left" style="margin: 8px 3px 10px 3px; padding: 2px; height: 28px;">
                        <asp:LinkButton ID="btnApply" runat="server" CssClass="applybtn" Text="Apply" OnClick="btnApply_Click"></asp:LinkButton>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>