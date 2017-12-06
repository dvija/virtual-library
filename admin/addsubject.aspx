<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="addsubject.aspx.vb" Inherits="virtual_library.addsubject" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajax" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Virtual Library</title>
    <style type="text/css">
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
}

.ccode
{
    position: relative;
    margin: auto;
    clear: left;
    height: 200px;
    border: solid 1px #993333;
    z-index: 0;
    border: 1px solid rgb(208, 208, 200);
    background-color: white;
    width: 600px;
    text-align: center;
}


        .style1
        {
            font-family: Chiller;
            font-size: xx-large;
        }
        .style20
        {
            width: 120px;
            text-align: left;
            height: 11px;
        }
        .style21
        {
            width: 100px;
            text-align: left;
            font-weight: bold;
            color: #666666;
            font-size: small;
            height: 11px;
        }
        .style22
        {
            width: 383px;
            text-align: left;
            font-size: medium;
            color: gray;
            height: 11px;
        }
        .style23
        {
            text-align: left;
            height: 11px;
        }
        .style2
        {
            width: 383px;
            text-align: left;
        }
        
        .style6
        {
            text-align: left;
        }
        .style4
        {
            width: 120px;
            text-align: left;
            font-size: medium;
            color: gray;
        }
        .style10
        {
            width: 383px;
            text-align: left;
            font-size: medium;
            color: gray;
            height: 22px;
        }
        .style11
        {
            text-align: left;
            height: 22px;
        }
        .style12
        {
            width: 120px;
            text-align: left;
            height: 26px;
        }
        
        tr
        {
            font-family:Book Antiqua;
        }
        
        .style13
        {
            width: 100px;
            text-align: left;
            font-weight: bold;
            color: #666666;
            font-size: small;
            height: 26px;
        }
        .style14
        {
            width: 383px;
            text-align: left;
            font-size: medium;
            color: gray;
            height: 26px;
        }
        .style15
        {
            text-align: left;
            height: 26px;
        }
        .style25
        {
            width: 100px;
            text-align: left;
            font-weight: bold;
            color: #666666;
            font-size: small;
            height: 20px;
        }
        .style26
        {
            width: 383px;
            text-align: left;
            height: 20px;
        }
        .style27
        {
            text-align: left;
            height: 20px;
        }
        .panel
        { background-image: url('../image/tan-bg-texture.jpg');
        }
        .style44
        {
            width: 100px;
            text-align: left;
            font-weight: bold;
            color: #666666;
            font-size: small;
            height: 22px;
        }
        .style45
        {
            width: 102px;
            text-align: left;
            font-weight: bold;
            color: #666666;
            font-size: small;
        }
        .style50
        {
            width: 100px;
            text-align: left;
            font-weight: bold;
            color: #666666;
            font-size: small;
        }
        .style62
        {
            width: 120px;
            text-align: left;
            height: 20px;
        }
        .style65
        {
            width: 120px;
            text-align: left;
        }
        .style66
        {
            width: 120px;
            text-align: left;
            height: 22px;
        }
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
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <div id="homelink">
     <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#CC6600" 
         NavigateUrl="~/admin/adminhome.aspx">Home</asp:HyperLink>
 </div>      
        <br />
     <br />
     <ajax:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </ajax:ToolkitScriptManager>
      <br />
      <ajax:TabContainer ID="TabContainer1" runat="server" CssClass="fancy fancy-green" 
                    ActiveTabIndex="0">
        <ajax:TabPanel ID="TabPanel1" runat="server" HeaderText="TabPanel1">
            <HeaderTemplate>Add Subject</HeaderTemplate>





<ContentTemplate><asp:Panel ID="UserReg" runat="server" Height="300px"><table class="style1" ><tr>
    <td class="style21" > </td>
    <td class="style21">
    </td>
    <td class="style22">
    </td>
    <td class="style23">
    </td>
    </tr>
    <tr>
        <td class="style21">
            &nbsp;</td>
        <td class="style21">
        </td>
        <td class="style22">
            <asp:Label ID="Label2" runat="server" BackColor="#FFFF99" Font-Size="X-Large" 
                ForeColor="#CC6600"></asp:Label>
        </td>
        <td class="style23">
        </td>
    </tr>
    <tr><td class="style50">&nbsp;</td>
        <td class="style50">
            Select Category:</td>
        <td class="style2">
        <asp:DropDownList ID="DropDownList1" runat="server" 
            CssClass="style3" Width="300px" Height="30px">
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
        <td class="style6">
            &nbsp;</td>
    </tr><tr><td class="style50" >&nbsp;</td>
        <td class="style50">
            &nbsp;</td>
        <td class="style4">&nbsp;</td>
        <td class="style6">
            &nbsp;</td>
    </tr><tr><td class="style50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        <td class="style50">
            Semester:</td>
        <td class="style2" >
            <asp:DropDownList ID="DropDownList2" runat="server" 
                Width="300px" Height="30px">
                <asp:ListItem Selected="True">Select one</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>General</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style44">
            &nbsp;</td>
        <td class="style44">
        </td>
        <td class="style10">
        </td>
        <td class="style11">
        </td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td class="style13">
            Subject:</td>
        <td class="style14">
            <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="290px"></asp:TextBox>
        </td>
        <td class="style15">
        </td>
    </tr>
    <tr>
        <td class="style50">
            &nbsp;</td>
        <td class="style50">
            &nbsp;</td>
        <td class="style2">
            <asp:Button ID="Button1" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
                Font-Size="Small" ForeColor="#000066" Text="ADD SUBJECT" Width="127px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" BackColor="#CCCCCC" 
                Font-Bold="True" Font-Size="Small" ForeColor="#000066" style="height: 26px" 
                Text="RESET" Width="127px" />
        </td>
        <td class="style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style25">
            &nbsp;</td>
        <td class="style25">
        </td>
        <td class="style26">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:vl %>" 
                SelectCommand="SELECT [subject] FROM [booksubject] WHERE (([department] = @department) AND ([sem] = @sem))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="department" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="sem" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td class="style27">
        </td>
    </tr>
    </table></asp:Panel></ContentTemplate>





        </ajax:TabPanel>
      <%--  <ajax:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2" CssClass="panel" BorderStyle="None">
            <HeaderTemplate>Update Subject</HeaderTemplate>

            <ContentTemplate>
                <table class="style1">
                    <tr>
                        <td class="style20">
                            &nbsp;</td>
                        <td class="style21">
                        </td>
                        <td class="style22">
                            <asp:Label ID="Label3" runat="server" BackColor="#FFFF99" Font-Size="X-Large" 
                                ForeColor="#CC6600"></asp:Label>
                        </td>
                        <td class="style23">
                        </td>
                    </tr>
                    <tr>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style5">
                            Select Category:</td>
                        <td class="style2">
                            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                                CssClass="style3" Width="350px">
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
                        <td class="style6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style5">
                            Semester:</td>
                        <td class="style2">
                            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                                Width="350px">
                                <asp:ListItem Selected="True">Select one</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>General</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style9">
                        </td>
                        <td class="style10">
                        </td>
                        <td class="style11">
                        </td>
                    </tr>
                    <tr>
                        <td class="style12">
                        </td>
                        <td class="style13">
                            Subject:</td>
                        <td class="style14">
                            <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" 
                                DataSourceID="SqlDataSource2" DataTextField="subject" DataValueField="subject">
                            </asp:DropDownList>
                        </td>
                        <td class="style15">
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style9">
                            &nbsp;</td>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style11">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style9">
                            <asp:Label ID="Label4" runat="server" Text="Change Category :" Visible="False"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:DropDownList ID="DropDownList6" runat="server" 
                                CssClass="style3" Width="350px" Visible="False">
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
                        <td class="style11">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style9">
                            &nbsp;</td>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style11">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style9">
                            <asp:Label ID="Label5" runat="server" Text="Change Semester" Visible="False"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:DropDownList ID="DropDownList7" runat="server" 
                                Width="350px" Visible="False">
                                <asp:ListItem Selected="True">Select one</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>General</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style11">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style9">
                            &nbsp;</td>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style11">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style9">
                            <asp:Label ID="Label6" runat="server" Text="Change Subject :" Visible="False"></asp:Label>
                        </td>
                        <td class="style10">
                            <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                        </td>
                        <td class="style11">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style9">
                            &nbsp;</td>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style11">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style7">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style2">
                            <asp:Button ID="Button3" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
                                Font-Size="Small" ForeColor="#000066" Text="UPDATE SUBJECT" 
                                Width="127px" Visible="False" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button4" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
                                Font-Size="Small" ForeColor="#000066" style="height: 26px" Text="RESET" 
                                Width="127px" />
                        </td>
                        <td class="style6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style24">
                        </td>
                        <td class="style25">
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:vl%>" 
                                SelectCommand="SELECT [subject] FROM [booksubject] WHERE (([department] = @department) AND ([sem] = @sem))">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList3" Name="department" 
                                        PropertyName="SelectedValue" Type="String" />
                                    <asp:ControlParameter ControlID="DropDownList4" Name="sem" 
                                        PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td class="style26">
                        </td>
                        <td class="style27">
                        </td>
                    </tr>
                </table>
            </ContentTemplate>

        </ajax:TabPanel>
--%>

         <ajax:TabPanel ID="TabPanel3" runat="server" HeaderText="TabPanel3" Height="300">
            <HeaderTemplate>Delete Subject</HeaderTemplate>

            <ContentTemplate><asp:Panel ID="Panel3" runat="server" Height="310px" Width="606px">
                <table class="style1"><tr><td class="style4">
                    &nbsp;</td></tr><tr><td class="style20">&nbsp;</td><td class="style21">&nbsp;</td>
                        <td class="style22">&nbsp;<asp:Label ID="Label7" runat="server" BackColor="#FFFF99" 
                                Font-Size="X-Large" ForeColor="#CC6600"></asp:Label>
                        </td><td class="style23"></td></tr>
                <tr>
                    <td class="style66"></td>
                    <td class="style44">
                        Select Category:</td>
                    <td class="style10">
                        <asp:DropDownList ID="DropDownList8" runat="server" 
                            CssClass="style3" Width="300px" Height="30px">
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
                    <td class="style11">
                        </td>
                </tr>
                    <tr>
                        <td class="style66">
                            &nbsp;</td>
                        <td class="style44">
                            &nbsp;</td>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style11">
                            &nbsp;</td>
                    </tr>
                    <tr><td class="style65">&nbsp;</td>
                    <td class="style45">
                        Semester:</td>
                    <td class="style2">
                        <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True" 
                            Width="300px" Height="30px">
                            <asp:ListItem Selected="True">Select one</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>General</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                    <td class="style6">&nbsp;</td></tr>
                    <tr>
                        <td class="style65">
                            &nbsp;</td>
                        <td class="style45">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style6">
                            &nbsp;</td>
                    </tr>
                <tr><td class="style12"></td>
                    <td class="style13">Subject:</td>
                    <td class="style14">
                        <asp:DropDownList ID="DropDownList10" runat="server" 
                            DataSourceID="SqlDataSource4" DataTextField="subject" 
                            DataValueField="subject" Width="300px" Height="30px">
                        </asp:DropDownList>
                    </td>
                    <td class="style15">
                    </td>
                    </tr>
                <tr><td class="style66">&#160;</td><td class="style44">&nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="style11">
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style65">
                            &nbsp;</td>
                        <td class="style45">
                            &nbsp;</td>
                        <td class="style2">
                            <asp:Button ID="Button5" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
                                Font-Size="Small" ForeColor="#000066" Text="DELETE SUBJECT" Width="127px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button6" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
                                Font-Size="Small" ForeColor="#000066" style="height: 26px" Text="RESET" 
                                Width="127px" />
                        </td>
                        <td class="style6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style62">
                        </td>
                        <td class="style25">
                        </td>
                        <td class="style26">
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:vl %>" 
                                SelectCommand="SELECT [subject] FROM [booksubject] WHERE (([department] = @department) AND ([sem] = @sem))">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList8" DefaultValue="Select one" 
                                        Name="department" PropertyName="SelectedValue" Type="String" />
                                    <asp:ControlParameter ControlID="DropDownList9" Name="sem" 
                                        PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td class="style27">
                        </td>
                    </tr>
                </table></asp:Panel></ContentTemplate>

        </ajax:TabPanel>
    </ajax:TabContainer>
      <br />
     <br />
     <br />
     <br />
     
	<div id="foter">
    
       
    </div>
    
    </form>
   </div> 
</body>
</html>
