<%@ Page Title="" Language="C#" MasterPageFile="~/Outer1.master" AutoEventWireup="true" CodeFile="Exam_Analysis.aspx.cs" Inherits="Exam_Analysis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Gate Exam Analysis</title>
<style type="text/css">
<!--
.style1 {color: #0000FF}
-->
</style>
</head>

<body>
<table width="545" border="1" align="center">
  <tr>
    <th colspan="9" scope="row">GATE EXAM PAPER ANALYSIS SUBJECT WISE </th>
  </tr>
  <tr>
    <th width="135" scope="row">Subject</th>
    <td width="44"><strong>2005</strong></td>
    <td width="44"><strong>2006</strong></td>
    <td width="54"><strong>2007</strong></td>
    <td width="32"><strong>2008</strong></td>
    <td width="44"><strong>2009</strong></td>
    <td width="47"><strong>2010</strong></td>
    <td width="43"><strong>2011</strong></td>
    <td width="44"><strong>2012</strong></td>
  </tr>
  <tr>
    <th height="25" colspan="9" scope="row">Engineering Mathematics</th>
  </tr>
  <tr>
    <th scope="row">1 Mark Question  </th>
    <td>6</td>
    <td>3</td>
    <td>4</td>
    <td>5</td>
    <td>4</td>
    <td>6</td>
    <td>3</td>
    <td>2</td>
  </tr>
  <tr>
    <th scope="row">2 Mark Question</th>
    <td>12</td>
    <td>11</td>
    <td>11</td>
    <td>11</td>
    <td>6</td>
    <td>5</td>
    <td>7</td>
    <td>8</td>
  </tr>
  <tr>
    <th scope="row">Total Marks </th>
    <td><strong>30</strong></td>
    <td><strong>25</strong></td>
    <td><strong>26</strong></td>
    <td><strong>27</strong></td>
    <td><strong>16</strong></td>
    <td><strong>16</strong></td>
    <td><strong>16</strong></td>
    <td><strong>9</strong></td>
  </tr>
  <tr>
    <th colspan="9" scope="row">Theory of Computation </th>
  </tr>
  <tr>
    <th scope="row">1 Mark Question</th>
    <td>-</td>
    <td>2</td>
    <td>2</td>
    <td>3</td>
    <td>4</td>
    <td>1</td>
    <td>3</td>
    <td>4</td>
  </tr>
  <tr>
    <th scope="row">2 Mark Question </th>
    <td>7</td>
    <td>6</td>
    <td>5</td>
    <td>6</td>
    <td>3</td>
    <td>3</td>
    <td>3</td>
    <td>1</td>
  </tr>
  <tr>
    <th scope="row">Total Marks</th>
    <td><strong>14</strong></td>
    <td><strong>14</strong></td>
    <td><strong>12</strong></td>
    <td><strong>15</strong></td>
    <td><strong>10</strong></td>
    <td><strong>7</strong></td>
    <td><strong>9</strong></td>
    <td><strong>6</strong></td>
  </tr>
  <tr>
    <th colspan="9" scope="row">Digital Logic</th>
  </tr>
  <tr>
    <th scope="row">1 Mark Question </th>
    <td>4</td>
    <td>1</td>
    <td>3</td>
    <td>4</td>
    <td>2</td>
    <td>3</td>
    <td>3</td>
    <td>2</td>
  </tr>
  <tr>
    <th scope="row">2 Mark Question</th>
    <td>5</td>
    <td>5</td>
    <td>5</td>
    <td>1</td>
    <td>0</td>
    <td>2</td>
    <td>3</td>
    <td>2</td>
  </tr>
  <tr>
    <th height="26" scope="row">Total Marks </th>
    <td><strong>14</strong></td>
    <td><strong>11</strong></td>
    <td><strong>13</strong></td>
    <td><strong>6</strong></td>
    <td><strong>2</strong></td>
    <td><strong>7</strong></td>
    <td><strong>9</strong></td>
    <td><strong>6</strong></td>
  </tr>
  <tr>
    <th colspan="9" scope="row">Computer Organization &amp;Architecture</th>
  </tr>
  <tr>
    <th scope="row"> 1 Marks  Question </th>
    <td>4</td>
    <td>-</td>
    <td>2</td>
    <td>-</td>
    <td>2</td>
    <td>1</td>
    <td>3</td>
    <td>2</td>
  </tr>
  <tr>
    <th scope="row">2 Mark Question</th>
    <td>9</td>
    <td>7</td>
    <td>6</td>
    <td>12</td>
    <td>1</td>
    <td>1</td>
    <td>2</td>
    <td>4</td>
  </tr>
  <tr>
    <th scope="row">Total Marks</th>
    <td><strong>22 </strong></td>
    <td><strong>14</strong></td>
    <td><strong>14</strong></td>
    <td><strong>24</strong></td>
    <td><strong>10</strong></td>
    <td><strong>9</strong></td>
    <td><strong>7</strong></td>
    <td><strong>10</strong></td>
  </tr>
  <tr>
    <th colspan="9" scope="row">Programming &amp;Data Structure </th>
  </tr>
  <tr>
    <th scope="row">1 Marks  Question</th>
    <td>5 </td>
    <td>-</td>
    <td>1</td>
    <td>1</td>
    <td>1</td>
    <td>3</td>
    <td>4</td>
    <td>2</td>
  </tr>
  <tr>
    <th scope="row">2 Mark Question</th>
    <td>3</td>
    <td>6</td>
    <td>3</td>
    <td>3</td>
    <td>3</td>
    <td>5</td>
    <td>7</td>
    <td>6</td>
  </tr>
  <tr>
    <th scope="row">Total Marks </th>
    <td><strong>11</strong></td>
    <td><strong>12</strong></td>
    <td><strong>7</strong></td>
    <td><strong>7</strong></td>
    <td><strong>7</strong></td>
    <td><strong>13</strong></td>
    <td><strong>18</strong></td>
    <td><strong>14</strong></td>
  </tr>
  <tr>
    <th colspan="9" scope="row">Algorithm</th>
  </tr>
  <tr>
    <th scope="row">1 Marks  Question</th>
    <td>2</td>
    <td>8</td>
    <td>3</td>
    <td>2</td>
    <td>3</td>
    <td>1</td>
    <td>1</td>
    <td>4</td>
  </tr>
  <tr>
    <th scope="row">2 Mark Question</th>
    <td>10</td>
    <td>7</td>
    <td>12</td>
    <td>15</td>
    <td>6</td>
    <td>3</td>
    <td>0</td>
    <td>2</td>
  </tr>
  <tr>
    <th scope="row">Total Marks </th>
    <td><strong>22</strong></td>
    <td><strong>22</strong></td>
    <td><strong>27</strong></td>
    <td><strong>32</strong></td>
    <td><strong>15</strong></td>
    <td><strong>7</strong></td>
    <td><strong>1</strong></td>
    <td><strong>8</strong></td>
  </tr>
  <tr>
    <th colspan="9" scope="row">Compiler Design</th>
  </tr>
  <tr>
    <th scope="row">1 Mark Question </th>
    <td>1 </td>
    <td>1</td>
    <td>1</td>
    <td>2</td>
    <td>1</td>
    <td>2</td>
    <td>1</td>
    <td>1</td>
  </tr>
  <tr>
    <th scope="row">2 Mark Question</th>
    <td>5</td>
    <td>5</td>
    <td>5</td>
    <td>2</td>
    <td>0</td>
    <td>1</td>
    <td>0</td>
    <td>3</td>
  </tr>
  <tr>
    <th scope="row">Total Marks </th>
    <td><strong>11</strong></td>
    <td><strong>11</strong></td>
    <td><strong>11</strong></td>
    <td><strong>6</strong></td>
    <td><strong>1</strong></td>
    <td><strong>4</strong></td>
    <td><strong>1</strong></td>
    <td><strong>7</strong></td>
  </tr>
  <tr>
    <th colspan="9" scope="row">Operating System</th>
  </tr>
  <tr>
    <th scope="row">1 Mark Question </th>
    <td>- </td>
    <td>1</td>
    <td>2</td>
    <td>2</td>
    <td>2</td>
    <td>3</td>
    <td>3</td>
    <td>1</td>
  </tr>
  <tr>
    <th scope="row">2 Mark Question</th>
    <td>2</td>
    <td>8</td>
    <td>6</td>
    <td>5</td>
    <td>5</td>
    <td>2</td>
    <td>2</td>
    <td>3</td>
  </tr>
  <tr>
    <th scope="row">Total Marks </th>
    <td><strong>4</strong></td>
    <td><strong>17</strong></td>
    <td><strong>14</strong></td>
    <td><strong>12</strong></td>
    <td><strong>12</strong></td>
    <td><strong>7</strong></td>
    <td><strong>7</strong></td>
    <td><strong>7</strong></td>
  </tr>
  <tr>
    <th colspan="9" scope="row">Data Bases</th>
  </tr>
  <tr>
    <th scope="row">1 Mark Question </th>
    <td>3</td>
    <td>1</td>
    <td>-</td>
    <td>1</td>
    <td>0</td>
    <td>3</td>
    <td>0</td>
    <td>2</td>
  </tr>
  <tr>
    <th scope="row">2 Mark Question </th>
    <td>4</td>
    <td>4</td>
    <td>6</td>
    <td>5</td>
    <td>5</td>
    <td>2</td>
    <td>3</td>
    <td>3</td>
  </tr>
  <tr>
    <th scope="row">Total Marks </th>
    <td><strong>11</strong></td>
    <td><strong>9</strong></td>
    <td><strong>12</strong></td>
    <td><strong>11</strong></td>
    <td><strong>5</strong></td>
    <td><strong>7</strong></td>
    <td><strong>6</strong></td>
    <td><strong>9</strong></td>
  </tr>
  <tr>
    <th colspan="9" scope="row">Computer Networks</th>
  </tr>
  <tr>
    <th scope="row">1 Mark Question </th>
    <td>5</td>
    <td>1</td>
    <td>2</td>
    <td>1</td>
    <td>0</td>
    <td>2</td>
    <td>5</td>
    <td>3</td>
  </tr>
  <tr>
    <th scope="row">2 Mark Question </th>
    <td>2</td>
    <td>5</td>
    <td>6</td>
    <td>4</td>
    <td>5</td>
    <td>3</td>
    <td>2</td>
    <td>3</td>
  </tr>
  <tr>
    <th scope="row"><strong>Total Marks </strong></th>
    <td><strong>9</strong></td>
    <td><strong>11</strong></td>
    <td><strong>14</strong></td>
    <td><strong>9</strong></td>
    <td><strong>5</strong></td>
    <td><strong>8</strong></td>
    <td><strong>9</strong></td>
    <td><strong>9</strong></td>
  </tr>
  <tr>
    <th colspan="9" scope="row">Reasoning &amp; Aptitude</th>
  </tr>
  <tr>
    <th scope="row">1 Mark Question </th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>5</td>
    <td>5</td>
    <td>5</td>
  </tr>
  <tr>
    <th scope="row">2 Mark Question </th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>5</td>
    <td>5</td>
    <td>5</td>
  </tr>
  <tr>
    <th scope="row"><strong>Total Marks </strong></th>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><strong>15</strong></td>
    <td><strong>15</strong></td>
    <td><strong>15</strong></td>
  </tr>
  <tr>
    <th colspan="9" scope="row"><span class="style1"></span></th>
  </tr>
</table>
    <p style="font-size: medium; width: 928px; text-align: center">&nbsp;&nbsp;&nbsp; ------------------------</p>
    <div id="I1808_html"><marquee behavior="scroll" direction="left"><b><center>Developed By:PRANAV DESAI</center></b></marquee></div>
    
</body>
</html>

       



    </asp:Content>