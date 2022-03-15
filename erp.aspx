<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="erp.aspx.cs" Inherits="erp" %>

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
                                    <asp:Image ID="imgAboutUs" runat="server" ImageUrl="~/Images/erp_icon_large_dcoresolutions.gif"
                                        CssClass="div-round" AlternateText="ERP Solutions" 
                                        ToolTip="ERP Solutions" />
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
                                border-spacing: 0px">
                                <div align="left" style="margin: 3px; padding: 3px">
                                    <div align="left">
                                        <h2 class="h2-font">
                                            ERP</h2>
                                    </div>
                                    <div style="width: 99%; display: inline-block; height: 2px; background-color: #da7c08;
                                        margin-right: 2px;">
                                    </div>
                                    <p class="para">
                                        Enterprise resource planning (ERP) systems integrate internal and external management
                                        information across an entire organization, embracing finance/accounting, manufacturing,
                                        sales and service, customer relationship management, etc. ERP systems automate this
                                        activity with an integrated software application. The purpose of ERP is to facilitate
                                        the flow of information between all business functions inside the boundaries of
                                        the organization and manage the connections to outside stakeholders.<br />
                                        <br />
                                        ERP systems can run on a variety of computer hardware and network configurations,
                                        typically employing a database as a repository for information. The transformation
                                        of ERP into a cloud-based model has been relatively slow, but as cloud computing
                                        makes other inroads into the enterprise environment some functionality is being
                                        moved to the cloud.
                                    </p>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                border-spacing: 0px; list-style-image: url('Images/arrow_bullet.jpg');">
                                <div align="left">
                                    <h2 class="h2-font">
                                        ERP (Enterprise Resource Planning) systems typically include the following characteristics:</h2>
                                </div>
                                <div style="width: 99%; display: inline-block; height: 2px; background-color: #da7c08;
                                    margin-right: 2px;">
                                </div>
                                <ul class="para">
                                    <li>An integrated system that operates in real time (or next to real time), without
                                        relying on periodic updates.</li><li>A common database, which supports all applications.</li><li>
                                            A consistent look and feel throughout each module. </li>
                                    <li>Installation of the system without elaborate application/data integration by the
                                        Information Technology (IT) department.</li>
                                </ul>
                                <div style="width: 99%; display: inline-block; height: 2px; background-color: #da7c08;
                                    margin-right: 2px;">
                                </div>
                                <p class="para">
                                    <b><span class="para">Finance/Accounting</span></b><br />
                                    General ledger, payables, cash management, fixed assets, receivables, budgeting,
                                    consolidation.<br />
                                    <br />
                                    <b><span class="para">Human resources</span></b><br />
                                    Payroll, training, benefits, 401K, recruiting, diversity management.<br />
                                    <br />
                                    <b><span class="para">Manufacturing</span></b><br />
                                    Engineering, bill of materials, work orders, scheduling, capacity, workflow management,
                                    quality control, cost management, manufacturing process, manufacturing projects,
                                    manufacturing flow, activity based costing, product life cycle management.<br />
                                    <br />
                                    <b><span class="para">Supply chain management</span></b><br />
                                    Order to cash, inventory, order entry, purchasing, product configurator, supply
                                    chain planning, supplier scheduling, inspection of goods, claim processing, commissions.<br />
                                    <br />
                                    <b><span class="para">Project management</span></b><br />
                                    Costing, billing, time and expense, performance units, activity management.<br />
                                    <br />
                                    <b><span class="para">Customer relationship management</span></b><br />
                                    Sales and marketing, commissions, service, customer contact, call center support.<br />
                                    <br />
                                    <b><span class="para">Data services </span></b>
                                    <br />
                                    Various "self–service" interfaces for customers, suppliers and/or employees.<br />
                                    <br />
                                    <b><span class="para">Access control</span></b><br />
                                    Management of user privileges for various processes
                                </p>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>