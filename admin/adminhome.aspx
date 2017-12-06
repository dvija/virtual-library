<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="adminhome.aspx.vb" Inherits="virtual_library.adminhome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Virtual Library</title>
<meta name="keywords" content="Virtual Library" />
<meta name="description" content="Virtual Library" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"  />



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
            width: 100%;
        }
        </style>

    <link href="../css/admin.css" rel="stylesheet" type="text/css" />

</head>
<body>
<div id="main">
 <form id="form1" runat="server">
 <div id="middle_wrapper">
	<div  id="header" class="style1" style="font-size: xx-small">
    	
        <br />  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Size="40px" ForeColor="#CA942F" 
            Text="Virtual library"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink 
            ID="HyperLink4" runat="server" Font-Bold="True" Font-Names="Book Antiqua" 
            Font-Size="Small" ForeColor="#339933" NavigateUrl="~/admin/adminhome.aspx">Home</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink 
            ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Book Antiqua" 
            Font-Size="Small" ForeColor="#CC6600" NavigateUrl="~/admin/addbook.aspx">Add Book</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink 
            ID="HyperLink2" runat="server" Font-Bold="True" Font-Names="Book Antiqua" 
            Font-Size="Small" ForeColor="#CC6600" NavigateUrl="~/admin/updatebook.aspx">Update Book</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink 
            ID="HyperLink3" Font-Bold="True" Font-Names="Book Antiqua" 
            Font-Size="Small" ForeColor="#CC6600" runat="server" NavigateUrl="~/admin/deletebook.aspx">Delete Book</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink5" 
            runat="server" Font-Bold="True" Font-Names="Book Antiqua" 
            Font-Size="Small" ForeColor="#CC6600" 
            NavigateUrl="~/admin/addsubject.aspx">Manage subject</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
            Font-Names="Book Antiqua" Font-Size="Small" ForeColor="#CC6600">Log out</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
      
        
    </div>
</div>
<div id="footer">
 </div>
    <table class="style2">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CellPadding="4" Font-Names="Arial" 
                    ForeColor="#333333" GridLines="None" OnPageIndexChanging="OnPaging" 
                    PageSize="3" Width="729px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                       
                        <asp:BoundField DataField="userid" HeaderText="User" />
                       
                        <asp:BoundField DataField="bookname" HeaderText="Book Name" />
                        <asp:BoundField DataField="publishername" HeaderText="Publisher Name" />
                        <asp:BoundField DataField="authorname" HeaderText="Author Name" />
                        <asp:BoundField DataField="description" HeaderText="Description" />

                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="read" runat="server" 
                                    CommandArgument='<%# Eval("id") %>' OnClick="DownloadFile" Text="View Book">
                            </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkDownload" runat="server" 
                                    CommandArgument='<%# Eval("id") %>' OnClick="addbook" Text="Addbook">
                            </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                         <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="delete" runat="server" 
                                    CommandArgument='<%# Eval("id") %>' OnClick="delete" Text="Delete data">
                            </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
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
            </td>
            <td>
                &nbsp;</td>
        </tr>
 </table>
    </form>
    </div>
</body>
</html>
