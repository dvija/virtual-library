<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="book.aspx.vb" Inherits="virtual_library.book" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head  runat="server" >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Virtual library</title>
<meta name="keywords" content="village, theme, free css template, free templates, website templates, templatemo, CSS, HTML" />
<meta name="description" content="Village Theme - free css template for everyone" />
   <link href="../css/Rate.css" rel="stylesheet" type="text/css" />
    
</head>
<body id="b1">
    <form id="form1" runat="server">
   <div id="indexheader">
   <div id="logo">
   <asp:Label ID="Label1" runat="server" Font-Size="50px" ForeColor="#CA942F" 
            Text="Virtual library"></asp:Label>
       </div>    
        <div id="homelink">
            <asp:HyperLink 
            ID="HyperLink4" runat="server" Font-Bold="True" Font-Names="Book Antiqua" 
            Font-Size="Small" ForeColor="#CC6600" NavigateUrl="~/users/userhome.aspx">Home</asp:HyperLink>
        </div>
  
</div>

<div id="mainforbookread">
 <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
   

   <div id="bookdescription">
   <div id="bookimage">
       <asp:ImageButton ID="ImageButton1" runat="server" Height="167px" 
           ImageUrl="~/image/profilepic.png" Width="144px" />
   </div>


    &nbsp;&nbsp;<br />
       Book description<br />
       <br />
       <br />
       <br />
       <br />
       &nbsp;<br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <br />
       <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" 
           Font-Size="Medium" ForeColor="#D5AC31"></asp:Label>
       <br />
       <br />
       Rate :<br />
       <br />
       &nbsp;&nbsp;<asp:Rating ID="Rating1" BehaviorID="Rating1" runat="server"  MaxRating="5" RatingAlign="Horizontal" RatingDirection="LeftToRightTopToBottom" StarCssClass="ratingStar" WaitingStarCssClass="savedRatingStar" 
        FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar" AutoPostBack="True">

        </asp:Rating> 
    
       <br />
       <br />
       <br />
    
       <br />
       <br />
       <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
           BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
           CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" 
           GridLines="Horizontal" Height="152px" Width="237px">
           <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
           <Fields>
               <asp:BoundField DataField="publishername" HeaderText="publishername" 
                   SortExpression="publishername" />
               <asp:BoundField DataField="authorname" HeaderText="authorname" 
                   SortExpression="authorname" />
               <asp:BoundField DataField="description" HeaderText="description" 
                   SortExpression="description" />
           </Fields>
           <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
           <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
       </asp:DetailsView>
       <br />
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
           ConnectionString="<%$ ConnectionStrings:virtuallibraryConnectionString %>" 
           SelectCommand="SELECT [publishername], [authorname], [description] FROM [bookdata]">
       </asp:SqlDataSource>
    </div>
    
    
    <div class="mainsection" >
    <iframe id="I1" runat="server" name="I1" 
            style="WIDTH: 772px; HEIGHT: 828px; background-color:Gray;" >
    </iframe>
       

   
   

 
    </div>
	<div id="footer">
      </div> 
    </div>
    </form>
</body>
</html>

