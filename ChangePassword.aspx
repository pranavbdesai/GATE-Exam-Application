<%@ Page Title="" Language="C#" MasterPageFile="~/InnerMaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="height: 423px">
        <table align="center" frame="border" bgcolor="#FFFFCC" style="width: 70%; height: 200px;">
            <tr>
                <td colspan="1" align="right" style="width: 235px">
                    <asp:Label ID="lblLoginId" runat="server" Text="LoginId" Visible="False"></asp:Label>
                </td>
                <td align="right">
                    <asp:Label ID="lblNames" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2"></td>
            </tr>
            <tr>
                <td bgcolor="Maroon" colspan="2">
                    <span style="color: #FFFFCC; font-size: medium;">Change Password</span>
                </td>
            </tr>
            <tr>
                <td colspan="2"></td>
            </tr>
            <%--<tr>
                <td align="right" class="style6">
                    <asp:Label ID="Label1" runat="server" Text="Student Email_Id" Font-Bold="True" ForeColor="#003399"></asp:Label>
                </td>
                <td width="15%">
                    <asp:TextBox ID="txtstudentemail_id" runat="server" Width="166px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtstudentemail_id"
                        ErrorMessage="EmailID Must Be Enter" ValidationGroup="Submit"></asp:RequiredFieldValidator>
                </td>
            </tr>--%>
            <tr>
                <td align="right" class="style6" style="width: 235px">
                    <asp:Label ID="Label2" runat="server" Text="Old Password" Font-Bold="True" ForeColor="#003399"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="167px" Style="margin-left: 9px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpassword"
                        ErrorMessage="PassWord Must Be Enter" ValidationGroup="Submit"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style6" style="width: 235px">
                    <asp:Label ID="Label3" runat="server" Text="New Password" Font-Bold="True" ForeColor="#003399"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:TextBox ID="txtNewPass" runat="server" TextMode="Password" Width="167px" Style="margin-left: 9px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNewPass"
                        ErrorMessage="PassWord Must Be Enter" ValidationGroup="Submit"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ValidateLength" ControlToValidate="txtPassword" ValidationExpression="[^ \t\n\r]{4,20}"
                        ErrorMessage="Passwords must be between 4 and 20 characters long" runat="server"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style6" style="width: 235px">
                    <asp:Label ID="Label4" runat="server" Text="Conform Password" Font-Bold="True" ForeColor="#003399"></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:TextBox ID="txtconfrm" runat="server" TextMode="Password" Width="167px" Style="margin-left: 9px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtconfrm"
                        ErrorMessage="PassWord Must Be Enter" ValidationGroup="Submit"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNewPass"
                        ControlToValidate="txtconfrm" ErrorMessage="Enter Same Password" ValidationGroup="Submit"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style6" style="width: 235px"></td>
                <td></td>
            </tr>
            <tr>
                <td class="style6" style="text-align: center; width: 235px">
                    <asp:Button ID="btnlogin" runat="server" Text="Change" BackColor="Maroon" Font-Bold="True"
                        Font-Size="Medium" ForeColor="#FFFFCC" Width="170px" OnClick="btnlogin_Click" ValidationGroup="Submit" />
                </td>
                <td style="text-align: center">
                    <asp:Button ID="btncancel" runat="server" Text="Cancel" BackColor="Maroon" Font-Bold="True"
                        Font-Size="Medium" ForeColor="#FFFFCC" Width="170px" OnClick="btncancel_Click" />
                </td>
            </tr>
        </table>
    </div>
    </div>
    <p style="font-size: medium; width: 928px; text-align: center">&nbsp;&nbsp;&nbsp; ------------------------</p>
    <div id="I1808_html"><marquee behavior="scroll" direction="left"><b><center>Developed By: PRANAV DESAI</center></b></marquee></div>
    
</asp:Content>

