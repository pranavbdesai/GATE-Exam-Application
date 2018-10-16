<%@ Page Title="" Language="C#" MasterPageFile="~/InnerMaster.master" AutoEventWireup="true" CodeFile="OnlineTest.aspx.cs" Inherits="OnlineTest" %>

<%@ Register Namespace="CodeControls" TagPrefix="cc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">




    <br />




    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <div style="width: 799px; margin-left: 87px">
                <table style="width: 100%;">
                    <tr>
                        <td class="style1" colspan="3">Online Examination System</td>
                    </tr>
                    <tr>
                        <td>Que:</td>
                        <td>
                            <asp:Label ID="lblQuestionNumber" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Ans:</td>
                        <td>
                            <asp:RadioButton ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" groupname="aa">
                            </asp:RadioButton>
                            <br />
                            <asp:RadioButton ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" groupname="aa">
                            </asp:RadioButton>
                            <br />
                            <asp:RadioButton ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal" groupname="aa">
                            </asp:RadioButton>
                            <br />
                            <asp:RadioButton ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal" groupname="aa">
                            </asp:RadioButton>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click"
                                Text="Next" />
                                <asp:Button ID="btnfinish" runat="server" Text="Finish" 
                                onclick="btnfinish_Click" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
    


    <table style="margin-left: 87px">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 281px">&nbsp;</td>
        </tr>
        <tr>
            <td>Your Time Limit :</td>
            <td>&nbsp;</td>
            <td style="width: 281px">

                <cc:Timer ID="Timer1" runat="server" DisableRightClick="True" DoPostBackOnTimeOut="True" Font-Bold="True"
                    Font-Names="Verdana" Font-Size="48px" ForeColor="#FF8000" Interval="5" IsAutoStart="True"
                    OnIntervalReached="Timer1_IntervalReached" OnTimeOutOccurred="Timer1_TimeOutOccurred"
                    ServerSideTimeSynchronize="False" TimeOut="1800"></cc:Timer>




            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 281px">&nbsp;</td>
        </tr>
    </table>


    <br /></div>
    </ContentTemplate>
    </asp:UpdatePanel>
    <p style="font-size: medium; width: 928px; text-align: center">&nbsp;&nbsp;&nbsp; ------------------------</p>
    <div id="I1808_html"><marquee behavior="scroll" direction="left"><b><center>Developed By: PRANAV DESAI</center></b></marquee></div>
    
</asp:Content>

