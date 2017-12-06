<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="deletebook.aspx.vb" Inherits="virtual_library.deletebook" %>

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

    <style type="text/css">
       .style1
        {
            font-family:Book Antiqua;
            font-size:large;
            color: #666666;
            font-size:large;      
        }
 .style3
{ border-left: 1px solid rgb(205, 204, 200);
    border-right: 1px solid rgb(203, 202, 198);
    border-top: 1px solid rgb(168, 174, 172);
    border-bottom: 1px solid rgb(227, 223, 221);
    border-radius: 3px;
}


           tr
        {
            height:50px;
        }
        .style7
        {
            width: 191px;
            text-align: left;
            color: #666666;
            font-weight: bold;
        }
        .style2
        {
            width: 357px;
            text-align: left;
        }
        .style17
        {
            width: 191px;
            text-align: left;
            font-weight: bold;
        }
        .style8
        {
            width: 191px;
            height: 21px;
            text-align: left;
            font-weight: bold;
        }
        .style5
        {
            width: 357px;
            height: 21px;
            text-align: left;
        }
        .style10
        {
            width: 191px;
            height: 21px;
            text-align: center;
        }
        .style18
        {
            width: 101px;
            text-align: left;
            color: #666666;
            font-weight: bold;
        }
        .style19
        {
            width: 325px;
            text-align: left;
            color: #666666;
            font-weight: bold;
        }
        .style21
        {
            width: 325px;
            text-align: left;
            font-weight: bold;
        }
        .style22
        {
            width: 325px;
            height: 21px;
            text-align: left;
            font-weight: bold;
        }
        .style24
        {
            width: 325px;
            height: 21px;
            text-align: center;
        }
        .style25
        {
            width: 325px;
            text-align: left;
            color: #666666;
            font-weight: bold;
            height: 26px;
        }
        .style26
        {
            width: 191px;
            text-align: left;
            color: #666666;
            font-weight: bold;
            height: 26px;
        }
        .style27
        {
            width: 357px;
            text-align: left;
            height: 26px;
        }
        </style>

    <link href="../css/admin.css" rel="stylesheet" type="text/css" />

</head>
<body>
<div id="deletmain">
<form id="form1" runat="server">

<div id="middle_wrapper">
	<div  id="header" class="style1" style="font-size: xx-small">
    	
        <br />  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Size="40px" ForeColor="#CA942F" 
            Text="Virtual library" Font-Names="chiller"></asp:Label>
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink 
            ID="HyperLink4" runat="server" Font-Bold="True" Font-Names="Book Antiqua" 
            Font-Size="Small" ForeColor="#CC6600" NavigateUrl="~/admin/adminhome.aspx">Home</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink 
            ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Book Antiqua" 
            Font-Size="Small" ForeColor="#CC6600" NavigateUrl="~/admin/addbook.aspx">Add Book</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink 
            ID="HyperLink2" runat="server" Font-Bold="True" Font-Names="Book Antiqua" 
            Font-Size="Small" ForeColor="#CC6600" NavigateUrl="~/admin/updatebook.aspx">Update Book</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink 
            ID="HyperLink3" Font-Bold="True" Font-Names="Book Antiqua" 
            Font-Size="Small" ForeColor="#339933" runat="server" NavigateUrl="~/admin/deletebook.aspx">Delete Book</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink5" 
            runat="server" Font-Bold="True" Font-Names="Book Antiqua" 
            Font-Size="Small" ForeColor="#CC6600" 
            NavigateUrl="~/admin/addsubject.aspx">Manage subject</asp:HyperLink>
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
      
        
    </div>
</div>
&nbsp;
&nbsp;<table class="style1">
        <tr>
            <td class="style25">
                </td>
            <td class="style26">
            </td>
            <td class="style27">
                            <asp:Label runat="server" BackColor="#FFFF99" Font-Size="X-Large" 
                    ForeColor="#CC6600" ID="Label16" Visible="False">Your data is sucessfully deleted.</asp:Label>

            </td>
        </tr>
    
        <tr>
            <td class="style19">
                &nbsp;</td>
            <td class="style7">
                <asp:Label ID="Label14" runat="server" CssClass="style18" 
                    Text="Select Category:"></asp:Label>
            </td>
            <td class="style2">
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
            <td class="style19">
                &nbsp;</td>
            <td class="style7">
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="Semester:"></asp:Label>
            </td>
            <td class="style2">
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
            <td class="style21">
                &nbsp;</td>
            <td class="style17">
                <asp:Label ID="Label2" runat="server" CssClass="style13" Text="Select Subject:" 
                    Visible="False"></asp:Label>
            </td>
            <td class="style2">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    Height="30px" Visible="False" Width="350px">
                </asp:DropDownList>
            </td>
        </tr>
   
        <tr>
            <td class="style21">
                &nbsp;</td>
            <td class="style17">
                <asp:Label ID="Label3" runat="server" CssClass="style13" 
                    Text="Select Bookname:" Visible="False" ></asp:Label>
            </td>
            <td class="style2">
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                    Height="30px" Visible="False" Width="350px">
                </asp:DropDownList>
            </td>
        </tr>
     
        <tr>
            <td class="style21">
                &nbsp;</td>
            <td class="style17">
                <asp:Label ID="Label5" runat="server" CssClass="style13" Text="Subject:" 
                    Visible="False"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox2" runat="server" BackColor="White" Height="30px" 
                    Visible="False" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style21">
                &nbsp;</td>
            <td class="style17">
                <asp:Label ID="Label6" runat="server" CssClass="style13" Text="Book Name:" 
                    Visible="False"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox3" runat="server" BackColor="White" Height="30px" 
                    Visible="False" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style21">
                &nbsp;</td>
            <td class="style17">
                <asp:Label ID="Label7" runat="server" CssClass="style13" Text="Publisher Name:" 
                    Visible="False"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox4" runat="server" BackColor="White" Height="30px" 
                    Visible="False" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style21">
                &nbsp;</td>
            <td class="style17">
                <asp:Label ID="Label8" runat="server" CssClass="style13" Text="Author Name:" 
                    Visible="False"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox5" runat="server" BackColor="White" Height="30px" 
                    Visible="False" Width="350px" CssClass="style3"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style21">
                &nbsp;</td>
            <td class="style17">
                <asp:Label ID="Label13" runat="server" CssClass="style13" Text="Description:" 
                    Visible="False"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox6" runat="server" height="50px" TextMode="MultiLine" 
                    Visible="False" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style8">
                <asp:Label ID="Label9" runat="server" CssClass="style13" Text="Cover Image:" 
                    Visible="False"></asp:Label>
            </td>
            <td class="style5">
                <asp:Image ID="Image1" runat="server" Height="100px" Visible="False" 
                    Width="100px" />
            </td>
        </tr>
   
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style8">
                <asp:Label ID="Label11" runat="server" CssClass="style13" Text="Book Data:" 
                    Visible="False"></asp:Label>
            </td>
            <td class="style5">
                <asp:Button ID="Button1" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
                    Font-Size="Small" ForeColor="#000066" Height="20px" Text="View Book" 
                    Visible="False" Width="100px" />
            </td>
        </tr>
      
      
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="Button2" runat="server" BackColor="#CCCCCC" CssClass="style16" 
                    Font-Bold="True" Font-Size="Small" ForeColor="#000066" Height="28px" 
                    Text="Delete Book" Visible="False" Width="130px"  style="height: 30px;    border-radius: 3px;"  />
            &nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
                    Font-Size="Small" ForeColor="#000066" Height="28px" Text="Reset" 
                    Width="130px" style="height: 30px;    border-radius: 3px;"  />
            </td>
        </tr>
    </table>
   
	<div id="footer">
    
       
    </div>
    </form>
</body>
</html>
