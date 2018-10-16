<%@ Page Title="" Language="C#" MasterPageFile="~/InnerMaster.master" AutoEventWireup="true" CodeFile="Exam.aspx.cs" Inherits="Exam" %>

<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   <%-- <table><td style="width: 444px; font-size: large;" align="right">Enter any random number </td>
                                <td>:
                                </td>
                                <td style="font-weight: bold; width: 539px;">
                                    <asp:TextBox ID="rndnum" runat="server" Height="16px" Width="179px" TabIndex="0"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1"
                                        runat="server"
                                        TargetControlID="rndnum"
                                        WatermarkCssClass="watermark"
                                        WatermarkText="Enter Rondom number">
                                    </asp:TextBoxWatermarkExtender>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rndnum"
                                        ErrorMessage="Number is required." ToolTip="Number is required." ValidationGroup="null">Number is required.</asp:RequiredFieldValidator>
                                </td></table>--%>
    <div align="center"><span style="font-size: large"><a href="SelectTest.aspx" align="center" >1.Subject Wise Exam</a></span><br /></div>
    <br />
    <br />
    <div align="center"><span style="font-size: large"><a href="OnlineTest_paper.aspx" align="center" >2.Mock Test Paper</a></span><br /></div>
</asp:Content>


