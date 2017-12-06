<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="selecteddepartmentbooks.aspx.vb" Inherits="virtual_library.selecteddepartmentbooks" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Virtual library</title>
<meta name="keywords" content="village, theme, free css template, free templates, website templates, templatemo, CSS, HTML" />
<meta name="description" content="Village Theme - free css template for everyone" />


    <style type="text/css">
        .style2
        {}
    </style>

    <link href="../css/bookdisplaydept.css" rel="stylesheet" type="text/css" />

</head>
<body id="body">
    <form id="form1" runat="server">
   <div id="indexheader">
   
<div id="logo">
    	

        <asp:Label ID="Label1" runat="server" Font-Size="50px" ForeColor="#CA942F" 
            Text="Virtual library"></asp:Label>
       
        </div>    
  
       <div>
       </div>
       <div class="proimage">
    <asp:Image ID="Image1" runat="server" CssClass="style2" Height="42px" 
        ImageUrl="~/image/profilepic.png" Width="39px" />
</div>
<div id="homelink">
            <asp:HyperLink 
            ID="HyperLink4" runat="server" Font-Bold="True" Font-Names="Book Antiqua" 
            Font-Size="Small" ForeColor="#CC6600" NavigateUrl="~/users/userhome.aspx">Home</asp:HyperLink>
        </div>
  
</div>


<div id="main">
<div class="subject">
    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
</div>
    <div class="books">
        <asp:DataPager ID="TopPager" runat="server"
        PageSize="2"
        PagedControlID="ImagesList">
    <Fields>
        <asp:NextPreviousPagerField PreviousPageText="Previous"
                            RenderDisabledButtonsAsLabels="true"
                            RenderNonBreakingSpacesBetweenControls="true"
                            ShowFirstPageButton="false"
                            ShowNextPageButton="false"
                            ShowLastPageButton="false"
                            ShowPreviousPageButton="true" />
        <asp:NumericPagerField ButtonCount="10"
                        CurrentPageLabelCssClass="current"
                            RenderNonBreakingSpacesBetweenControls="true"/>
        <asp:NextPreviousPagerField NextPageText="Next"
                            RenderDisabledButtonsAsLabels="true"
                            ShowFirstPageButton="false"
                            ShowPreviousPageButton="false"
                            ShowNextPageButton="true"
                            ShowLastPageButton="false" />
    </Fields>
</asp:DataPager>
<asp:ListView ID="ImagesList" runat="server"  
         GroupItemCount="6"
            OnPagePropertiesChanging="ImagesList_PagePropertiesChanging" 
            DataSourceID="SqlDataSource1" EnableTheming="True">
    <EmptyDataTemplate>
        No Images found.
    </EmptyDataTemplate>
    <LayoutTemplate>
        <table cellspacing="10">
            <tr runat="server" id="groupPlaceholder" />
        </table>
    </LayoutTemplate>
    <GroupTemplate>
        <tr>
            <td runat="server" id="itemPlaceholder" />
        </tr>
      
    </GroupTemplate>
    <ItemTemplate>
     
     
        <td>
            <asp:ImageButton ID="MyPicture" runat="server"
                    AlternateText='<%# Eval("bookid") %>'
                      ImageUrl='<%# Eval("bookid", "showbookcover.ashx?id={0}")%>' Width="150px" Height="200px" CommandArgument = '<%# Eval("bookid") %>'  OnClientClick="read" />
        </td>
   </ItemTemplate>
</asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:vl %>" 
            SelectCommand="SELECT * FROM [bookdata] WHERE ([category] = @category)" >
            <SelectParameters>
                <asp:ControlParameter ControlID="Label2" DefaultValue="Computer" 
                    Name="category" PropertyName="Text" Type="String" />
            </SelectParameters>
          </asp:SqlDataSource>
    <asp:DataPager ID="BottomPager" runat="server"
                PageSize="18"
                PagedControlID="ImagesList">
        <Fields>
            <asp:NextPreviousPagerField PreviousPageText="Previous"
                                RenderDisabledButtonsAsLabels="true"
                                RenderNonBreakingSpacesBetweenControls="true"
                                ShowFirstPageButton="false"
                                ShowNextPageButton="false"
                                ShowLastPageButton="false"
                                ShowPreviousPageButton="true"/>
            <asp:NumericPagerField ButtonCount="10"
                                CurrentPageLabelCssClass="current"
                                RenderNonBreakingSpacesBetweenControls="true"/>
            <asp:NextPreviousPagerField NextPageText="Next"
                                RenderDisabledButtonsAsLabels="true"
                                ShowFirstPageButton="false"
                                ShowPreviousPageButton="false"
                                ShowNextPageButton="true"
                                ShowLastPageButton="false" />
        </Fields>
    </asp:DataPager>
         
    </div>
<div id="footer">
 <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#666666"  >Login</asp:HyperLink>
    </div>
  </div>
    </form>
</body>
</html>
