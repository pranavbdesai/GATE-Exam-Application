<%@ Page Title="" Language="C#" MasterPageFile="~/OuterMaster.master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-left: 36px">

        <table style="font-family: Tahoma; width: 693px;">
            <tr>
                <td colspan="2">
                    <h3 style="text-align: center; font-size: x-large;">:Forgot Password:</h3>
                </td>
            </tr>
            <tr>
                <td style="width: 260px; text-align: right; font-size: medium">Enter Your Registerd Email-ID:
                </td>
                <td>
                    <asp:TextBox ID="txtMail" runat="server" Height="17px" Width="341px" style="margin-left: 0px"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td colspan="2" align="right" style="text-align: center">
                    <asp:Button ID="btnPass" runat="server" Text="Submit"
                        OnClick="btnPass_Click" style="margin-left: 0px; font-size: large; font-weight: 700;" Height="39px" Width="97px" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Literal ID="ltrPass" runat="server"></asp:Literal>
                </td>
            </tr>
        </table>



    </div>
    <p style="font-size: medium; width: 928px; text-align: center">&nbsp;&nbsp;&nbsp; ------------------------</p>
    <div id="I1808_html"><marquee behavior="scroll" direction="left"><b><center>Developed By: PRANAV DESAI</center></b></marquee></div>
    
</asp:Content>

