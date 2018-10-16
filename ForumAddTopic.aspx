<%@ Page Title="" Language="C#" MasterPageFile="~/OuterMaster.master" %>
<%@Import Namespace="System.Data" %>
<%@Import Namespace="System.Data.OleDb" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
	<head>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0"/>
		<meta name="CODE_LANGUAGE" Content="C#"/>
		<meta name="vs_defaultClientScript" content="JavaScript (ECMAScript)"/>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5"/>
        <link href="style.css" rel="stylesheet" type="text/css"/>
		<script language="C#" runat="server">
		private void Page_Load(object sender, System.EventArgs e)
		{
			// Check that they have entered a UserName
			if (Session["UserName"].ToString().Length < 1)
			{
				Response.Redirect("ForumMain.aspx");
			}
			frmName.Text = "<b>" + Session["UserName"].ToString() + "</b>";
		}

		public void DoAddTopic(object sender, System.EventArgs e)
		{
			string strConnect = "Provider=Microsoft.Jet.OLEDB.4.0 ;Data Source="+Server.MapPath(".\\db\\forum.mdb");
			
			//Replace Quotes in Post Subject
			string sText = frmPost.Text;
			char cDQuote = '"';
			string sDQuote = cDQuote.ToString();
			string sSQuote = "'";
			sText = sText.Replace(sDQuote, "'");
			sText = sText.Replace(sSQuote, "''");
				
			string strInsert = "INSERT INTO topics (TopicSubject, TopicCreateName) VALUES ('" + sText + "', '" + Session["UserName"].ToString() + "')";
			try 
			{
				// create a new OleDbConnection object using the connection string
				OleDbConnection objConnect = new OleDbConnection(strConnect);

				// open the connection to the database
				objConnect.Open();

				// create a new OleDbCommand using the connection object and select statement
				OleDbCommand objCommand = new OleDbCommand(strInsert, objConnect);

				// execute the SQL statement
				objCommand.ExecuteNonQuery();

				// close the Connection
				objConnect.Close();

				// Redirect back to Topics
				Response.Redirect ("ForumTopics.aspx", true);
			}

			catch (Exception objError) 
			{
				// display error details
				outError.InnerHtml = "<b>* Error while accessing data</b>.<br />" + objError.Message + "<br />" + objError.Source;
				return;  //and stop execution
			}
		}
		</script>
		<script  type="text/javascript">
		    function Validate(theForm) {
		        if (theForm.frmPost.value == "") {
		            alert("Please enter a Topic subject");
		            theForm.frmPost.focus();
		            return (false);
		        }
		        return (true)
		    }
		</script>
	</head>
	<body>
		<form id="AddTopic" method="post" onSubmit="return Validate(this)">
			<h3>
				Discussion Forum
			</h3>
			<p style="color: #003366; height: 44px">
				<strong><span style="color: #CCCC00">To add a topic, enter your name and
				<br>
				give the topic a brief subject.</span><span style="color: #99CC00"> </span>
                </strong>
			</p>
			<div id="outError" runat="server">
				<table cellpadding="5" cellspacing="1" border="0" class="DataTable">
					<tr>
						<td class="TableItem">
							<asp:Label ID="frmName" Runat="server" style="font-weight: 700; color: #003366"></asp:Label>
							<br />
							<span style="color: #003366"><strong>Brief Topic Subject: (255 character Max)
							</strong></span>
							<br />
							<asp:TextBox id="frmPost" runat="server" TextMode="MultiLine" MaxLength="255" Columns="40" Rows="5"></asp:TextBox>
							<table border="0" width="100%" cellspacing="0" cellpadding="0">
								<tr>
									<td width="100%" align="right">
										<asp:Button onClick="DoAddTopic" Text="Submit" Runat="server" id="Button1" CssClass="button"></asp:Button>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<p>
				</p>
                <p>
				</p>
				<a href="ForumTopics.aspx">Back to Topic List</a>
			</div>
		</form><br /><br /><br /><br />
	 <p style="font-size: medium; width: 928px; text-align: center">&nbsp;&nbsp;&nbsp; ------------------------</p>
            <div id="I1808_html"><marquee behavior="scroll" direction="left"><b><center>Developed By: PRANAV DESAI</center></b></marquee></div>
    
    </body>
</html>

</asp:Content>

