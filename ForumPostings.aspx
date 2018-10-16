<%@ Page Title="" Language="C#" MasterPageFile="~/OuterMaster.master" %>
<%@Import Namespace="System.Data.OleDb" %>
<%@Import Namespace="System.Data" %>


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
		private void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here
		
				if (Session["UserName"] == null)
				{
					Response.Redirect("ForumMain.aspx");
				}

			frmName.Text = "<b>" + Session["UserName"].ToString() + "</b>";
			ListPostings();
		}

		private void ListPostings()
		{
			string strConnect = "Provider=Microsoft.Jet.OLEDB.4.0 ;Data Source="+Server.MapPath(".\\db\\forum.mdb");
			string strSelect =  "SELECT * ";
			strSelect +=		"FROM Postings ";
			strSelect +=		"WHERE TopicID=" + Request.QueryString["ID"] + " ";
			strSelect +=		"ORDER BY PostCreateDate DESC;";

			try 
			{

				//create a new OleDbConnection object using the connection string
				OleDbConnection objConnect = new OleDbConnection(strConnect);

				//open the connection to the database
				objConnect.Open();

				//create a new OleDbCommand using the connection object and select statement
				OleDbCommand objCommand = new OleDbCommand(strSelect, objConnect);

				//declare a variable to hold a DataReader object
				OleDbDataReader objDataReader;

				//execute the SQL statement against the command to fill the DataReader
				objDataReader = objCommand.ExecuteReader();

				DataGrid1.DataSource = objDataReader;
				DataGrid1.DataBind();

				if (DataGrid1.Items.Count == 0)
				{
					outError.InnerHtml = "There are currently no Postings for this topic, start the posts with the form above.";
				}
				
				//Write the Topic Subject as the Page Header
				TopicSubject.InnerHtml = "<h4>" + Request.QueryString["S"] + "</h4>";
			
				//close the DataReader and Connection
				objDataReader.Close();
				objConnect.Close();


			}

			catch (Exception objError) 
			{

				//display error details
				outError.InnerHtml = "<b>* Error while accessing data</b>.<br />" + objError.Message + "<br />" + objError.InnerException + "<P>" + objError.Source + "<P>" + objError.StackTrace + "<P>" + strSelect;
				return;  //and stop execution
			}
		}

		public void DoAddPost(object sender, System.EventArgs e)
		{
			string strConnect = "Provider=Microsoft.Jet.OLEDB.4.0 ;Data Source="+Server.MapPath(".\\db\\forum.mdb");
			
			//Replace Quotes in Post Subject
			string sText = frmPost.Text;
			char cDQuote = '"';
			string sDQuote = cDQuote.ToString();
			string sSQuote = "'";
			sText = sText.Replace(sDQuote, "'");
			sText = sText.Replace(sSQuote, "''");
			
			string strInsert = "INSERT INTO Postings (PostContent, PostCreateName, TopicID) VALUES ('" + sText + "', '" + Session["UserName"].ToString() + "', " + Request.QueryString["ID"] + " )" ;
			try 
			{

				//create a new OleDbConnection object using the connection string
				OleDbConnection objConnect = new OleDbConnection(strConnect);

				//open the connection to the database
				objConnect.Open();

				//create a new OleDbCommand using the connection object and select statement
				OleDbCommand objCommand = new OleDbCommand(strInsert, objConnect);

				//execute the SQL statement against the command to fill the DataReader
				objCommand.ExecuteNonQuery();

				//close the Connection
				objConnect.Close();

				Response.Redirect ("ForumPostings.aspx?ID=" + Request.QueryString["ID"] + "&S=" + Request.QueryString["S"], true);
				
			}

			catch (Exception objError) 
			{

				//display error details
				outError.InnerHtml = "<b>* Error while accessing data</b>.<br />"
					+ objError.Message + "<br />" + objError.Source;
				return;  //and stop execution
			}
		}
		</script>
		<script Language="JavaScript">
		    function Validate(theForm) {
		        if (theForm.frmPost.value == "") {
		            alert("Please enter a post message");
		            theForm.frmPost.focus();
		            return (false);
		        }
		        return (true)
		    }
		</script>
	</head>
	<body>
		<form id="AddPosting" method="post" onSubmit="return Validate(this)">
			<h3>
				Discussion Forum
			</h3>
			<div ID="TopicSubject" Runat="server">
			</div>
			<p>
				To add a post, enter your name and Message.
			</p>
			<div id="Div1" runat="server">
				<table cellpadding="5" cellspacing="1" border="0" class="DataTable">
					<tr>
						<td class="TableItem">
							Message from
							<asp:Label ID="frmName" Runat="server">
							</asp:Label>
							:
							<br>
								<asp:TextBox id="frmPost" runat="server" TextMode="MultiLine" MaxLength="255" Columns="40" Rows="5">
								</asp:TextBox>
								<table border="0" width="100%" cellspacing="0" cellpadding="0">
									<tr>
										<td width="100%" align="right">
											<asp:Button onClick="DoAddPost" Text="Add Post" Runat="server" id="Button1" CssClass="button">
											</asp:Button>
										</td>
									</tr>
								</table>
						</td>
					</tr>
				</table>
				<p>
					<a href="ForumTopics.aspx">Back to Topic List</a>
				</p>
			</div>
			<div id="outError" runat="server">
				<asp:DataGrid EnableViewState="False" DataKeyField="PostID" id="DataGrid1" runat="server" AutoGenerateColumns="False" HeaderStyle-CssClass="TableHeader" AlternatingItemStyle-CssClass="AltTableItem" ItemStyle-CssClass="TableItem" CssClass="DataTable" CellPadding="5">
					<HeaderStyle CssClass="TableHeader">
					</HeaderStyle>
					<PagerStyle NextPageText="Next &amp;gt;" PrevPageText="&lt; Prev">
					</PagerStyle>
					<AlternatingItemStyle CssClass="AltTableItem">
					</AlternatingItemStyle>
					<ItemStyle CssClass="TableItem">
					</ItemStyle>
					<Columns>
						<asp:TemplateColumn HeaderText="Posted By">
							<ItemTemplate>
								<asp:Label Runat='server' ID="lblAdminLink">
									<%# DataBinder.Eval(Container.DataItem, "PostCreateName") %>
									<% if (Session["admin"] == "yes")
										{ %>
									<br>
										<a class="adminlink" href="DeleteRecord.aspx?S=<%# Request.QueryString["S"] %>&TID=<%# Request.QueryString["ID"] %>&T=P&ID=<%# DataBinder.Eval(Container.DataItem, "PostID") %>">
											Delete</a>
										<%	}
									%>
										<br>
								</asp:Label>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:BoundColumn DataField="PostContent" HeaderText="Post">
						</asp:BoundColumn>
						<asp:BoundColumn DataField="PostCreateDate" HeaderText="Posted">
						</asp:BoundColumn>
					</Columns>
				</asp:DataGrid>
			</div>
		</form><br /><br /><br /><br />
<p style="font-size: medium; width: 928px; text-align: center">&nbsp;&nbsp;&nbsp; ------------------------</p>
    <div id="I1808_html"><marquee behavior="scroll" direction="left"><b><center>Developed By: PRANAV DESAI</center></b></marquee></div>
    <div id="Div2"><b><center>Copyrights © 2013 Devise Software Solutions Pvt Ltd. Allrights are reserved.</center></b></div>
	
    </body>
</html>

</asp:Content>

