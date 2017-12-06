<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="userhome.aspx.vb" Inherits="virtual_library.notification" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajax" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Virtual Library</title>

<meta name="keywords" content="village, theme, free css template, free templates, website templates, templatemo, CSS, HTML" />
<meta name="description" content="Village Theme - free css template for everyone" />

    <link href="../css/profilemaster.css" rel="stylesheet" type="text/css" />
   
<script type="text/javascript" language="javascript">
    function checkFileExtension(elem) {
        var obj1 = document.getElementById("FileUpload2");
        var filePath = elem.value;
        if (filePath.indexOf('.') == -1)
            return false;
        var validExtensions = new Array();
        var ext = filePath.substring(filePath.lastIndexOf('.') + 1).toLowerCase();
        //            validExtensions[0] = 'jpg';
        //            validExtensions[1] = 'jpeg';
        //            validExtensions[2] = 'bmp';
        //            validExtensions[3] = 'png';
        //            validExtensions[4] = 'gif';
        //            validExtensions[5] = 'tif';
        //            validExtensions[6] = 'tiff';
        //            validExtensions[7] = 'txt';
        //            validExtensions[8] = 'doc';
        //            validExtensions[9] = 'xls';
        validExtensions[0] = 'pdf';
        for (var i = 0; i < validExtensions.length; i++) {
            if (ext == validExtensions[i])
                return true;
        }
        alert('The file extension ' + ext.toUpperCase() + ' is not allowed!     please choose only file in pdf format');
        obj1.value = "";
        return false;
    }




    function checkFileExtension1(elem) {
        var obj1 = document.getElementById("FileUpload1");
        var filePath = elem.value;
        if (filePath.indexOf('.') == -1)
            return false;
        var validExtensions = new Array();
        var ext = filePath.substring(filePath.lastIndexOf('.') + 1).toLowerCase();
        validExtensions[0] = 'jpg';
        validExtensions[1] = 'jpeg';
        validExtensions[2] = 'bmp';
        validExtensions[3] = 'png';
        validExtensions[4] = 'gif';
        validExtensions[5] = 'tif';
        validExtensions[6] = 'tiff';
        //            validExtensions[7] = 'txt';
        //            validExtensions[8] = 'doc';
        //            validExtensions[9] = 'xls';
        //validExtensions[0] = 'pdf';
        for (var i = 0; i < validExtensions.length; i++) {
            if (ext == validExtensions[i])
                return true;
        }

        obj1.value = "";
        alert('The file extension ' + ext.toUpperCase() + ' is not allowed!                 please  choose only image file(jpg,bmp,jpeg,png,gif,tif,tiff)');
        return false;
    }
</script>

    <style type="text/css">
        .style1
        {
            font-family: Chiller;
            font-size: xx-large;
        }
        .style2
        {
            height: 22px;
            width: 521px;
        }
        .style3
        {
            height: 22px;
            width: 356px;
        }
        .style10
        {
            height: 22px;
            width: 193px;
        }
        .style11
        {
            text-align: left;
            width: 356px;
        }
        .style12
        {
            height: 22px;
            width: 1088px;
        }
        .style13
        {
            width: 1088px;
        }
        .style14
        {
            width: 100%;
        }
        
        
        
 
.fancy-green .ajax__tab_header
{
background: url(../image/green_bg_Tab.gif) repeat-x;
cursor:pointer;
}
.fancy-green .ajax__tab_hover .ajax__tab_outer, .fancy-green .ajax__tab_active .ajax__tab_outer
{
background: url(../image/green_left_Tab.gif) no-repeat left top;
}
.fancy-green .ajax__tab_hover .ajax__tab_inner, .fancy-green .ajax__tab_active .ajax__tab_inner
{
background: url(../image/green_right_Tab.gif) no-repeat right top;
}
.fancy .ajax__tab_header
{
font-size: 13px;
font-weight: bold;
color: #000;
font-family: sans-serif;
}
.fancy .ajax__tab_active .ajax__tab_outer, .fancy .ajax__tab_header .ajax__tab_outer, .fancy .ajax__tab_hover .ajax__tab_outer
{
height: 46px;
}
.fancy .ajax__tab_active .ajax__tab_inner, .fancy .ajax__tab_header .ajax__tab_inner, .fancy .ajax__tab_hover .ajax__tab_inner
{
height: 46px;
margin-left: 16px; /* offset the width of the left image */
}
.fancy .ajax__tab_active .ajax__tab_tab, .fancy .ajax__tab_hover .ajax__tab_tab, .fancy .ajax__tab_header .ajax__tab_tab
{
margin: 16px 16px 0px 0px;
}
.fancy .ajax__tab_hover .ajax__tab_tab, .fancy .ajax__tab_active .ajax__tab_tab
{
color: #fff;
}
.fancy .ajax__tab_body
{
font-family: Arial;
font-size: 10pt;
border-top: 0;
border:1px solid #999999;
padding: 8px;
background-color: #ffffff;
  border-style: none;
}
        .style15
        {
            width: 1088px;
            height: 29px;
        }
        .style17
        {
            text-align: left;
            width: 356px;
            height: 29px;
        }
        .style18
        {
            height: 29px;
        }
        
         .style1
        {
     border-width:10px;
     border-color:Maroon;
        }
        
        .style19
        {
            width: 193px;
        }
        .style20
        {
            width: 193px;
            height: 29px;
        }
        
        .style22
        {
            height: 22px;
            width: 900px;
        }
        .style25
        {
            width: 900px;
            text-align: left;
            height: 22px;
        }
        .style28
        {
            height: 22px;
            width: 534px;
        }
        .style29
        {
            width: 534px;
            text-align: left;
        }
        .style32
        {
            width: 1475px;
            height: 14px;
        }
        .style33
        {
            width: 900px;
            text-align: left;
            height: 14px;
        }
        .style34
        {
            width: 617px;
            height: 14px;
        }
        .style37
        {
            height: 22px;
            width: 730px;
        }
        .style38
        {
            width: 730px;
            height: 14px;
        }
                
        .style40
        {
            width: 1475px;
            height: 40px;
        }
        .style41
        {
            width: 900px;
            text-align: left;
            height: 40px;
        }
        .style42
        {
            width: 617px;
            height: 40px;
        }
        .style43
        {
            width: 730px;
            height: 40px;
        }
        .style50
        {
            height: 22px;
            width: 633px;
        }
        .style51
        {
            width: 900px;
            text-align: left;
        }
        
        .style60
        {
            width: 730px;
        }
        
        .style61
        {
            height: 22px;
            width: 1475px;
        }
        .style62
        {
            width: 1475px;
        }
        .style63
        {
            width: 617px;
        }
        
        .style64
        {
            height: 22px;
            width: 1566px;
        }
        .style65
        {
            width: 1566px;
        }
        .style66
        {
            width: 1566px;
            height: 40px;
        }
        .style67
        {
            width: 1566px;
            height: 14px;
        }
        .style70
        {
            width: 633px;
            text-align: left;
        }
        
     </style>

    <link href="../css/Rate.css" rel="stylesheet" type="text/css" />

</head>
<body>
<form id="form1" runat="server">
<div id="indexheader" class="style1" style="font-size: xx-small">    	
<div id="header_middle">
<div id="logo1">
<asp:Label ID="Label1" runat="server" Font-Size="40px" ForeColor="#CA942F" 
            Text="Virtual library"></asp:Label>
            </div>
<div id="friendreq">
  <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/image/friendRequest.png" />
</div>

<div id="notification">
 <asp:ImageButton ID="ImageButton3" runat="server"  ImageUrl="~/image/globe.png" />
              <asp:Label ID="Label2" runat="server" BackColor="Red" Font-Bold="True" 
            Font-Names="Comic Sans MS" Font-Size="Large" ForeColor="White"></asp:Label></div>

<div id="msgbox">
  <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/msgr.png" />
</div>
<div id="proimage">
<asp:Image ID="Image1" runat="server" Height="38px" Width="38px" 
        ImageUrl="~/image/profilepic.png" />
</div>
<div id="menu">
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
</div>






<div id="main">
  <ajax:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </ajax:ToolkitScriptManager>
  <table class="style14" >
        <tr>
      <td>
                &nbsp;</td>
       
       
       
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
           
        </tr>
        <tr>
      <td>
                &nbsp;</td>
       
       
       
            <td>
                <%--<ajax:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1" BackColor="#ECEBD9" 
                    BorderStyle="None" Font-Names="Chiller" Font-Size="Larger" ForeColor="#C99D18" 
                   CssClass="fancy fancy-green">
        --%>

        <ajax:TabContainer ID="TabContainer1" runat="server" CssClass="fancy fancy-green" 
                    ActiveTabIndex="2" >
       
       
       
       
       
       
       
         
<ajax:TabPanel ID="TabPanel1" runat="server" HeaderText="TabPanel1" >
 <HeaderTemplate>Home</HeaderTemplate>
<ContentTemplate>
<asp:Panel ID="UserReg" runat="server">
<table >
<tr>
<td class="style2">
</td>
<td align="right" class="style50" ></td>
<td align="center" class="style2">
&nbsp;</td>
 </tr>
 <tr><td></td><td align="right" class="style70" >Welcome</td>
 <td>&nbsp;</td></tr>
 <tr><td></td><td align="right" class="style70" >
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td><td>&nbsp;</td></tr><tr><td></td>
    <td class="style70"></td><td align="left" >&nbsp;</td></tr>
 </table>
 </asp:Panel>
 </ContentTemplate>
</ajax:TabPanel>



















  



















<ajax:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
<HeaderTemplate>Advance search</HeaderTemplate>
<ContentTemplate>
<asp:Panel ID="Panel2" runat="server" Height="520px" Width="606px">
<table>
<tr><td class="style12">&nbsp;</td>
<td class="style10"></td><td align="right" class="style3" ></td>
<td align="center" class="style2">&#160;</td>
</tr>
<tr>
<td class="style13">&nbsp;</td>
<td class="style19"></td>
<td align="right" class="style11" >
    Searchby: 
</td>
<td><asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"  Height="26px" Width="214px">
 <asp:ListItem>Select One</asp:ListItem>
 <asp:ListItem>Author Name</asp:ListItem>
 <asp:ListItem>Publication</asp:ListItem>
 <asp:ListItem>Department</asp:ListItem>
 <asp:ListItem>Popularity</asp:ListItem>
 <asp:ListItem>Book Name</asp:ListItem>
 </asp:DropDownList>
 </td>
 </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td class="style19">
            &nbsp;</td>
        <td align="right" class="style11">
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                CssClass="style3" Width="215px">
                <asp:ListItem Selected="True">Select one</asp:ListItem>
                <asp:ListItem>Computer</asp:ListItem>
                <asp:ListItem>Mechanical</asp:ListItem>
                <asp:ListItem>Electrical</asp:ListItem>
                <asp:ListItem>Civil</asp:ListItem>
                <asp:ListItem>General knowledge</asp:ListItem>
                <asp:ListItem>EC</asp:ListItem>
                <asp:ListItem>Automobile</asp:ListItem>
                <asp:ListItem>Chemical</asp:ListItem>
                <asp:ListItem>Mathematics</asp:ListItem>
                <asp:ListItem>Physics</asp:ListItem>
                <asp:ListItem>Buisness management</asp:ListItem>
                <asp:ListItem>Architecture</asp:ListItem>
                <asp:ListItem>Compititive exams</asp:ListItem>
                <asp:ListItem>Science</asp:ListItem>
                <asp:ListItem>Personality development</asp:ListItem>
                <asp:ListItem>Entertainment and others</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
 <tr>
 <td class="style13">
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:vl %>" 
         SelectCommand="SELECT [subject] FROM [booksubject] WHERE (([department] = @department) AND ([sem] = @sem))">
         <SelectParameters>
             <asp:ControlParameter ControlID="DropDownList4" Name="department" 
                 PropertyName="SelectedValue" Type="String" />
             <asp:ControlParameter ControlID="DropDownList2" Name="sem" 
                 PropertyName="SelectedValue" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>
     </td>
 <td class="style19">&#160;</td>
 <td align="right" class="style11">
                    <br />
<asp:Label ID="Label12" runat="server" Text="Select Semester" Visible="False"></asp:Label>
 </td><td>
 <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                            Height="16px" Visible="False" Width="210px">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>Select one</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>General</asp:ListItem>
                        </asp:DropDownList>
                    </td></tr><tr><td class="style15"></td><td class="style20"></td>
                    <td align="right" class="style17"><asp:Label ID="Label3" runat="server" 
                            style="text-align: left"></asp:Label></td>
                    <td class="style18"><asp:TextBox ID="TextBox1" runat="server" Height="26px" Visible="False" 
                Width="194px"></asp:TextBox><asp:ImageButton ID="ImageButton4" runat="server" Height="26px" 
                ImageUrl="~/image/magnifying_glass-f6b50ce529bb372c2503aa1c685a2505.png" 
                Visible="False" /></td></tr>
                <tr>
                    <td class="style15">
                        &nbsp;</td>
                    <td class="style20">
                        &nbsp;</td>
                    <td align="right" class="style17">
                        <asp:Label ID="Label5" runat="server" Text="Select subject" Visible="False"></asp:Label>
                    </td>
                    <td class="style18">
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource1" DataTextField="subject" DataValueField="subject" 
                            Visible="False" Height="18px" Width="210px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style15">
                        &nbsp;</td>
                    <td class="style20">
                        &nbsp;</td>
                    <td align="right" class="style17">
                        &nbsp;</td>
                    <td class="style18">
                        &nbsp;</td>
    </tr>
                <tr><td class="style13">&#160;</td><td colspan="3"><br />
                
                <div id="showserchedbooks">


                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        Font-Names="Arial" Width="729px" AllowPaging="True"  
                        OnPageIndexChanging = "OnPaging" PageSize="3" CellPadding="4" 
                        ForeColor="#333333" GridLines="None" Height="302px" 
                        style="margin-top: 66px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns><asp:TemplateField><ItemTemplate>
    
    <asp:ImageButton ID="Image1" runat="server" Height="50" 
                            ImageUrl='<%# Eval("bookid", "../ShowImage.ashx?id={0}")%>' 
                            Width="50" />
                            
                            
                            
                            </ItemTemplate></asp:TemplateField><asp:BoundField DataField="category" HeaderText="Category" />
                            <asp:BoundField DataField="subject" HeaderText="Subject" />
                            <asp:BoundField DataField="bookname" HeaderText="Book Name" />
                            <asp:BoundField DataField="publishername" HeaderText="Publisher Name" />
                            <asp:BoundField DataField="authorname" HeaderText="Author Name" />
                            <asp:BoundField DataField="description" HeaderText="Description" />


                            <asp:TemplateField><ItemTemplate>
                            <asp:LinkButton ID="read" Text = "Read Book" CommandArgument = '<%# Eval("bookid") %>' runat="server" OnClick = "read">
                            </asp:LinkButton></ItemTemplate></asp:TemplateField>

                            <asp:TemplateField><ItemTemplate>
                            <asp:LinkButton ID="lnkDownload" Text = "Download" CommandArgument = '<%# Eval("bookid") %>' runat="server" OnClick = "DownloadFile">
                            </asp:LinkButton></ItemTemplate></asp:TemplateField></Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#EBD17A" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#EBD17A" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#F7EDCA" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F7EDCA" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                 </div> </td></tr></table></asp:Panel>
  </ContentTemplate>
 </ajax:TabPanel>



 
       
         
<ajax:TabPanel ID="TabPanel3" runat="server" HeaderText="TabPanel1" >
 <HeaderTemplate>send content</HeaderTemplate>
<ContentTemplate>
<asp:Panel ID="Panel3" runat="server" Height="314px" Width="744px">


















<table style="height: 122px; width: 340px" >

<tr>
<td class="style64">
    &nbsp;</td>
    <td class="style61">
    </td>
<td align="right" class="style22" ></td>
    <td class="style63">
        <asp:Label ID="Label6" runat="server" BackColor="#FFFF99" Font-Size="Small" 
            ForeColor="#CC6600"></asp:Label>
        <br />
    </td>
    <td class="style60">
        &nbsp;</td>
    <td align="center" class="style28">
        &nbsp;</td>
 </tr>
 <tr><td class="style65">&nbsp;</td>
     <td class="style62">
     </td>
     <td align="right" class="style51" >BookName:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
     <td class="style63">
         <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
     </td>
     <td class="style60">
         &nbsp;</td>
     <td class="style29">
         &nbsp;</td>
    </tr>
 <tr><td class="style66">&nbsp;</td>
     <td class="style40">
     </td>
     <td align="right" class="style41" >Author Name:</td>
     <td class="style42">
         <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
     </td>
     <td class="style43">
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
    </tr><tr>
    <td class="style64">&nbsp;</td>
        <td class="style61">
        </td>
        <td class="style25">Publisher Name:</td>
        <td align="left" class="style50">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td align="left" class="style37">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style65">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        <td class="style62">
            &nbsp;</td>
        <td class="style51">
            Description:&nbsp;&nbsp; </td>
        <td align="left" class="style63">
            <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td align="left" class="style60">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style65">
            &nbsp;</td>
        <td class="style62">
            &nbsp;</td>
        <td class="style51">
            Book Cover:</td>
        <td align="left" class="style63">
            <asp:FileUpload ID="FileUpload1" runat="server" onchange="return checkFileExtension1(this);"/>
        </td>
        <td align="left" class="style60">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style65">
            &nbsp;</td>
        <td class="style62">
            &nbsp;</td>
        <td class="style51">
            Book Data:</td>
        <td align="left" class="style63">
            <asp:FileUpload ID="FileUpload2" runat="server" onchange="return checkFileExtension(this);"/>
        </td>
        <td align="left" class="style60">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style67">
            &nbsp;</td>
        <td class="style32">
        </td>
        <td class="style33">
        </td>
        <td align="left" class="style34">
        </td>
        <td align="left" class="style38">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style65">
            &nbsp;</td>
        <td class="style62">
            &nbsp;</td>
        <td class="style51">
            &nbsp;</td>
        <td align="left" class="style63">
            <asp:Button ID="Button1" runat="server" Text="send Content" />
        </td>
        <td align="left" class="style60">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style65">
            &nbsp;</td>
        <td class="style62">
            &nbsp;</td>
        <td class="style51">
            &nbsp;</td>
        <td align="left" class="style63">
            &nbsp;</td>
        <td align="left" class="style60">
            &nbsp;</td>
    </tr>
    
 </table>
 </asp:Panel>
 </ContentTemplate>
</ajax:TabPanel>

       



   </ajax:TabContainer>

            </td>
            <td>
                &nbsp;</td>
           
        </tr>
    </table>


   
   
	<div id="footer">
    </div>
    </div>
    </form>
</body>
</html>
