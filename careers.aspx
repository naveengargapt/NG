<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="careers.aspx.cs" Inherits="careers" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="center">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
                                                    Job Openings At Knowledge Point
                                                </h2>
                                            </div>
                                            <div style="width: 99%; display: inline-block; height: 2px; background-color: #da7c08;
                                                margin-right: 2px;">
                                            </div>
                                            <div style="display: inline-block; float: right; margin-top: 14px; margin-right: 5px">
                                                <asp:LinkButton ID="lnkUploadResume" runat="server" CssClass="applybtn" Text="Upload resume for future job(s)"
                                                    CausesValidation="False" OnClick="lnkUploadResume_Click"></asp:LinkButton>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                        border-spacing: 0px; list-style-image: url('Images/arrow_bullet.jpg');">
                                        <div align="left" style="margin: 4px 4px 4px 16px">
                                            <asp:DataList ID="dlJobs" runat="server">
                                                <ItemTemplate>
                                                    <div align="left" style="margin: 2px; padding: 3px; width: 908px">
                                                        <table cellspacing="1" style="width: 903px">
                                                            <tr>
                                                                <td>
                                                                    <div align="left" style="padding: 3px">
                                                                        <a href='jobdetails.aspx?job=<%#Eval("job_id") %>' target="_blank" class="footer_anchor"
                                                                            style="font-size: large; font-weight: bold; color: #003366">
                                                                            <%#Eval("title") %></a>&nbsp;<img src="Images/urgent icon.gif" alt="Urgent" />
                                                                    </div>
                                                                    <div style="width: 99%; display: inline-block; height: 2px; background-color: #da7c08;
                                                                        margin-right: 2px;">
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <div align="right">
                                                                        <a href='jobdetails.aspx?job=<%#Eval("job_id") %>' target="_blank" class="applybtn">
                                                                            View & Apply</a>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:DataList>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div style="display: none">
                                            <asp:Button ID="btnNone" runat="server" Text="None" /></div>
                                        <asp:ModalPopupExtender ID="mpeResume" runat="server" TargetControlID="btnNone" PopupControlID="panelResume">
                                        </asp:ModalPopupExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                        border-spacing: 0px; list-style-image: url('Images/arrow_bullet.jpg');">
                                        <asp:Panel ID="panelResume" runat="server">
                                            <div align="center" class="div-round" style="vertical-align: top; padding: 5px; margin: 4px;
                                                width: 100%; border-collapse: collapse; border-spacing: 0px; background-color: #808080;
                                                opacity: 0.95;">
                                                <div align="center" style="width: 90%; margin: 5px; padding: 10px; background-color: white;">
                                                    <div align="center" style="margin-top: -4px; padding: 4px; float: right">
                                                        <asp:ImageButton ID="btnCloseForms" runat="server" ImageUrl="~/Images/cross.png"
                                                            CausesValidation="false" ToolTip="Close" /></div>
                                                    <asp:Label ID="lblHeader" runat="server" CssClass="label-small-headings" Text="Upload Resume"></asp:Label><br />
                                                    <asp:Label ID="lblResult" runat="server" ForeColor="Red"></asp:Label><br />
                                                    <asp:Panel ID="panel2" runat="server">
                                                        <table style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;">
                                                            <tr>
                                                                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Specify email"
                                                                        ControlToValidate="tbEmail" CssClass="error"></asp:RequiredFieldValidator>
                                                                    &nbsp;
                                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid format of email"
                                                                        ControlToValidate="tbEmail" CssClass="error" 
                                                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                                    <br />
                                                                    <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="ValidateAttachment"
                                                                        ErrorMessage="Please select valid .doc or .docx file" CssClass="error"></asp:CustomValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;">
                                                                    <div align="center">
                                                                        <asp:Label ID="Label1" runat="server" Text="*" CssClass="error"></asp:Label>
                                                                        <asp:TextBox ID="tbEmail" runat="server" CssClass="text" Width="200px"></asp:TextBox>
                                                                        <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="tbEmail"
                                                                            WatermarkText="Specify your email">
                                                                        </asp:TextBoxWatermarkExtender>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;">
                                                                    <div align="center" style="margin-bottom: 9px">
                                                                        <asp:FileUpload ID="resumeUploader" runat="server" /></div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                    <asp:Button ID="btnUploadResume" runat="server" Text="Upload Resume" OnClick="btnUpdateFormsQty_Click"
                                                        ValidationGroup="forms" BackColor="#003C6A" BorderStyle="None" EnableTheming="False"
                                                        Font-Bold="True" Font-Names="Arial" ToolTip="Click to update" ForeColor="White"
                                                        Height="30px" /></div>
                                            </div>
                                        </asp:Panel>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
             <asp:UpdateProgress ID="progress" runat="server">
            <ProgressTemplate>
                <div class="Modal">
                    <span class="fixed"><span class="Update">
                        <asp:Image ID="imgLoading" runat="server" ImageUrl="~/Images/loading.gif" /></span></span></div>
            </ProgressTemplate>
        </asp:UpdateProgress>
    </div>
</asp:Content>