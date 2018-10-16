<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Result in Grade.aspx.cs" Inherits="Admin_Result_in_Grade" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
    <p align="center">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" 
        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
        CellPadding="2" DataKeyNames="Grade_id,Expr1" DataSourceID="SqlDataSource1" 
        ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Grade_id" HeaderText="Grade_id" 
                InsertVisible="False" ReadOnly="True" SortExpression="Grade_id" Visible="False" />
            <asp:BoundField DataField="TestId" HeaderText="TestId" 
                SortExpression="TestId" Visible="False" />
            <asp:BoundField DataField="User_id" HeaderText="User_id" 
                SortExpression="User_id" Visible="False" />
            <asp:BoundField DataField="User_name" HeaderText="User Name" 
                SortExpression="User_name" />
            <asp:BoundField DataField="TestName" HeaderText="Subject" SortExpression="TestName" />
            <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
            <asp:BoundField DataField="Expr1" HeaderText="Expr1" InsertVisible="False" ReadOnly="True" SortExpression="Expr1" Visible="False" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Result_Grade] WHERE [Grade_id] = @Grade_id" 
        InsertCommand="INSERT INTO [Result_Grade] ([TestId], [User_id], [User_name], [Grade]) VALUES (@TestId, @User_id, @User_name, @Grade)" 
        SelectCommand="SELECT Result_Grade.Grade_id, Result_Grade.TestId, Result_Grade.User_id, Result_Grade.User_name, Result_Grade.Grade, Test_Master.TestName, Test_Master.TestId AS Expr1 FROM Result_Grade INNER JOIN Test_Master ON Result_Grade.TestId = Test_Master.TestId" 
        
        UpdateCommand="UPDATE [Result_Grade] SET [TestId] = @TestId, [User_id] = @User_id, [User_name] = @User_name, [Grade] = @Grade WHERE [Grade_id] = @Grade_id">
        <DeleteParameters>
            <asp:Parameter Name="Grade_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TestId" Type="Int32" />
            <asp:Parameter Name="User_id" Type="Int32" />
            <asp:Parameter Name="User_name" Type="String" />
            <asp:Parameter Name="Grade" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TestId" Type="Int32" />
            <asp:Parameter Name="User_id" Type="Int32" />
            <asp:Parameter Name="User_name" Type="String" />
            <asp:Parameter Name="Grade" Type="String" />
            <asp:Parameter Name="Grade_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </p>
        </div>
    <p style="font-size: medium; width: 928px; text-align: center">&nbsp;&nbsp;&nbsp; ------------------------</p>
    <div id="I1808_html"><marquee behavior="scroll" direction="left"><b><center>Developed By: PRANAV DESAI</center></b></marquee></div>
    </asp:Content>

