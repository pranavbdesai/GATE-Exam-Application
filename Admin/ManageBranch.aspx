<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageBranch.aspx.cs" Inherits="Admin_ManageBranch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table border="1" style="width: 100%;">

        <tr>
            <td align="right" style="font-size: x-large">Enter Branch:</td>
            <td>
                <asp:TextBox ID="txtBranch" runat="server" Width="170px"></asp:TextBox>
            </td>

        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click"
                    Text="Submit" style="font-size: x-large" />
            </td>

        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC"
                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4"
                    CellSpacing="2" DataKeyNames="BranchId" DataSourceID="SqlDataSource1"
                    ForeColor="Black">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
                        <asp:BoundField DataField="BranchId" HeaderText="BranchId"
                            InsertVisible="False" ReadOnly="True" SortExpression="BranchId" Visible="False"></asp:BoundField>
                        <asp:BoundField DataField="BranchName" HeaderText="BranchName"
                            SortExpression="BranchName"></asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    DeleteCommand="DELETE FROM [Branch] WHERE [BranchId] = @BranchId"
                    InsertCommand="INSERT INTO [Branch] ([BranchName]) VALUES (@BranchName)"
                    SelectCommand="SELECT * FROM [Branch]"
                    UpdateCommand="UPDATE [Branch] SET [BranchName] = @BranchName WHERE [BranchId] = @BranchId">
                    <DeleteParameters>
                        <asp:Parameter Name="BranchId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="BranchName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="BranchName" Type="String" />
                        <asp:Parameter Name="BranchId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
     <p style="font-size: medium; width: 928px; text-align: center">&nbsp;&nbsp;&nbsp; ------------------------</p>
    <div id="I1808_html"><marquee behavior="scroll" direction="left"><b><center>Developed By: PRANAV DESAI </center></b></marquee>
</div>
    
</asp:Content>

