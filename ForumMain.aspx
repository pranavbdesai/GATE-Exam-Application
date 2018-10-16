<%@ Page Title="" Language="C#" MasterPageFile="~/OuterMaster.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
	<head>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0"/>
		<meta name="CODE_LANGUAGE" Content="C#"/>
		<meta name="vs_defaultClientScript" content="JavaScript (ECMAScript)"/>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5"/>
        <!--<link href="style.css" rel="stylesheet" type="text/css">-->
		<script language="C#" runat="server">
		public void DoLogin(object sender, System.EventArgs e)
		{
			if (frmUserName.Text == "admin")
			{
				if (frmPassword.Text == "password")
				{
					Session["UserName"] = frmUserName.Text;
					Session["admin"] = "yes";
					Response.Redirect("ForumTopics.aspx");
				}
				else
				{
					frmPassword.Visible = true;
				}
			}
			else
			{
				Session["UserName"] = frmUserName.Text;
				Response.Redirect("ForumTopics.aspx");
			}
		}
		</script>
		<script Language="JavaScript">
		    function Validate(theForm) {
		        if (theForm.frmUserName.value == "") {
		            alert("Please enter a username");
		            theForm.frmUserName.focus();
		            return (false);
		        }
		        return (true)
		    }
		</script>
	</head>
	<body>
		<form id="form1" method="post" onSubmit="return Validate(this)">
			<table border="0" align="center" cellspacing="1" cellpadding="5" bgcolor="purple">
				<tr>
					<td class="TableItem" style="width: 113%">
						<div style="text-align: center">
						<b><span style="font-size: x-large">Enter tO Forum:</span></b>
						    <br />
                        </div>
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td valign="top">
									<span style="font-size: x-large"><strong>Name</strong>:</span>
									<asp:TextBox id="frmUserName" runat="server" Columns="15" Height="16px" Width="229px"></asp:TextBox>
								&nbsp;<br />
								</td>
								<td valign="top" rowspan="2">
									<asp:Button id="Button1" runat="server" OnClick="DoLogin" Text="Go" CssClass="button" Height="52px" style="font-size: large; margin-left: 33px" Width="87px"></asp:Button>
								</td>
							</tr>
							<tr>
								<td valign="top" align="right">
									<asp:TextBox id="frmPassword" Visible="False" runat="server" Columns="15" TextMode="Password"></asp:TextBox>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form><br /><br /><br /><br />
	 <p style="font-size: medium; width: 928px; text-align: center">&nbsp;&nbsp;&nbsp; ------------------------</p>
    <div id="I1808_html"><marquee behavior="scroll" direction="left"><b><center>Developed By: PRANAV DESAI </center></b></marquee></div>
    
    </body>
</html>
</asp:Content>

