<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageTest.aspx.cs" Inherits="Admin_ManageTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="1" style="width:100%;">
        
        <tr>
            <td align="right" style="font-size: x-large; width: 358px">
                Enter Test Name:</td>
            <td>
                <asp:TextBox ID="txtTestName" runat="server"></asp:TextBox>
            </td>           
        </tr>
        <tr>
            <td style="width: 358px">
               </td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                    Text="Submit" style="font-size: x-large" />
            </td>
            
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" 
                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                    CellSpacing="2" DataKeyNames="TestId" DataSourceID="SqlDataSource1" 
                    ForeColor="Black">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
                        </asp:CommandField>
                        <asp:BoundField DataField="TestId" HeaderText="TestId" InsertVisible="False" 
                            ReadOnly="True" SortExpression="TestId" Visible="False"></asp:BoundField>
                        <asp:BoundField DataField="TestName" HeaderText="TestName" 
                            SortExpression="TestName"></asp:BoundField>
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
                    DeleteCommand="DELETE FROM [Test_Master] WHERE [TestId] = @TestId" 
                    InsertCommand="INSERT INTO [Test_Master] ([TestName]) VALUES (@TestName)" 
                    SelectCommand="SELECT * FROM [Test_Master]" 
                    UpdateCommand="UPDATE [Test_Master] SET [TestName] = @TestName WHERE [TestId] = @TestId">
                    <DeleteParameters>
                        <asp:Parameter Name="TestId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="TestName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TestName" Type="String" />
                        <asp:Parameter Name="TestId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
     <p style="font-size: medium; width: 928px; text-align: center">&nbsp;&nbsp;&nbsp; ------------------------</p>
    <div id="I1808_html"><marquee behavior="scroll" direction="left"><b><center>Developed By: PRANAV DESAI</center></b></marquee></div>
    
</asp:Content>

