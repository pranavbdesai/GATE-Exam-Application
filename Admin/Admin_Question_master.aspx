<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Admin_Question_master.aspx.cs" Inherits="Admin_Question_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p>
        <br />
        <table align="center">
            <tr>
                <td align="center" colspan="3" style="font-size: x-large; height: 44px;">Question Master</td>
            </tr>

            <tr>
                <td align="right" style="font-size: large">Subject</td>
                <td>:</td>
                <td>
                    <asp:DropDownList ID="ddlSubject" runat="server" OnSelectedIndexChanged="ddlSubject_SelectedIndexChanged"></asp:DropDownList>
                    <br />
                </td>
            </tr>
            <%-- <tr>
                <td>Question Number</td>
                <td>:</td>
                <td>
                    
                </td>
            </tr>--%>
            
            <tr>
                <td align="right" style="font-size: large">Question</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txtQueName" runat="server" Width="512px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtQueName"
                                ErrorMessage="Question is required." ToolTip="Question is required." 
                                ValidationGroup="null">Question is required.</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" style="font-size: large">Answer A</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txtAnsA" runat="server" Width="276px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAnsA"
                            ErrorMessage="Answer A is Empty" ToolTip="Answer A is Empty"
                            ValidationGroup="null">Answer A is Empty</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" style="font-size: large">Answer B</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txtAnsB" runat="server" Width="273px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAnsB"
                            ErrorMessage="Answer B is Empty" ToolTip="Answer B is Empty"
                            ValidationGroup="null">Answer B is Empty</asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td align="right" style="font-size: large">Answer C</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txtAnsC" runat="server" Width="271px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAnsC"
                            ErrorMessage="Answer C is Empty" ToolTip="Answer C is Empty"
                            ValidationGroup="null">Answer C is Empty</asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td align="right" style="font-size: large">Answer D</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txtAnsD" runat="server" Width="269px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAnsD"
                            ErrorMessage="Answer D is Empty" ToolTip="Answer D is Empty"
                            ValidationGroup="null">Answer D is Empty</asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td align="right" style="font-size: large">Right Answer</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txtRightAns" runat="server" Width="267px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtRightAns"
                            ErrorMessage="RightAnswer is Empty" ToolTip="RightAnswer is Empty"
                            ValidationGroup="null">RightAnswer is Empty</asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td><asp:TextBox ID="txtQueNum" runat="server" Visible="False"></asp:TextBox></td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit"
                        OnClick="btnSubmit_Click" style="font-size: x-large; text-align: center; margin-left: 160px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        &nbsp;
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            OldValuesParameterFormatString="original_{0}"
            SelectCommand="SELECT * FROM [Question_Master]">
        </asp:SqlDataSource>
        <table align="center">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                        AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999"
                        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2"
                        ForeColor="Black" DataKeyNames="QuestionId" DataSourceID="SqlDataSource1">

                        <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                        <SortedAscendingHeaderStyle BackColor="Gray"></SortedAscendingHeaderStyle>

                        <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                        <SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
                        <Columns>
                            <asp:BoundField DataField="QuestionId" HeaderText="QId" InsertVisible="False" ReadOnly="True" SortExpression="QuestionId" />
                            <asp:BoundField DataField="TestId" HeaderText="TestId" SortExpression="TestId" />
                            <asp:BoundField DataField="QuestionNumber" HeaderText="QNo." SortExpression="QuestionNumber" />
                            <asp:BoundField DataField="Question_Name" HeaderText="Que" SortExpression="Question_Name" />
                            <asp:BoundField DataField="Right_Answer" HeaderText="R_A" SortExpression="Right_Answer" />
                            <asp:BoundField DataField="A" HeaderText="A" SortExpression="A" />
                            <asp:BoundField DataField="B" HeaderText="B" SortExpression="B" />
                            <asp:BoundField DataField="C" HeaderText="C" SortExpression="C" />
                            <asp:BoundField DataField="D" HeaderText="D" SortExpression="D" />
                            <asp:CommandField ShowEditButton="True" />
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
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
     <p style="font-size: medium; width: 928px; text-align: center">&nbsp;&nbsp;&nbsp; ------------------------</p>
    <div id="I1808_html"><marquee behavior="scroll" direction="left"><b><center>Developed By: PRANAV DESAI </center></b></marquee>
</div> 
</asp:Content>

