<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="updatebook.aspx.vb" Inherits="virtual_library.updatebook" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Virtual Library</title>
<meta name="keywords" content="Virtual Library" />
<meta name="description" content="Virtual Library" />
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
<link href="../css/admin.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
      
       .style3
{ border-left: 1px solid rgb(205, 204, 200);
    border-right: 1px solid rgb(203, 202, 198);
    border-top: 1px solid rgb(168, 174, 172);
    border-bottom: 1px solid rgb(227, 223, 221);
    border-radius: 3px;
}

        .style1
        {
            font-family:Book Antiqua;
            font-size:large;
            color: #666666;
            font-size:large;      
        }
        .style15
        {
            width: 216px;
            text-align: left;
            font-size: medium;
            color: #666666;
        }
        tr
        {
            height:50px;
        }
        .style10
        {
            width: 216px;
            height: 21px;
            text-align: center;
        }
        .style16
        {
            width: 325px;
            text-align: left;
        }
        .style17
        {
            width: 325px;
            text-align: left;
            font-size: medium;
            color: #666666;
        }
        .style19
        {
            width: 325px;
            height: 21px;
            text-align: left;
        }
        .style22
        {
            width: 216px;
            text-align: left;
        }
        .style23
        {
            width: 216px;
            height: 21px;
            text-align: left;
        }
        .style24
        {
            width: 325px;
            text-align: left;
            height: 29px;
        }
        .style25
        {
            width: 216px;
            text-align: left;
            height: 29px;
        }
        .style27
        {
            width: 377px;
        }
        .style28
        {
            width: 377px;
            text-align: left;
            height: 29px;
        }
        .style29
        {
            width: 377px;
            text-align: left;
        }
        .style30
        {
            width: 377px;
            height: 21px;
            text-align: left;
        }
        </style>

</head>
<body>
<div id="updatebookmain">
<form id="form1" runat="server">

<div id="middle_wrapper">
	<div  id="header" class="style1" style="font-size: xx-small">
    	
        <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Size="40px" ForeColor="#CA942F" 
            Text="Virtual library" Font-Names="Chiller"></asp:Label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Font-Names="Book Antiqua" 
            Font-Size="Small" ForeColor="#CC6600" NavigateUrl="~/admin/adminhome.aspx">Home</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink 
            ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Book Antiqua" 
            Font-Size="Small" ForeColor="#CC6600" NavigateUrl="~/admin/addbook.aspx">Add Book</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink 
            ID="HyperLink2" runat="server" Font-Bold="True" Font-Names="Book Antiqua" 
            Font-Size="Small" ForeColor="#339933" NavigateUrl="~/admin/updatebook.aspx">Update Book</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink 
            ID="HyperLink3" Font-Bold="True" Font-Names="Book Antiqua" 
            Font-Size="Small" ForeColor="#CC6600" runat="server" NavigateUrl="~/admin/deletebook.aspx">Delete Book</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink5" 
            runat="server" Font-Bold="True" Font-Names="Book Antiqua" 
            Font-Size="Small" ForeColor="#CC6600" 
            NavigateUrl="~/admin/addsubject.aspx">Manage subject</asp:HyperLink>
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
      
        
    </div>
</div>
&nbsp;<table class="style1">
        <tr >
            <td class="style24">
                </td>
            <td class="style25">
            </td>
            <td class="style28">
                            <asp:Label runat="server" BackColor="#FFFF99" Font-Size="X-Large" 
                    ForeColor="#CC6600" ID="Label16" Visible="False">Your data is sucessfully updated.</asp:Label>

            </td>
        </tr>
     
        <tr >
            <td class="style16">
                &nbsp;</td>
            <td class="style22">
                <asp:Label ID="Label14" runat="server" CssClass="style13" Font-Bold="True" 
                    Font-Size="Large" Text="Select category:"></asp:Label>
            </td>
            <td class="style29">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style3" 
                    Width="350px" Height="30px">
                    <asp:ListItem Selected="true" >--select one--</asp:ListItem>
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
            <td class="style17">
                &nbsp;</td>
            <td class="style15">
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="Semester:" 
                    Font-Size="Large"></asp:Label>
            </td>
            <td class="style29">
                <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" 
                    Width="350px" Height="30px">
                    <asp:ListItem Selected="True">--select one--</asp:ListItem>
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
        </tr>
       
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style22">
                <asp:Label ID="Label2" runat="server" CssClass="style13" Font-Bold="True" 
                    Font-Size="Large" Text="Select subject:" Visible="False"></asp:Label>
            </td>
            <td class="style29">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    Height="30px" Visible="False" Width="350px">
                </asp:DropDownList>
            </td>
        </tr>
     
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style22">
                <asp:Label ID="Label3" runat="server" CssClass="style13" Font-Bold="True" 
                    Font-Size="Large" Text="Select Bookname:" Visible="False"></asp:Label>
            </td>
            <td class="style29">
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                    Height="30px" Visible="False" Width="350px">
                </asp:DropDownList>
            </td>
        </tr>
      
    
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style22">
                <asp:Label ID="Label6" runat="server" CssClass="style13" Font-Bold="True" 
                    Font-Size="Large" Text="Book Name:" Visible="False"></asp:Label>
            </td>
            <td class="style29">
                <asp:TextBox ID="TextBox3" runat="server" BackColor="White" Height="30px" 
                    Visible="False" Width="350px" CssClass="style3"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style22">
                <asp:Label ID="Label7" runat="server" CssClass="style13" Font-Bold="True" 
                    Font-Size="Large" Text="Publisher Name:" Visible="False"></asp:Label>
            </td>
            <td class="style29">
                <asp:TextBox ID="TextBox4" runat="server" BackColor="White" Height="30px" 
                    Visible="False" Width="350px" CssClass="style3"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style22">
                <asp:Label ID="Label8" runat="server" CssClass="style13" Font-Bold="True" 
                    Font-Size="Large" Text="Author Name:" Visible="False"></asp:Label>
            </td>
            <td class="style29">
                <asp:TextBox ID="TextBox5" runat="server" BackColor="White" Height="30px" 
                    Visible="False" Width="350px" CssClass="style3"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style22">
                <asp:Label ID="Label13" runat="server" CssClass="style13" Font-Bold="True" 
                    Font-Size="Large" Text="Description:" Visible="False"></asp:Label>
            </td>
            <td class="style29">
                <asp:TextBox ID="TextBox6" runat="server" Height="50px" TextMode="MultiLine" 
                    Visible="False" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style23">
                <asp:Label ID="Label9" runat="server" CssClass="style13" Font-Bold="True" 
                    Font-Size="Large" Text="Cover Image:" Visible="False"></asp:Label>
            </td>
            <td class="style30">
                <asp:Image ID="Image1" runat="server" Height="100px" Visible="False" 
                    Width="100px" />
            </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style23">
                <asp:Label ID="Label10" runat="server" CssClass="style13" Font-Bold="True" 
                    Font-Size="Large" Text="Change Cover Image:" Visible="False"></asp:Label>
            </td>
            <td class="style30">
                <asp:FileUpload ID="FileUpload1" runat="server" BackColor="White" Height="20" 
                    onchange="return checkFileExtension1(this);" Visible="False" Width="300px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label11" runat="server" CssClass="style13" Font-Bold="True" 
                    Font-Size="Large" Text="Book Data:" Visible="False"></asp:Label>
            </td>
            <td class="style27">
                <asp:Button ID="Button1" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
                    ForeColor="#000066" Height="25px" target="_blank" Text="View Book" 
                    Visible="False" Width="100px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label12" runat="server" CssClass="style13" Font-Bold="True" 
                    Font-Size="Large" Text="Change Book Data:" Visible="False"></asp:Label>
            </td>
            <td class="style27">
                <asp:FileUpload ID="FileUpload2" runat="server" BackColor="White" 
                    onchange="return checkFileExtension(this);" Visible="False" />
            </td>
        </tr>
    
        <tr>
            <td>
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style30">
                <asp:Button ID="Button2" runat="server" BackColor="#CCCCCC" CssClass="style13" 
                    Font-Bold="True" Font-Size="Small" ForeColor="#000066" Height="28px" 
                    Text="Update Data" Visible="False" Width="130px"  
                    style="height: 30px;    border-radius: 3px;"/>
            &nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
                    ForeColor="#000066" Height="28px" Text="Reset " Width="130px"  
                    style="height: 30px;    border-radius: 3px;" />
            </td>
        </tr>
    </table>

	<div id="footer">
    
       
    </div>
    </form>
    </div>
</body>
</html>
