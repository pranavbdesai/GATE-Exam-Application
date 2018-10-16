<%@ Page Title="" Language="C#" MasterPageFile="~/InnerMaster.master" AutoEventWireup="true" CodeFile="SelectTest.aspx.cs" Inherits="SelectTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 709px; margin-left: 0px">
    <p style="text-align: justify">
        <span style="font-size: medium; color: #CC3300"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome</strong></span> :<asp:Label ID="lblUser" runat="server" style="font-size: medium; font-weight: 700; font-style: italic; text-decoration: underline; color: #FF00FF; text-align: center; background-color: #FFFFFF"></asp:Label>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <div>
            <span style="font-size: medium"><strong style="text-align: left">Select Subject for the Test:&nbsp;</strong></span>
        </div>
            <p>
                &nbsp;</p>
       <div align=center>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
            AutoPostBack="True" style="font-size: medium; margin-left: 46px">
        </asp:RadioButtonList>
        </div>
    </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" style="font-size: x-large">Click Here To Start The Test</asp:LinkButton>
    </p>
    <p>
        <asp:Label ID="lblMsg" runat="server" style="font-size: medium; text-align: center"></asp:Label>
    </p>
</div>
    <p style="font-size: medium; width: 928px; text-align: center">&nbsp;&nbsp;&nbsp; ------------------------</p>
    <div id="I1808_html"><marquee behavior="scroll" direction="left"><b><center>Developed By: PRANAV DESAI</center></b></marquee></div>
    
</asp:Content>

