<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="changepasswordcode.aspx.vb" Inherits="virtual_library.changepasswordcode" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Virtual library</title>
<meta name="keywords" content="village, theme, free css template, free templates, website templates, templatemo, CSS, HTML" />
<meta name="description" content="Village Theme - free css template for everyone" />

    <style type="text/css">
 
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
     
     <div class="ccode">
         <br />
         Enter&nbsp;code 
         we have sent to your email id!!!<br />
         <br />
         <asp:TextBox ID="TextBox1" runat="server" CssClass="style6" Height="30px" 
             Width="195px"></asp:TextBox>
         <br />
         <br />
         <asp:Button ID="Button1" runat="server" BackColor="#F5F5F5" CssClass="login" 
             Height="27px" Text="Submit" Width="93px" />
         &nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button2" runat="server" BackColor="#F5F5F5" CssClass="login" 
             Height="27px" Text="Cancel" Width="93px" />
         <br />
         <br />
         <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
     </div>


	<div id="footer">
    
       
    </div>
    </form>
    </div>
</body>
</html>
