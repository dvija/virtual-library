<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="virtual_library.index" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Virtual library</title>



<script type = "text/javascript" >

    function preventBack() { window.history.forward(); }

    setTimeout("preventBack()", 0);

    window.onunload = function () { null };

</script>

<script type = "text/javascript" >

    function preventBack() { window.history.forward(); }

    setTimeout("preventBack()", 0);

    window.onunload = function () { null };

</script>


<style type="text/css">
     .style1
    {
        width: 297px;
        height: 50px;
    }
   .style702
     {
            font-family: Calibri;
            font-size: small;
            color: #808080;
      }
  .style713
        {
            font-size: medium;
        }
                             
  .style715
    {
        width: 650px;
        padding-left:10px;
    }
  </style>
<link href="css/vlhome.css" rel="stylesheet" type="text/css" />
</head>
<body>
 <form id="form1" runat="server">
 <div id="indexheader">
<div id="header_middle" class="style1" style="font-size: xx-small">
</div></div>
<div id="logo">
 <asp:Label ID="Label1" runat="server" Font-Size="60px" ForeColor="#CA942F" 
            Text="Virtual library"></asp:Label>
  </div>    
 <div id="login" class="style1">
   

        <asp:TextBox ID="TextBox1" runat="server" BackColor="#F5F5F0" 
                        Height="20px" Width="130px" placeholder="Username or Emailid" 
                        CssClass="login_comp" ValidationGroup="logingroup"  ></asp:TextBox>

             <asp:TextBox ID="TextBox2" runat="server" BackColor="#F5F5F0" 
                       Height="20px" Width="130px" placeholder="Password" 
                        CssClass="login_comp" TextMode="Password" 
            ValidationGroup="logingroup"  ></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Log in" BackColor="#F5F5F5" Height="27px" 
                        CssClass="login" ValidationGroup="logingroup" />
        
    
                    <asp:CheckBox ID="CheckBox1" runat="server" CssClass="style702" 
                        Text="Remember me" />
        
    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
    
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style702" 
            NavigateUrl="~/users/forgotpassword.aspx">Forgot it?</asp:HyperLink>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         </div>
         <div id="invalidlogin">
                            <asp:Label runat="server" BackColor="#FFFF99" Font-Size="Small" 
                 ForeColor="#CC6600" ID="Label3" Visible="False">Invalid id or password</asp:Label>

                        </div>
 <div id="main">
<div class="mainhighratebooks">
    <table class="style715" >
        <caption class="style713">
            Top rated books</caption>
        <tr>
            <td class="table_highrart_new_avail_r1">
                &nbsp;</td>
            <td class="table_highrart_new_avail_r1">
                &nbsp;</td>
            <td class="table_highrart_new_avail_r1">
                &nbsp;</td>
            <td class="table_highrart_new_avail_r1">
                &nbsp;</td>
            <td class="table_highrart_new_avail_r1">
                &nbsp;</td>
            <td class="table_highrart_new_avail_r1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="table_highrart_new_avail_r2">
                <asp:ImageButton ID="Image1" runat="server" width="90" Height="140px"/>
            </td>
            <td class="table_highrart_new_avail_r2">
                <asp:ImageButton ID="Image2" runat="server" width="90px" Height="140px"/>
            </td>
            <td class="table_highrart_new_avail_r2">
                <asp:ImageButton ID="Image3" runat="server" width="90" Height="140px"/>
            </td>
            <td class="table_highrart_new_avail_r2">
                <asp:ImageButton ID="Image4" runat="server" width="90" Height="140px"/>
            </td>
            <td class="table_highrart_new_avail_r2">
                <asp:ImageButton ID="Image5" runat="server" width="90" Height="140px"/>
            </td>
            <td class="table_highrart_new_avail_r2">
                <asp:ImageButton ID="Image6" runat="server" Height="140px" Width="90px" />
            </td>
        </tr>
    </table>

</div>

 <div id="signup">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <br />
&nbsp;<br />
     &nbsp;&nbsp;
     <br />
                New here? Create a free account!       <br />
     <br />
     <br />
&nbsp;
   

        <asp:TextBox ID="TextBox3" runat="server" CssClass="signup_comp"  placeholder="Username" 
                        size="30px" ValidationGroup="signupgroup"></asp:TextBox>

                    <br />
     <br />
&nbsp;
   

        <asp:TextBox ID="TextBox4" runat="server" CssClass="signup_comp"  
        size="30px" placeholder="Email address" ValidationGroup="signupgroup"></asp:TextBox>

                    <br />
     <br />
&nbsp;
   

        <asp:TextBox ID="TextBox5" runat="server" CssClass="signup_comp"  
        size="30px" placeholder="Password" 
                        TextMode="Password" ValidationGroup="signupgroup"></asp:TextBox>

                    <br />
     <br />
&nbsp;
   

        <asp:TextBox ID="TextBox6" runat="server" CssClass="signup_comp"  
                        placeholder="Confirm Password" size="30px"
         TextMode="Password" ValidationGroup="signupgroup"></asp:TextBox>

     &nbsp;&nbsp;&nbsp;&nbsp;
     <br />
&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Sign up" 
                       EnableTheming="True" BackColor="#3366CC" CssClass="signupbtn" 
                        ForeColor="White" Height="44px" 
         ValidationGroup="signupgroup" Width="82px" />
        
    
&nbsp;
                
    
                    </div>
 <br />

 <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
 </asp:ToolkitScriptManager>
<div class="mainnewavailablebooks">
 <table class="style715" >
        <caption class="style713">
            Recently added books</caption>
        <tr>
            <td class="table_highrart_new_avail_r1">
                &nbsp;</td>
            <td class="table_highrart_new_avail_r1">
                &nbsp;</td>
            <td class="table_highrart_new_avail_r1">
                &nbsp;</td>
            <td class="table_highrart_new_avail_r1">
                &nbsp;</td>
            <td class="table_highrart_new_avail_r1">
                &nbsp;</td>
            <td class="table_highrart_new_avail_r1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="table_highrart_new_avail_r2">
                <asp:ImageButton ID="Image7" runat="server" width="90" Height="140px"/>
            </td>
            <td class="table_highrart_new_avail_r2">
                <asp:ImageButton ID="Image8" runat="server" width="90px" Height="140px"/>
            </td>
            <td class="table_highrart_new_avail_r2">
                <asp:ImageButton ID="Image9" runat="server" width="90" Height="140px"/>
            </td>
            <td class="table_highrart_new_avail_r2">
                <asp:ImageButton ID="Image10" runat="server" width="90" Height="140px"/>
            </td>
            <td class="table_highrart_new_avail_r2">
                <asp:ImageButton ID="Image11" runat="server" width="90" Height="140px"/>
            </td>
            <td class="table_highrart_new_avail_r2">
                <asp:ImageButton ID="Image12" runat="server" Height="140px" Width="90px" />
            </td>
        </tr>
    </table>
</div>

   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
     ControlToValidate="TextBox1" Display="Dynamic" 
     ErrorMessage="please enter email id." ValidationGroup="logingroup"></asp:RequiredFieldValidator>
 <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" 
     runat="server" Enabled="True" HighlightCssClass="CustomValidatorCalloutStyle" 
     PopupPosition="BottomLeft" TargetControlID="RequiredFieldValidator1" 
     WarningIconImageUrl="a.png" CssClass="CustomValidatorCalloutStyle" 
     Width="200px">
 </asp:ValidatorCalloutExtender>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
     ControlToValidate="TextBox2" Display="Dynamic" 
     ErrorMessage="please enter password." ValidationGroup="logingroup"></asp:RequiredFieldValidator>
 <asp:ValidatorCalloutExtender ID="RequiredFieldValidator2_ValidatorCalloutExtender" 
     runat="server" Enabled="True" HighlightCssClass="CustomValidatorCalloutStyle" 
     PopupPosition="BottomLeft" TargetControlID="RequiredFieldValidator2" 
     WarningIconImageUrl="a.png" CssClass="CustomValidatorCalloutStyle" 
     Width="200px">
 </asp:ValidatorCalloutExtender>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
     ControlToValidate="TextBox3" Display="Dynamic" 
     ErrorMessage="please enter username." ValidationGroup="signupgroup"></asp:RequiredFieldValidator>
 <asp:ValidatorCalloutExtender ID="RequiredFieldValidator3_ValidatorCalloutExtender" 
     runat="server" Enabled="True" HighlightCssClass="CustomValidatorCalloutStyle" 
     PopupPosition="BottomLeft" TargetControlID="RequiredFieldValidator3" 
     WarningIconImageUrl="a.png" CssClass="CustomValidatorCalloutStyle" 
     Width="200px">
 </asp:ValidatorCalloutExtender>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
     ControlToValidate="TextBox4" Display="Dynamic" 
     ErrorMessage="please enter email id." ValidationGroup="signupgroup"></asp:RequiredFieldValidator>
 <br />
 <asp:ValidatorCalloutExtender ID="RequiredFieldValidator4_ValidatorCalloutExtender" 
     runat="server" Enabled="True" HighlightCssClass="CustomValidatorCalloutStyle" 
     PopupPosition="BottomLeft" TargetControlID="RequiredFieldValidator4" 
     WarningIconImageUrl="a.png" CssClass="CustomValidatorCalloutStyle" 
     Width="200px">
 </asp:ValidatorCalloutExtender>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
     ControlToValidate="TextBox5" Display="Dynamic" 
     ErrorMessage="please enter password." ValidationGroup="signupgroup"></asp:RequiredFieldValidator>
 <asp:ValidatorCalloutExtender ID="RequiredFieldValidator5_ValidatorCalloutExtender" 
     runat="server" Enabled="True" HighlightCssClass="CustomValidatorCalloutStyle" 
     PopupPosition="BottomLeft" TargetControlID="RequiredFieldValidator5" 
     WarningIconImageUrl="a.png" CssClass="CustomValidatorCalloutStyle" 
     Width="200px">
 </asp:ValidatorCalloutExtender>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
     ControlToValidate="TextBox6" Display="Dynamic" 
     ErrorMessage="please re-enter password." ValidationGroup="signupgroup"></asp:RequiredFieldValidator>
 <asp:ValidatorCalloutExtender ID="RequiredFieldValidator6_ValidatorCalloutExtender" 
     runat="server" Enabled="True" HighlightCssClass="CustomValidatorCalloutStyle" 
     PopupPosition="BottomLeft" TargetControlID="RequiredFieldValidator6" 
     WarningIconImageUrl="a.png" CssClass="CustomValidatorCalloutStyle" 
     Width="200px">
 </asp:ValidatorCalloutExtender>
 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
     ControlToValidate="TextBox4" ErrorMessage="Enter valid emailid." 
     ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
     ValidationGroup="signupgroup"></asp:RegularExpressionValidator>
 <asp:ValidatorCalloutExtender ID="RegularExpressionValidator2_ValidatorCalloutExtender" 
     runat="server" CssClass="CustomValidatorCalloutStyle" Enabled="True" 
     PopupPosition="BottomLeft" TargetControlID="RegularExpressionValidator2" 
     WarningIconImageUrl="a.png" Width="200px">
 </asp:ValidatorCalloutExtender>
 <asp:CompareValidator ID="CompareValidator1" runat="server" 
     ControlToCompare="TextBox5" ControlToValidate="TextBox6" 
     ErrorMessage="Password dont match." ValidationGroup="signupgroup"></asp:CompareValidator>
 <asp:ValidatorCalloutExtender ID="CompareValidator1_ValidatorCalloutExtender" 
     runat="server" CssClass="CustomValidatorCalloutStyle" Enabled="True" 
     PopupPosition="BottomLeft" TargetControlID="CompareValidator1" 
     WarningIconImageUrl="a.jpg" Width="200px">
 </asp:ValidatorCalloutExtender>
	<div id="footer">
    
       <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#666666" 
            NavigateUrl="~/admin/adminlogin.aspx" style="text-align: center">Login</asp:HyperLink>
    
       
    </div></div>
</form>
</body>
</html>