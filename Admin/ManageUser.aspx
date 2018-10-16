<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageUser.aspx.cs" Inherits="Admin_ManageUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
           <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" DataKeyNames="User_id,Expr1" DataSourceID="SqlDataSource1" 
        ForeColor="Black">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="User_id" HeaderText="User_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="User_id" Visible="False"></asp:BoundField>
            <asp:BoundField DataField="User_name" HeaderText="User Name" 
                SortExpression="User_name"></asp:BoundField>
            <asp:BoundField DataField="Password" HeaderText="Password" 
                SortExpression="Password"></asp:BoundField>
            <asp:BoundField DataField="FullName" HeaderText="FullName" 
                SortExpression="FullName"></asp:BoundField>
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender">
            </asp:BoundField>
            <asp:BoundField DataField="BranchName" HeaderText="Branch Name" SortExpression="BranchName" />
            <asp:BoundField DataField="BranchId" HeaderText="BranchId" 
                SortExpression="BranchId" Visible="False"></asp:BoundField>
            <asp:BoundField DataField="Security_Question" HeaderText="Security Question" 
                SortExpression="Security_Question"></asp:BoundField>
            <asp:BoundField DataField="Answer" HeaderText="Answer" SortExpression="Answer">
            </asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email">
            </asp:BoundField>
            <asp:BoundField DataField="Expr1" HeaderText="Expr1" InsertVisible="False" ReadOnly="True" SortExpression="Expr1" Visible="False" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <sortedascendingcellstyle backcolor="#F1F1F1" />
        <sortedascendingheaderstyle backcolor="#808080" />
        <sorteddescendingcellstyle backcolor="#CAC9C9" />
        <sorteddescendingheaderstyle backcolor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [User_Master] WHERE [User_id] = @User_id" 
        InsertCommand="INSERT INTO [User_Master] ([User_name], [Password], [FullName], [Gender], [BranchId], [Security_Question], [Answer], [Email]) VALUES (@User_name, @Password, @FullName, @Gender, @BranchId, @Security_Question, @Answer, @Email)" 
        SelectCommand="SELECT User_Master.User_id, User_Master.User_name, User_Master.Password, User_Master.FullName, User_Master.Gender, User_Master.BranchId, User_Master.Security_Question, User_Master.Answer, User_Master.Email, Branch.BranchId AS Expr1, Branch.BranchName FROM User_Master INNER JOIN Branch ON User_Master.BranchId = Branch.BranchId" 
        UpdateCommand="UPDATE [User_Master] SET [User_name] = @User_name, [Password] = @Password, [FullName] = @FullName, [Gender] = @Gender, [BranchId] = @BranchId, [Security_Question] = @Security_Question, [Answer] = @Answer, [Email] = @Email WHERE [User_id] = @User_id">
        <DeleteParameters>
            <asp:Parameter Name="User_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="User_name" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="FullName" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="BranchId" Type="Int32" />
            <asp:Parameter Name="Security_Question" Type="String" />
            <asp:Parameter Name="Answer" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="User_name" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="FullName" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="BranchId" Type="Int32" />
            <asp:Parameter Name="Security_Question" Type="String" />
            <asp:Parameter Name="Answer" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="User_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <p style="font-size: medium; width: 928px; text-align: center">&nbsp;&nbsp;&nbsp; ------------------------</p>
    <div id="I1808_html"><marquee behavior="scroll" direction="left"><b><center>Developed By: PRANAV DESAI</center></b></marquee></div>
    </asp:Content>

