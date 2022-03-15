<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="testing.aspx.cs" Inherits="testing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="center" style="margin: 2px">
        <table style="vertical-align: top; width: 1020px;">
            <tr>
                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 23%; border-collapse: collapse;
                    border-spacing: 0px">
                    <table cellspacing="1" style="vertical-align: top; padding: 0px; margin: 0px; width: 100%;
                        border-collapse: collapse; border-spacing: 0px">
                        <tr>
                            <td style="vertical-align: top">
                                <div align="left" style="width: 217px; margin-right: 2px; margin-top: 4px; margin-bottom: 7px;
                                    margin-left: 22px">
                                    <asp:Image ID="imgAboutUs" runat="server" ImageUrl="~/Images/testing bug.gif" CssClass="div-round"
                                        AlternateText="Software Testing" ToolTip="Testing Bug" />
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
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
                                            Software Testing</h2>
                                    </div>
                                    <div style="width: 99%; display: inline-block; height: 2px; background-color: #da7c08;
                                        margin-right: 2px;">
                                    </div>
                                    <p class="para">
                                        <b><span class="para">Software testing</span></b> is an investigation conducted
                                        to provide stakeholders with information about the quality of the product or service
                                        under test.Software testing can also provide an objective, independent view of the
                                        software to allow the business to appreciate and understand the risks of software
                                        implementation. Test techniques include, but are not limited to, the process of
                                        executing a program or application with the intent of finding software bugs (errors
                                        or other defects).<br />
                                        <br />
                                        Software testing can be stated as the process of validating and verifying that a
                                        software program/application/product:</p>
                                    <ul class="para">
                                        <li>meets the requirements that guided its design and development;</li><li>works as
                                            expected;</li><li>can be implemented with the same characteristics;</li><li>satisfies
                                                the needs of stakeholders.</li>
                                    </ul>
                                    <p class="para">
                                        Software testing, depending on the testing method employed, can be implemented at
                                        any time in the development process. Traditionally most of the test effort occurs
                                        after the requirements have been defined and the coding process has been completed,
                                        but in the agile approaches most of the test effort is on-going. As such, the methodology
                                        of the test is governed by the chosen software development methodology.<br />
                                        <br />
                                        Different software development models will focus the test effort at different points
                                        in the development process. Newer development models, such as Agile, often employ
                                        test driven development and place an increased portion of the testing in the hands
                                        of the developer, before it reaches a formal team of testers. In a more traditional
                                        model, most of the test execution occurs after the requirements have been defined
                                        and the coding process has been completed.
                                    </p>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                border-spacing: 0px; list-style-image: url('Images/arrow_bullet.jpg');">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>