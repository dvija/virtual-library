<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="adminlogin.aspx.vb" Inherits="virtual_library.adminlogin" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Virtual Library</title>
<meta name="keywords" content="Virtual Library" />
<meta name="description" content="Virtual Library" />
 <style type="text/css">
      .b
      {
          overflow-y : hidden;
      
      }
      
        .style1
        {
            font-family: Book Antiqua;
            font-size: xx-large;
            left:15%;
            top:10%;
            width: 70%;
            position:absolute;
       
        }
        .style13
        {
         height: 36px;
         text-align: left;
         font-size: medium;
         width: 497px;
     }
        .style8
        {
            color: #666666;
        }
        .style15
        {
            text-align: left;
            background-color: #B3E7FF;
            height: 35px;
         width: 497px;
     }
     
        .style11
        {
            color: #666666;
            text-align: left;
            background-color: #B3E7FF;
         width: 497px;
     }
        .style16
        {
            text-align: left;
            background-color: #B3E7FF;
            height: 36px;
         width: 497px;
     }
        .style14
        {
            color: #666666;
            text-align: left;
            background-color: #B3E7FF;
            height: 43px;
         width: 497px;
     }
        .style17
     {
         color: #666666;
         background-color: #B3E7FF;
         text-align: left;
         font-size: large;
         width: 497px;
     }
     .style18
     {
         color: #C0C0C0;
         font-size: x-large;
     }
        </style>

    <link href="../css/admin.css" rel="stylesheet" type="text/css" />
</head>

<body class="b">
<div id="main">
 <form id="form1" runat="server">
 <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Size="40px" ForeColor="#CA942F" 
            Text="Virtual library" style="font-family: Chiller"></asp:Label>
<div id="adminloginblock">
    <table align="center" bgcolor="White" border="0" class="style1" frame="border">
        <tr>
            <td bgcolor="#00005E" class="style13">
                &nbsp;&nbsp;<span class="style18"> Admin Login</span></td>
        </tr>
        <tr>
            <td bgcolor="Silver" class="style11" height="10" 
                style="background-color: #FFFFFF">
                &nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="Silver" class="style17" height="10" 
                style="background-color: #FFFFFF; font-weight: bold;">
                Username:</td>
        </tr>
        <tr>
            <td bgcolor="Silver" class="style15" style="background-color: #FFFFFF; font-weight: bold;">
                <asp:TextBox ID="TextBox3" runat="server" BorderColor="#66CCFF" 
                    CssClass="style8" Width="261px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="Silver" class="style17" height="10" 
                style="background-color: #FFFFFF; font-weight: bold;">
                Password:</td>
        </tr>
        <tr>
            <td bgcolor="Silver" class="style16" style="background-color: #FFFFFF">
                <asp:TextBox ID="TextBox4" runat="server" BorderColor="#66CCFF" 
                    CssClass="style8" TextMode="Password" Width="261px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="Silver" class="style14" style="background-color: #FFFFFF">
                <asp:Button ID="Button1" runat="server" BackColor="#999999" Font-Bold="True" 
                    Font-Size="Small" ForeColor="#003366" Height="23px" style="margin-left: 0px" 
                    Text="Login " Width="87px" />
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" 
                    BackColor="#999999" Font-Bold="True" 
                    Font-Size="Small" ForeColor="#003366" Height="23px" style="margin-left: 0px" 
                    Text="Cancel " Width="87px" />
                &nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#00005E" class="style13" height="20">
                &nbsp;
            </td>
        </tr>
    </table>
        
                <asp:Label ID="Label2" runat="server" Font-Bold="True" 
                    style="font-family: Calibri; font-size: medium; color: #800000"></asp:Label>
        </div>

 <div id="footer">
</div>
 <br />
  

</form>

 </body>
 </div>
</html>
