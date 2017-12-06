<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="forgotpassword.aspx.vb" Inherits="virtual_library.forgotpassword" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
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
<body>

<div id="main">
   <form id="form1" runat="server">
  <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Size="40px" ForeColor="#CA942F" 
            Text="Virtual library" style="font-family: Chiller"></asp:Label>
       
        <br />
        <br />
        <br />
    <br />
    <br />
    <br />
     <div class="ccode">
         <br />
         Enter&nbsp; your E-mail address to recover password !!!<br />
         <br />
         <asp:TextBox ID="TextBox1" runat="server" CssClass="style6" Height="30px" 
             Width="195px"></asp:TextBox>
         <br />
         <br />
         <br />
         <br />
         <asp:Button ID="Button1" runat="server" BackColor="#F5F5F5" CssClass="login" 
             Height="27px" Text="Submit" Width="93px" ValidationGroup="submitgrp" />
         &nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button2" runat="server" BackColor="#F5F5F5" CssClass="login" 
             Height="27px" Text="Cancel" Width="93px" />
         <br />
         <br />
     </div>
    <br />
    <br />
    <br />
     <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
     </asp:ToolkitScriptManager>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
     ControlToValidate="TextBox1" Display="Dynamic" 
     ErrorMessage="please enter email id." ValidationGroup="submitgrp"></asp:RequiredFieldValidator>
 <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
     runat="server" Enabled="True" HighlightCssClass="CustomValidatorCalloutStyle" 
     PopupPosition="BottomLeft" TargetControlID="RequiredFieldValidator1" 
     WarningIconImageUrl="a.png" CssClass="CustomValidatorCalloutStyle" 
     Width="180px">
 </asp:ValidatorCalloutExtender>
  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
     runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter valid emailid." 
     ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
     ValidationGroup="submitgrp"></asp:RegularExpressionValidator>
 <asp:ValidatorCalloutExtender ID="RegularExpressionValidator1_ValidatorCalloutExtender" 
     runat="server" CssClass="CustomValidatorCalloutStyle" Enabled="True" 
     PopupPosition="BottomLeft" TargetControlID="RegularExpressionValidator1" 
     WarningIconImageUrl="a.png"></asp:ValidatorCalloutExtender>
  
	<div id="footer">
   

       
    </div>

    </form>
    </div>
</body>
</html>
