<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="primaryinterests.aspx.vb" Inherits="virtual_library.primaryinterests" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Virtual library</title>
    <link href="../css/csssimple.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        
        
        .evenblock
        {
            float: left; 
            width: 200px;
            height: 45px;
            margin:12px;
           /* background-color: rgb(247, 247, 247);*/
            background-color: rgb(228, 244, 218);
           border: 1px solid rgb(193, 211, 184);
           line-height:10px;    font-size:18px;
    }
        .style1
        {
            text-align: center;
        }
        .style2
        {
            font-size: larger;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

<div id="indexheader">
<div id="logo">
    	

        <asp:Label ID="Label1" runat="server" Font-Size="50px" ForeColor="#CA942F" 
            Text="Virtual library"></asp:Label>
       
        </div>    
  
</div>
<div id="main_for_interest">
    <div class="style1">
&nbsp;&nbsp;
        <br />
        <br />
&nbsp; <span class="style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select your interests 
        subjects.&nbsp;<br />
        </span></div>
    <div class="mainform">
<div class="evenblock">
    <br />
    <asp:CheckBox ID="CheckBox1" runat="server" Text="Computer and IT" />
</div>
<div class="evenblock">
    <br />
    <asp:CheckBox ID="CheckBox2" runat="server" Text="Chemical Engineering" />
</div>
<div class="evenblock">
    <br />
    <asp:CheckBox ID="CheckBox3" runat="server" 
        Text="Electrical Engineering" />
</div>
<div class="evenblock">
    <br />
    <asp:CheckBox ID="CheckBox4" runat="server" Text="EC engineering" />
</div>
<div class="evenblock">
    <br />
    <asp:CheckBox ID="CheckBox5" runat="server" Text="Civil Engineering" />
</div>
<div class="evenblock">
    <br />
    <asp:CheckBox ID="CheckBox6" runat="server" Text="Mechanical Engineering" />
</div>
<div class="evenblock">
    <br />
    <asp:CheckBox ID="CheckBox7" runat="server" Text="Automobile Engineering" />
</div>
<div class="evenblock">
    <br />
    <asp:CheckBox ID="CheckBox8" runat="server" Text="Physics" />
</div>
<div class="evenblock">
    <br />
    <asp:CheckBox ID="CheckBox9" runat="server" Text="Mathematics" />
</div>
<div class="evenblock">
    <br />
    <asp:CheckBox ID="CheckBox10" runat="server" Text="Architecture" />
</div>
<div class="evenblock">
    <br />
    <asp:CheckBox ID="CheckBox11" runat="server" Text="Buisness Management" />
</div>
<div class="evenblock">
    <br />
    <asp:CheckBox ID="CheckBox12" runat="server" Text="Science " />
</div>
<div class="evenblock">
    <br />
    <asp:CheckBox ID="CheckBox13" runat="server" Text="General knowledge" />
</div>
<div class="evenblock">
    <br />
    <asp:CheckBox ID="CheckBox14" runat="server" Text="Personality development" />
</div>
<div class="evenblock">
    <br />
    <asp:CheckBox ID="CheckBox15" runat="server" Text="Compitative Exams" />
</div>
<div class="evenblock">
    <br />
    <asp:CheckBox ID="CheckBox16" runat="server" 
        Text="Entertainment and &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Others" />
</div>
</div>
<br />
<br />
<br /><br />
   <asp:Button ID="Button1" runat="server" Text="Next &nbsp;&nbsp; &gt;&gt;" CssClass="nextbtn" 
        ForeColor="White" Height="35px" Width="100px" />

   
    	<div id="footer">
    
       <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#666666" 
            NavigateUrl="~/adminlogin.aspx">Login</asp:HyperLink>
    
       
    </div>   </div>
    </form>
 
</body>
</html>
