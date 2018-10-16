<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Admin_show_Result.aspx.cs" Inherits="Admin_show_Result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table align="center">
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
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Result_id" 
                    DataSourceID="SqlDataSource1" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
                        </asp:CommandField>
                        <asp:BoundField DataField="Result_id" HeaderText="Result_id" 
                            InsertVisible="False" ReadOnly="True" SortExpression="Result_id" Visible="False">
                        </asp:BoundField>
                        <asp:BoundField DataField="TestId" HeaderText="TestId" 
                            SortExpression="TestId" Visible="False"></asp:BoundField>
                        <asp:BoundField DataField="User_id" HeaderText="User_id" 
                            SortExpression="User_id"></asp:BoundField>
                        <asp:BoundField DataField="QuestionId" HeaderText="QuestionId" 
                            SortExpression="QuestionId"></asp:BoundField>
                        <asp:BoundField DataField="AnswerId" HeaderText="AnswerId" 
                            SortExpression="AnswerId">
                        </asp:BoundField>
                        <asp:BoundField DataField="Result" HeaderText="Result" SortExpression="Result">
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <sortedascendingcellstyle backcolor="#FDF5AC" />
                    <sortedascendingheaderstyle backcolor="#4D0000" />
                    <sorteddescendingcellstyle backcolor="#FCF6C0" />
                    <sorteddescendingheaderstyle backcolor="#820000" />

<SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="Gray"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [Result_Master] WHERE [Result_id] = @original_Result_id" 
                    InsertCommand="INSERT INTO [Result_Master] ([TestId], [User_id], [QuestionId], [AnswerId], [Result]) VALUES (@TestId, @User_id, @QuestionId, @AnswerId, @Result)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [Result_Master]" 
                    
                    
                    UpdateCommand="UPDATE [Result_Master] SET [TestId] = @TestId, [User_id] = @User_id, [QuestionId] = @QuestionId, [AnswerId] = @AnswerId, [Result] = @Result WHERE [Result_id] = @original_Result_id" 
                    onselecting="SqlDataSource1_Selecting">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Result_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="TestId" Type="Int32" />
                        <asp:Parameter Name="User_id" Type="Int32" />
                        <asp:Parameter Name="QuestionId" Type="String" />
                        <asp:Parameter Name="AnswerId" Type="Int32" />
                        <asp:Parameter Name="Result" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TestId" Type="Int32" />
                        <asp:Parameter Name="User_id" Type="Int32" />
                        <asp:Parameter Name="QuestionId" Type="String" />
                        <asp:Parameter Name="AnswerId" Type="Int32" />
                        <asp:Parameter Name="Result" Type="String" />
                        <asp:Parameter Name="original_Result_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
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
</asp:Content>