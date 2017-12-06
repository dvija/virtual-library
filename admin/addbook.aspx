<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="addbook.aspx.vb" Inherits="virtual_library.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
#templatemo_middle_wrapper
{
    clear: both;
    width: 100%;
    background-image: url('../image/adminheader.PNG');
    background-repeat: repeat-x;
}   
#templatemo_middle { 
	width: 940px;
	height: 100px;
	padding: 0px 0px 0 40px;
	margin: 0 auto;
}
.style3
{ border-left: 1px solid rgb(205, 204, 200);
    border-right: 1px solid rgb(203, 202, 198);
    border-top: 1px solid rgb(168, 174, 172);
    border-bottom: 1px solid rgb(227, 223, 221);
    border-radius: 3px;
}

.height
{
    height:5px;
    background-color:Purple;
}
        .style1
        {
            font-family:Book Antiqua;
            font-size:large;
        }
        .style5
        {
            width: 183px;
            text-align: left;
            font-weight: bold;
            color: #666666;
            font-size: large;
         
        }
        .style6
        {
         text-align: left;
         width: 197px;
     }
        .style2
        {
            width: 383px;
            text-align: left;
        }
        
#templatemo_foter
{
    clear: both;
    width: 145%;
    height: 71px;
    background-image: url('../image/bookrow.jpg');
    background-repeat: repeat-x;
}
        .style12
        {
            width: 364px;
            text-align: left;
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
         width: 197px;
     }
        .style16
        {
            width: 383px;
            text-align: left;
            height: 24px;
        }
        .style19
        {
            text-align: left;
            height: 24px;
         width: 197px;
     }
        .style20
     {
         width: 364px;
         text-align: left;
     }
     .style21
     {
         width: 364px;
         text-align: left;
         height: 24px;
     }
        .style22
     {
         width: 364px;
         text-align: left;
         height: 22px;
     }
     .style23
     {
         width: 183px;
         text-align: left;
         font-weight: bold;
         color: #666666;
         font-size: large;
         height: 22px;
     }
     .style24
     {
         width: 383px;
         text-align: left;
         height: 22px;
     }
     .style25
     {
         text-align: left;
         width: 197px;
         height: 22px;
     }
        .style26
     {
         width: 364px;
         text-align: left;
         height: 50px;
     }
     .style27
     {
         width: 183px;
         text-align: left;
         font-weight: bold;
         color: #666666;
         font-size: large;
         height: 50px;
     }
     .style28
     {
         width: 383px;
         text-align: left;
         height: 50px;
     }
     .style29
     {
         text-align: left;
         width: 197px;
         height: 50px;
     }
        </style>
    <link href="../css/admin.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="addbookmain">
<form id="form1" runat="server">

<div id="middle_wrapper">
	<div id="header"  class="style1" style="font-size: xx-small">
    	
        <br />  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Size="40px" ForeColor="#CA942F" 
            Text="Virtual library" Font-Names="chiller" ></asp:Label>
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
            Font-Size="Small" ForeColor="#339933" NavigateUrl="~/admin/addbook.aspx">Add Book</asp:HyperLink>
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
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink6" 
            runat="server" Font-Bold="True" Font-Names="Book Antiqua" 
            Font-Size="Small" ForeColor="#CC6600" 
            NavigateUrl="~/index.aspx">logout</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
      
        
    </div>
</div>
&nbsp;<table class="style1">
        <tr>
            <td class="style22">
            </td>
            <td class="style23">
                </td>
            <td class="style24">
                            <asp:Label runat="server" BackColor="#FFFF99" Font-Size="X-Large" 
                    ForeColor="#CC6600" ID="Label3" Visible="False">Your data is sucessfully entered.</asp:Label>

            </td>
            <td class="style25">
            </td>
        </tr>
        <tr>
            <td class="style20" height="50">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:virtuallibraryConnectionString %>" 
                    
                    SelectCommand="SELECT [subject] FROM [booksubject] WHERE (([department] = @department) AND ([sem] = @sem))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="department" 
                            PropertyName="SelectedValue" Type="String" DefaultValue="Select one" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="sem" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style5" height="50">
                Select Category:</td>
            <td class="style2" height="50">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style3" 
                    Width="350px" Height="30px">
                    <asp:ListItem Selected="true" >Select one</asp:ListItem>
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
            <td class="style6" height="50">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="*" Font-Size="Small" 
                    ForeColor="Maroon"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style20" height="50">
                &nbsp;</td>
            <td class="style5" height="50">
                Semester:</td>
            <td class="style2" height="50">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    Width="350px" Height="30px">
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
            <td class="style6" height="50">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12" height="50">
                </td>
            <td class="style5" height="50">
                Subject:</td>
            <td class="style14" height="50">
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="subject" 
                    DataValueField="subject" Height="30px" Width="350px">
                    <asp:ListItem>--Select one--</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style15" height="50">
                </td>
        </tr>
     
        <tr>
            <td class="style26">
                </td>
            <td class="style27">
                Enter Bookid:</td>
            <td class="style28">
                <asp:TextBox ID="TextBox6" runat="server" BackColor="White" CssClass="style3" 
                    Width="350px" ReadOnly="True" Height="30px"></asp:TextBox>
            </td>
            <td class="style29">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="*" Font-Size="Small" 
                    ForeColor="Maroon"></asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr height="50">
            <td class="style20">
                &nbsp;</td>
            <td class="style5">
                Name:</td>
            <td class="style2">
                <asp:TextBox ID="TextBox1" runat="server" BackColor="White" CssClass="style3" 
                    Width="350px" Height="30px"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*" Font-Size="Small" 
                    ForeColor="Maroon"></asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr height="50">
            <td class="style21">
                </td>
            <td class="style5">
                Publication:</td>
            <td class="style16">
                <asp:TextBox ID="TextBox2" runat="server" BackColor="White" CssClass="style3" 
                    Width="350px" Height="30px"></asp:TextBox>
            </td>
            <td class="style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*" Font-Size="Small" 
                    ForeColor="Maroon"></asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr height="50">
            <td class="style20">
            </td>
            <td class="style5">
                Author:</td>
            <td class="style2">
                <asp:TextBox ID="TextBox3" runat="server" BackColor="White" CssClass="style3" 
                    Width="350px" Height="30px"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*" Font-Size="Small" 
                    ForeColor="Maroon"></asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr height="50">
            <td class="style20">
                &nbsp;</td>
            <td class="style5">
                Description:</td>
            <td class="style2">
                <asp:TextBox ID="TextBox4" runat="server" BackColor="White" CssClass="style3" 
                    TextMode="MultiLine" Width="350px" Height="50px"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="*" Font-Size="Small" 
                    ForeColor="Maroon"></asp:RequiredFieldValidator>
            </td>
        </tr>
     
        <tr height="50">
            <td class="style20">
                &nbsp;</td>
            <td class="style5">
                Add Cover:</td>
            <td class="style2">
                <asp:FileUpload ID="FileUpload1" runat="server" BackColor="White" 
                    CssClass="style3" onchange="return checkFileExtension1(this);" />
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="*" Font-Size="Small" 
                    ForeColor="Maroon"></asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr height="50">
            <td class="style20">
                &nbsp;</td>
            <td class="style5">
                Add Book:</td>
            <td class="style2">
                <asp:FileUpload ID="FileUpload2" runat="server" BackColor="White" 
                    CssClass="style3" onchange="return checkFileExtension(this);" />
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="FileUpload2" ErrorMessage="*" Font-Size="Small" 
                    ForeColor="Maroon"></asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr height="50">
            <td class="style20">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
                    Font-Size="Small" ForeColor="#000066" Text="ADD BOOK" Width="127px" 
                    style="height: 30px;    border-radius: 3px;" />
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
    </table>
   <div id="footer">
    </div>
    </form>
    </div>
</body>
</html>
