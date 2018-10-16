<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="timer.aspx.cs" Inherits="timer" %>
 <%@ Register Namespace="CodeControls" TagPrefix="cc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

    <br />
    <br />
    <br />

<cc:Timer ID="Timer1" runat="server" DisableRightClick="True" DoPostBackOnTimeOut="True" Font-Bold="True" 
     Font-Names="Verdana" Font-Size="48px" ForeColor="#FF8000" Interval="5" IsAutoStart="True" 
     OnIntervalReached="Timer1_IntervalReached" OnTimeOutOccurred="Timer1_TimeOutOccurred" 
     ServerSideTimeSynchronize="False" TimeOut=10  ></cc:Timer>




    <br />
    <br />


</asp:Content>

