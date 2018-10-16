<%@ Page Title="" Language="C#" MasterPageFile="~/Outer1.master" AutoEventWireup="true" CodeFile="StudyMaterial.aspx.cs" Inherits="StudyMaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="text-align: center">

        <asp:Label ID="Label1" runat="server" Text="Study Material" Style="font-size: x-large"></asp:Label>

        &nbsp;
    </div>
    <br /><br />     <br />
   <div><p style="text-align: center; font-size: medium">            <span style="text-decoration: underline; color: #FF00FF"><strong>GATE PREVIOUS YEAR PAPERs</strong></span>
            
               <br /><br /> <marquee onmouseover="stop()"  onmouseout="start()" scrollamount="2"
                     direction="up" >
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/DL_files/2007-cs.pdf" Target="_blank">Paper 2007 CS/IT</asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/DL_files/2008-cs.pdf" Target="_blank">Paper 2008 CS/IT</asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/DL_files/2009-cs.pdf" Target="_blank">Paper 2009 CS/IT</asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/DL_files/2010-cs.pdf" Target="_blank">Paper 2010 CS/IT</asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/DL_files/2011-cs.pdf" Target="_blank">Paper 2011 CS/IT</asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/DL_files/2012-cs.pdf" Target="_blank">Paper 2012 CS/IT</asp:HyperLink></marquee><br /></p>
               <br />     <br />
         <p style="text-align: center"><span style="text-decoration: underline; color: #FF00FF"><strong>GATE PAPERs SOLUTION</strong></span>
            
                <br /><br /><marquee onmouseover="stop()"  onmouseout="start()" scrollamount="2"
                     direction="up" >
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DL_files/2011-keycs.pdf" Target="_blank">Paper 2011 CS/IT Solution</asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DL_files/2012-keycs.pdf" Target="_blank">Paper 2012 CS/IT Solution</asp:HyperLink></marquee>
            <br />
                </p>
            </div>
    <br /> <br /> 
    <p><span style="text-decoration: underline; color: #FF00FF"><strong>NPTEL VIDEOs SOLUTION FROM EXPERTS</strong></span>
            
                <br /><br /><marquee onmouseover="stop()"  onmouseout="start()" scrollamount="2"
                     direction="up" style="width: 912px" >
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="http://nptel.iitm.ac.in/video.php?subjectId=106105079" Target="_blank">Artificial Inteligence(AI) by Prof.P.Dasgupta from IIT Kharagpur</asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="http://nptel.iitm.ac.in/courses/106102011/" Target="_blank">Computational Geometry by Prof. Sandeep Sen from IIT Delhi</asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="http://nptel.iitm.ac.in/video.php?subjectId=106102062" Target="_blank">Computer Architecture by Prof. Anshul Kumar from IIT Delhi </asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="http://nptel.iitm.ac.in/video.php?subjectId=106106092" Target="_blank">Computer Organization by Prof. S. Raman from IIT Madras </asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="http://nptel.iitm.ac.in/courses/106101060/" Target="_blank">Design and Analysis of Algorithms by Prof. Sundar Viswanathan from IIT Bombay</asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink18" runat="server" NavigateUrl="http://nptel.iitm.ac.in/courses/106102013/" Target="_blank">Logic for CS by Prof. S. Arun Kumar from IIT Delhi</asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink19" runat="server" NavigateUrl="http://nptel.iitm.ac.in/video.php?subjectId=106105085" Target="_blank">Programming and Data Structure by Dr. P.P.Chakraborty from IIT Kharagpur </asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink20" runat="server" NavigateUrl="http://nptel.iitm.ac.in/video.php?subjectId=106105077" Target="_blank">Artificial Intelligence by Prof. S. Sarkar & Prof. Anupam Basu from IIT Kharagpur</asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink21" runat="server" NavigateUrl="http://nptel.iitm.ac.in/courses/106108052/" Target="_blank">Compiler Design by Prof. Y.N. Srikanth from IISc Bangalore</asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink22" runat="server" NavigateUrl="http://nptel.iitm.ac.in/courses/106104019/" Target="_blank">Computer Algorithms-2 by Prof. Shashank K. Mehta from IIT Kanpur</asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink23" runat="server" NavigateUrl="http://nptel.iitm.ac.in/video.php?subjectId=106106090" Target="_blank">Computer Graphics by Prof. Sukhendu Das from </asp:HyperLink><br />
                    <asp:HyperLink ID="HyperLink24" runat="server" NavigateUrl="http://nptel.iitm.ac.in/video.php?subjectId=106105081" Target="_blank">Computer Networks by Prof. Sujoy Ghosh from IIT Kharagpur </asp:HyperLink><br /></marquee>
            <br />
                </p>

    </p>
        
        <br /><br /><br /><table border="5" cellspacing="5" cellpadding="4" align="left" style="margin-left: 0px; margin-right: 0px">
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2"><h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #FFFF00"> Study Material and Books for GATE CSE and IT Preparations</span></h2></td>
  </tr>
  <tr>
    <td colspan="2"><div style="font-size: medium; color: #FF99FF; text-align: left;">The best and most recommended reference books for CSE and IT GATE exam preparation.GATE exam preparation.</div></td>
  </tr>
  <tr>
    <td colspan="2" style="font-size: large; color: #CC0066; text-align: left">IMPORTANT BOOK&#39;S NAME WITH AUTHOR NAME FOR EACH SUBJECT</td>
  </tr>
  <tr>
    <td><blink><p style="text-align: center; height: 29px;"><strong>Mathematical Logic:</strong></p>
        </blink>
      <div>
        <div style="text-align: left; width: 443px; font-size: medium; margin-top: 0px;">&nbsp;&rdquo; Discrete Mathematics &rdquo; by Tremblay and Manohar .</div>
      </div>
      </td>
    <td style="width: 300px; font-size: medium;"><blink><p style="text-align: center"><strong>Probability: </strong> </p></blink>
      <div>&rdquo; Probability , statistics and queuing theory &rdquo; by S.C.Gupta and V.K.Kapoor</div>
      </td>
  </tr>
  <tr>
    <td style="height: 27px;" colspan="2"></td>
  </tr>
  <tr>
    <td style="height: 234px;"><blink><p style="text-align: center"><strong>Combinatorics: </strong> </p>
        <p style="text-align: center">&nbsp;</p></blink>
        <span style="font-size: medium">
        <div style="text-align: center; width: 447px;">&rdquo; Higher Engineering Mathematics &rdquo;by B.S.Grewal for generating  functions and recurrence relations .<span style="font-size: medium"><br />
            ( Bessel&rsquo;s formula , Lagrangian  Polynomial )</span> </div>
      <div style="text-align: center"></div>
      <div style="text-align: center; height: 44px; width: 445px;">&rdquo; Introduction to algorithms &rdquo;–Cormen etal ( CLRS )<br />
&nbsp;for recurrence relations and asymptotics</span></div>
      <div style="height: 37px; text-align: center; width: 445px;">&rdquo;<span style="font-size: medium"> Intermediate Mathematics &rdquo; , S.Chand publications ,<br />
&nbsp;authors : B.V.Sastry and K.Venkateswarlu<br />
          <br />
          <br />
&nbsp;</div>
        </span></td>
    <td style="width: 300px; height: 234px;"><blink><p style="text-align: center"><strong>Graph Theory:</strong> &nbsp;</p>
        <p style="text-align: center">&nbsp;</p></blink>
        <p style="text-align: center">&nbsp;</p>
        <p style="text-align: center">&rdquo; Intoduction to Graph Theory &rdquo; by Narsing Deo</p>
        <p style="text-align: center">&nbsp;</p>
        <p style="text-align: center">&nbsp;</p>
        <p style="text-align: center">&nbsp;</p>
        <p style="text-align: center">&nbsp;</p>
        <p style="text-align: center">&nbsp;</p>
      </td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td style="height: 35px;"><blink><p><strong style="text-align: center">Linear Algebra:</strong> </p>
        <p>&nbsp;</p></blink>
        <div style="width: 447px"><span style="font-size: medium; text-align: center;">&rdquo; Higher Engineering Mathematics &rdquo; by B.S.Grewal<br />
            </span></div>
      </td>
    <td style="width: 300px; height: 35px;"><blink><p><strong>Numerical Methods:&nbsp; </strong> </p>
        <p>&nbsp;</p></blink>
      <div style="width: 442px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: medium">&nbsp; &rdquo; Numerical Methods &rdquo; &ndash; by S.S.Sastry<br />
          </span></div>
      </td>
  </tr>
  <tr>
    <td colspan="2"></td>
  </tr>
  <tr>
    <td><blink><p><strong>Calculus :</strong></p>
        <p>&nbsp;</p></blink>
      <div style="font-size: medium; width: 450px;">&rdquo; Intermediate Mathematics &rdquo; , S.chand publications 
          <br />
&nbsp;authors : B.V.Sastry , K.Venkateswarlu</div>
      </td>
    <td style="width: 300px"><blink><p><strong>Formal Languages and Automata Theory:</strong></p>
        <p>&nbsp;</p></blink>
        <div style="font-size: medium; width: 445px;">&nbsp; &rdquo; Formal Languages and Automata theory &rdquo; , 
          <br />
          J.D.Ullman etal</div>
      </td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td><blink><p><strong>Analysis of Algorithms and Computational Complexity:</strong></p>
        <p>&nbsp;</p></blink>
        <div style="font-size: medium; width: 450px;">&nbsp;&nbsp; ” Introduction to algorithms ”–Cormen etal ( CLRS)
            <br />
&nbsp;” Computer Algorithms ” – Horowitz and Sahani</div>
      <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
      </td>
    <td style="width: 300px"><blink><p><strong>&nbsp;Digital Logic:</strong> </p></blink>
      <div style="font-size: medium; width: 443px;">&rdquo; Digital Logic circuits and Design &rdquo; by Morris Mano<br />
          <br />
        </div>
      </td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td><blink><p><strong>Computer Architecture:</strong> </p>
        <p>&nbsp;</p></blink>
      <div style="font-size: medium; width: 449px;">&rdquo; Computer Organisation &rdquo; by Morris Mano<br />
        &rdquo; Computer Architecture &rdquo; by Briggs and 2 chinese authors ( blue cover pad ) { for pipelining }<br />
          <br />
        </div>
      </td>
    <td style="width: 300px"><blink><p><strong>Data structures:</strong> </p>
        <p>&nbsp;</p></blink>
      <div style="font-size: medium; width: 447px;">&rdquo; Data structures &rdquo; Schaumm&rsquo;s outline series<br />
        &rdquo; Data structures in PASCAL &rdquo; by Horowitz and Sahani<br />
        &rdquo; Data structures and Algorithms &rdquo; by Weiss etal<br />
        &rdquo; Introduction to algorithms &rdquo; &ndash; Cormen etal ( CLRS )</div>
      </td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td><blink><p><strong>Programming Methodology:</strong></p>
        <p>&nbsp;</p></blink>
      <div style="font-size: medium; width: 447px;">&rdquo; Programming with C &rdquo; &ndash; Byron Gottfried , Schaumm&rsquo;s outline series<br />
        &rdquo; Principles of Programming Languages &rdquo; by Robert W Sebesta , Addison Wesley<br />
        &rdquo; Programming with C++ &rdquo; &ndash; Balaguruswamy<br />
          <br />
          <br />
        </div>
      </td>
    <td style="width: 300px"><blink><p><strong>Algorithms for problem solving:</strong> </p>
        <p>&nbsp;</p></blink>
      <div style="font-size: medium; width: 448px;">&rdquo; Data structures &rdquo; Schaumm&rsquo;s outline series<br />
        &rdquo; Data structures in PASCAL &rdquo; by Horowitz and Sahani<br />
        &rdquo; Computer Algorithms &rdquo; &ndash; Horowitz and Sahani<br />
        &rdquo; Data structures and Algorithms &rdquo; by Weiss etal<br />
        &rdquo; Introduction to algorithms &rdquo; &ndash; Cormen etal ( CLRS )</div>
      </td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td><blink><p><strong>Compiler Design:</strong> </p>
        <p>&nbsp;</p></blink>
      <div style="font-size: medium; width: 453px;">&rdquo; Principles of Compiler Design &rdquo; , Aho , Ullman etal .<br />
        &rdquo; Systems Programming &rdquo; by John . J . Donovan<br />
        </div>
      </td>
    <td style="width: 300px"><blink><p><strong>Operating Systems:</strong> </p>
        <p>&nbsp;</p></blink>
      <div style="font-size: medium; width: 452px;">&rdquo; Operating system concepts &rdquo; by Abraham Silberschatz and Peter Galvin<br />
        &rdquo; Advanced Unix Programming &rdquo; by W. Richard . Stevens<br />
        &rdquo; Advanced Unix Programming &rdquo; by N.B.Venkateswarlu , BPB publications</div>
      </td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td><p>&nbsp;</p>
        <blink><p><strong>Databases:</strong> </p>
        <p>&nbsp;</p></blink>
      <div style="font-size: medium; width: 453px; text-align: center;">&rdquo; Database Management systems &rdquo; &ndash; Raghu RamaKrishnan<br />
        &rdquo; Database system concepts &rdquo; &ndash; Silberschatz , Korth , Sudarshan<br />
        &rdquo; Database systems &rdquo; &ndash; C.J.Date { normalisation is very lucidly written }<br />
        &rdquo; Principles of Database Systems &rdquo; &ndash; J.D.Ullman { This is a very good book }</div>
      </td>
    <td style="width: 300px"><blink><p><strong>Computer Networks:</strong></p>
        <p>&nbsp;</p></blink>
      <p>&rdquo; Computer Networks &rdquo; &ndash; Tenenbaum<br />
        &rdquo; Data communications and Networking &rdquo; &ndash; William StallingsSome more important books and study materials for your GATE preparation:<br />
        &rdquo; Multiple choice questions &rdquo; &ndash; Timothy . J . Williams , TMH publications<br />
        </p></td>
  </tr>
  <tr>
    <td colspan="2">
        <p style="font-size: medium; width: 928px; text-align: center">&nbsp;&nbsp;&nbsp; ------------------------</p>
        <div id="I1808_html"><marquee behavior="scroll" direction="left"><b><center>Developed By: PRANAV DESAI</center></b></marquee></div>
        </td>
  </tr>
</table>
         
    
</asp:Content>

