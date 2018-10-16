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
		
		<script language="C#" runat="server">
		public void Page_Load(object sender, System.EventArgs e)
		{
			if (Session["UserName"] == null)
			{
				Response.Redirect("ForumMain.aspx");
			}
			welcome.InnerHtml = "           Welcome " + Session["UserName"] + ", choose a topic to see the postings.<P><br/>";
			ListTopics();
		}

		public void ListTopics()
		{
			string strConnect = "Provider=Microsoft.Jet.OLEDB.4.0 ;Data Source="+Server.MapPath(".\\db\\forum.mdb");
			string strSelect = "SELECT * FROM topics ORDER BY TopicCreateDate DESC";
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
				
				//close the DataReader and Connection
				objDataReader.Close();
				objConnect.Close();

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
	</head>
	<body>
		<form id="Form1" method="post">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="ForumMain.aspx"><span style="font-size: medium">Click to close Forum</span></a><h4 style="text-align: center">
				&nbsp;<span style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Discussion Forum
			</span>
			</h4>
			<div id="welcome" runat="server" align="center" font-size="14" />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="ForumAddTopic.aspx">Add a topic</a><br />
&nbsp;<p />
			<div id="outError" runat="server">
				<asp:DataGrid id="DataGrid1" runat="server" AutoGenerateColumns="False" 
                    HeaderStyle-CssClass="TableHeader" AlternatingItemStyle-CssClass="AltTableItem" 
                    ItemStyle-CssClass="TableItem" CssClass="DataTable" CellPadding="5" 
                    Height="371px" Width="768px" style="margin-left: 117px">
					<Columns>
						<asp:TemplateColumn HeaderText="Posted By">
							<ItemTemplate>
								<asp:Label Runat='server' ID="lblAdminLink">
									<%# DataBinder.Eval(Container.DataItem, "TopicCreateName") %>
									<% if (Session["admin"] == "yes")
										{ %>
									<br>
									<a class="adminlink" href="DeleteRecord.aspx?T=T&ID=<%# DataBinder.Eval(Container.DataItem, "TopicID") %>">
										Delete</a>
									<%	}
									%>
									<br>
								</asp:Label>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn HeaderText="Topic: click to view posts">
							<ItemTemplate>
								<asp:Label Runat='server' ID="lblSubject">
									<a href="ForumPostings.aspx?ID=<%#  DataBinder.Eval(Container.DataItem, "TopicID") %>&S=<%# DataBinder.Eval(Container.DataItem, "TopicSubject") %>">
										<%# DataBinder.Eval(Container.DataItem, "TopicSubject") %>
									</a>
								</asp:Label>
							</ItemTemplate>
						</asp:TemplateColumn>
						<asp:BoundColumn DataField="TopicCreateDate" HeaderText="Posted"></asp:BoundColumn>
					</Columns>
				</asp:DataGrid>
			</div>
		</form><br /><br /><br /><br />
	<p style="font-size: medium; width: 928px; text-align: center">&nbsp;&nbsp;&nbsp; ------------------------</p>
    <div id="I1808_html"><marquee behavior="scroll" direction="left"><b><center>Developed By: PRANAV DESAI</center></b></marquee></div>
 
    </body>
</html>

</asp:Content>

