<%@ Page Title="" Language="C#" MasterPageFile="~/OuterMaster.master" AutoEventWireup="true"
    CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="scriptmanager" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="updatepanel" runat="server">
        <ContentTemplate>
            <table align="center" border="1">
                <tr>
                    <td style="width: 648px">
                        <table align="center">
                            <tr>
                                <td colspan="3" style="font-size: large; text-align: center; height: 32px;">
                                    <strong><span style="font-size: xx-large">Sign Up</span></strong>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 444px; font-size: large;" align="right">User Name</td>
                                <td>:
                                </td>
                                <td style="font-weight: bold; width: 539px;">
                                    <asp:TextBox ID="txtUsername" runat="server" Height="16px" Width="179px" TabIndex="0"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1"
                                        runat="server"
                                        TargetControlID="txtUsername"
                                        WatermarkCssClass="watermark"
                                        WatermarkText="Enter Your UserName">
                                    </asp:TextBoxWatermarkExtender>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUsername"
                                        ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="null">Username is required.</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 444px; font-size: large;" align="right">Password
                                </td>
                                <td>:
                                </td>
                                <td style="font-weight: bold; width: 539px;">
                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Height="16px" Width="179px" TabIndex="1"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-size: large;" align="right" colspan="3">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword"
                                        ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="null">Password is required.</asp:RequiredFieldValidator>
                                    <asp:PasswordStrength ID="PasswordStrength2" runat="server" TargetControlID="txtPassword"
                                        DisplayPosition="BelowLeft" MinimumSymbolCharacters="1" MinimumUpperCaseCharacters="1"
                                        PreferredPasswordLength="10" CalculationWeightings="25;25;15;35" RequiresUpperAndLowerCaseCharacters="true"
                                        TextStrengthDescriptions="Poor; Weak; Good; Strong; Excellent" HelpStatusLabelID="Label1"
                                        StrengthIndicatorType="BarIndicator" HelpHandlePosition="AboveLeft" BarBorderCssClass="barIndicatorBorder"
                                        StrengthStyles="barIndicator_poor; barIndicator_weak; barIndicator_good; barIndicator_strong; barIndicator_excellent">
                                    </asp:PasswordStrength>
                                    
                                    <div class="clear">
                                        <br />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-size: large;" align="right" colspan="3">
                                    <asp:Label ID="Label1" runat="server" Style="text-align: center"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 444px; font-size: large;" align="right">Re-Enter Password
                                </td>
                                <td>:
                                </td>
                                <td style="font-weight: bold; width: 539px;">
                                    <asp:TextBox ID="txtReenterPassword" runat="server" TextMode="Password" Height="16px" Width="179px" TabIndex="2"></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
                                        ControlToValidate="txtReenterPassword" ErrorMessage="Passwords do not match"
                                        ForeColor="Red" ValidationGroup="null"></asp:CompareValidator>
                                    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3"
                                        runat="server"
                                        TargetControlID="txtReenterPassword"
                                        WatermarkCssClass="watermark"
                                        WatermarkText="Reenter Your Password">
                                    </asp:TextBoxWatermarkExtender>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 444px; font-size: large;" align="right">Full Name:
                                </td>
                                <td>:
                                </td>
                                <td style="font-weight: bold; width: 539px;">
                                    <asp:TextBox ID="txtFullName" runat="server" Height="16px" Width="179px" TabIndex="3"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullName"
                                        ErrorMessage="Full Name is required." ToolTip="Full Name is required." ValidationGroup="null">Full Name is required.</asp:RequiredFieldValidator>
                                    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender4"
                                        runat="server"
                                        TargetControlID="txtFullName"
                                        WatermarkCssClass="watermark"
                                        WatermarkText="Enter Your Fullname">
                                    </asp:TextBoxWatermarkExtender>

                                </td>
                            </tr>
                            <tr>
                                <td style="width: 444px; font-size: large;" align="right">Gender
                                </td>
                                <td>:
                                </td>
                                <td align="left" style="font-weight: bold; width: 539px;">
                                    <asp:RadioButtonList ID="rbtGender" runat="server" RepeatDirection="Horizontal" Style="font-size: large" TabIndex="4">
                                        <asp:ListItem Selected="True">Male</asp:ListItem>
                                        <asp:ListItem >Female</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 444px; font-size: large;" align="right">Branch
                                </td>
                                <td>:
                                </td>
                                <td style="font-weight: bold; width: 539px;">
                                    <asp:DropDownList ID="drpBranch" runat="server" TabIndex="5">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 444px; font-size: large;" align="right">Security Question
                                </td>
                                <td>:
                                </td>
                                <td style="font-weight: bold; width: 539px;">
                                    <asp:DropDownList ID="dplSecQuestion" runat="server" TabIndex="6">
                                        <asp:ListItem>What is your Car no?</asp:ListItem>
                                        <asp:ListItem>What is your pet name?</asp:ListItem>
                                        <asp:ListItem>What is your age?</asp:ListItem>
                                        <asp:ListItem>What is your home town?</asp:ListItem>
                                        <asp:ListItem>What is your fav color?</asp:ListItem>
                                        <asp:ListItem>What is your best friend's name?</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 444px; font-size: large;" align="right">Answer
                                </td>
                                <td>:
                                </td>
                                <td style="font-weight: bold; width: 539px;">
                                    <br />
                                    <asp:TextBox ID="txtAnswer" runat="server" Height="16px" Width="179px" TabIndex="7"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAnswer"
                                        ErrorMessage="Security Question's Answer  is required." ToolTip="Security Question's Answer is required."
                                        ValidationGroup="null">Security Question's Answer  is required.</asp:RequiredFieldValidator>
                                    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender5"
                                        runat="server"
                                        TargetControlID="txtAnswer"
                                        WatermarkCssClass="watermark"
                                        WatermarkText="Enter Your Answer">
                                    </asp:TextBoxWatermarkExtender>

                                </td>
                            </tr>
                            <tr>
                                <td style="width: 444px" align="right">
                                    <span style="font-size: large">Email</span>
                                </td>
                                <td>:
                                </td>
                                <td style="font-weight: bold; width: 539px;">
                                    <br />
                                    <asp:TextBox ID="txtEmail" runat="server" Height="16px" Width="179px" TabIndex="8"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                                        ErrorMessage="Invalid Email Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                        ValidationGroup="null"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail"
                                        ErrorMessage="Email ID is required." ToolTip="Email ID is required." ValidationGroup="null">Email ID is required.</asp:RequiredFieldValidator>
                                     <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender6"
                                        runat="server"
                                        TargetControlID="txtEmail"
                                        WatermarkCssClass="watermark"
                                        WatermarkText="Enter Your Email ID ">
                                    </asp:TextBoxWatermarkExtender>
                                </td>
                            </tr>
                            <tr>
                                <td align="Center" colspan="3">
                                    <asp:Button ID="btnCreateAccount" runat="server" TabIndex="9" Text="Create Account" OnClick="btnCreateAccount_Click"
                                        ValidationGroup="null" Style="font-size: x-large" ToolTip="Click to create account" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnCancel" TabIndex="10" runat="server"
                                        Text="Cancel" OnClick="btnCancel_Click" Style="font-size: x-large" ToolTip="Click to Cancel details" />
                                </td>
                            </tr>
                            <tr>
                                <td align="Center" colspan="3">&nbsp;
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
    <p>
        <br />
    </p>
<p style="font-size: medium; width: 928px; text-align: center">&nbsp;&nbsp;&nbsp; ------------------------</p>
    <div id="I1808_html"><marquee behavior="scroll" direction="left"><b><center>Developed By: PRANAV DESAI</center></b></marquee></div>
    

</asp:Content>
