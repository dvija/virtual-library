<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="resetpassword.aspx.vb" Inherits="virtual_library.resetpassword" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Virtual library</title>
<meta name="keywords" content="village, theme, free css template, free templates, website templates, templatemo, CSS, HTML" />
<meta name="description" content="Village Theme - free css template for everyone" />

    <style type="text/css">
        .b
       {
            overflow: hidden;

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
       
        <br />
        <br />
        <br />
    <br />
    <br />
    <br />
     <div class="ccode">
         <br />
         Enter&nbsp; new password:<br />
         <asp:TextBox ID="TextBox1" runat="server" CssClass="style6" Height="30px" 
             Width="195px" TextMode="Password"></asp:TextBox>
              <br />
         confirm password:<br />
              <asp:TextBox ID="TextBox2" runat="server" CssClass="style6" Height="30px" 
             Width="195px" TextMode="Password"></asp:TextBox>
         <br />
         <br />
         <asp:Button ID="Button1" runat="server" BackColor="#F5F5F5" CssClass="login" 
             Height="27px" Text="Submit" Width="93px" ValidationGroup="signupgroup" />
         &nbsp;&nbsp;&nbsp;
         <br />
         <br />
     </div>
    <br />
    <br />
     <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
     </asp:ToolkitScriptManager>
    <br />
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
     ControlToValidate="TextBox1" Display="Dynamic" 
     ErrorMessage="please enter password." ValidationGroup="signupgroup"></asp:RequiredFieldValidator>
 <asp:ValidatorCalloutExtender ID="RequiredFieldValidator5_ValidatorCalloutExtender" 
     runat="server" Enabled="True" HighlightCssClass="CustomValidatorCalloutStyle" TargetControlID="RequiredFieldValidator5" 
     WarningIconImageUrl="a.png" CssClass="CustomValidatorCalloutStyle" 
     Width="190px"></asp:ValidatorCalloutExtender>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
     ControlToValidate="TextBox2" Display="Dynamic" 
     ErrorMessage="please Re- enter password." ValidationGroup="signupgroup"></asp:RequiredFieldValidator>
 <asp:ValidatorCalloutExtender ID="RequiredFieldValidator6_ValidatorCalloutExtender" 
     runat="server" Enabled="True" HighlightCssClass="CustomValidatorCalloutStyle" TargetControlID="RequiredFieldValidator6" 
     WarningIconImageUrl="a.png" CssClass="CustomValidatorCalloutStyle" 
     Width="200px"></asp:ValidatorCalloutExtender>
 <asp:CompareValidator ID="CompareValidator1" runat="server" 
     ControlToCompare="TextBox1" ControlToValidate="TextBox2" 
     ErrorMessage="Password dont match." ValidationGroup="signupgroup"></asp:CompareValidator>
 <asp:ValidatorCalloutExtender ID="CompareValidator1_ValidatorCalloutExtender" 
     runat="server" CssClass="CustomValidatorCalloutStyle" Enabled="True" TargetControlID="CompareValidator1" 
     WarningIconImageUrl="a.jpg" Width="190px"></asp:ValidatorCalloutExtender>
    <br />
	<div id="footer">
    
       
    </div>
    </form>
    </div>
</body>
</html>

