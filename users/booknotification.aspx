<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="booknotification.aspx.vb" Inherits="virtual_library.notification2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Virtual library</title>
<meta name="keywords" content="village, theme, free css template, free templates, website templates, templatemo, CSS, HTML" />
<meta name="description" content="Village Theme - free css template for everyone" />

    <link href="../css/profilemaster.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            font-family: Chiller;
            font-size: xx-large;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
	<div id="indexheader" class="style1" style="font-size: xx-small">
    	

<div id="logobooknotification">
<asp:Label ID="Label1" runat="server" Font-Size="40px" ForeColor="#CA942F" 
            Text="Virtual library"></asp:Label>
            </div>
<div id="friendreqbooknotification">
  <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/image/friendRequest.png" />
</div>

<div id="notificationbooknotification">
 <asp:ImageButton ID="ImageButton3" runat="server"  ImageUrl="~/image/globe.png" />
              <asp:Label ID="Label2" runat="server" BackColor="Red" Font-Bold="True" 
            Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="White"></asp:Label></div>

<div id="msgboxbooknotification">
  <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/msgr.png" />
</div>
<div id="proimagebooknotification">
<asp:Image ID="Image1" runat="server" Height="44px" Width="38px" 
        ImageUrl="~/image/profilepic.png" />
</div>
<div id="menubooknotification">
    <asp:Menu ID="Menu1" runat="server" ForeColor="#F4F2E9">
        <DynamicHoverStyle BackColor="White" BorderColor="Maroon" BorderStyle="Solid" 
            BorderWidth="1px" CssClass="menu" ForeColor="Maroon" />
        <DynamicMenuItemStyle BackColor="White" BorderColor="Maroon" 
            ForeColor="#996633" />
        <DynamicMenuStyle BorderColor="Maroon" />
        <DynamicSelectedStyle BorderColor="Maroon" />
        <Items>
            <asp:MenuItem Text="." Value="New Item" >
                <asp:MenuItem NavigateUrl="~/users/userownprofile.aspx" Text="username" 
                    Value="username"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/users/userownprofile.aspx" Text="myprofile" 
                    Value="myprofile"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/users/edituserprofile.aspx" Text="Edit profile" 
                    Value="Edit profile"></asp:MenuItem>
                <asp:MenuItem Text="Log out" 
                    Value="Log out"></asp:MenuItem>
            </asp:MenuItem>
        </Items>
        <StaticHoverStyle BorderColor="Maroon" />
        <StaticMenuItemStyle BorderColor="Maroon" />
        <StaticMenuStyle BorderColor="Maroon" />
        <StaticSelectedStyle BorderColor="Maroon" />
    </asp:Menu>
</div>
    </div>

<div id="main">
    
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div id="viewnotifications">
<asp:DataList ID="DataList1" runat="server" Width="827px" CellPadding="4" 
            ForeColor="#333333">
    <AlternatingItemStyle BackColor="White" />
    <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <ItemStyle BackColor="#E3EAEB" />
<ItemTemplate>


<tr >

<td width="75%" style="color: #FF0000; font-weight: bold" >
   <br /> <asp:Image ID="Image1" runat="server"  Height="150" ImageUrl='<%# Eval("bookid", "../ShowImage.ashx?id={0}")%>'
    Width="100" />
                      
</td>

</tr>


<tr>

<td>
</td>
</tr>

<tr >
<td width="75%" style="color: #0000FF; font-weight: bold"><br />
<asp:Label ID="lbl" runat="server" Text='<%# Eval("bookname") %>'></asp:Label>
</td>
</tr>


<tr >
<td width="50%" style="color: #009900; font-weight: bold"><br />
<span style="color: Black; font-weight: bold;">ProductDetails:</span>
<asp:Label ID="lbl2" runat="server" Text='<%#Eval("description") %>'></asp:Label>
</td>
</tr>


<tr >
<td width="75%" style="color: #FF0000; font-weight: bold"><br /><span style="color: Black; font-weight: bold;">subject:</span>
<asp:Label ID="lbl3" runat="server" Text='<%#Eval("subject") %>'></asp:Label>
</td>
</tr>


<tr>
<td>
&nbsp;
</td>
</tr>
</table> 
</ItemTemplate>
    <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
</asp:DataList>
</div>
<br />
	<div id="footer">
    
       
    </div> 
    <asp:Label ID="Label3" runat="server" Text="no any notification" 
        Visible="False" style="font-size: large"></asp:Label>
    </div>
</form>
</body>
</html>