<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="feelupprimarydetail.aspx.vb" Inherits="virtual_library.feelupprimarydetail" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<link href="../css/csssimple.css" rel="stylesheet"  type="text/css" />
<title>Virtual library</title> 
  <script type="text/javascript" >
  function previewFile()
       {
        var preview = document.querySelector('#<%#image1.ClientID %>');
          var file = document.querySelector('#<%#FileUpload1.ClientID %>').files[0];
          var reader = new FileReader();
        reader.onloadend = function () {
              preview.src = reader.result;
          }
         if (file) {
              reader.readAsDataURL(file);
          } else {
              preview.src = "";
          }
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
              if (ext == validExtensions[i]) {
                  var preview = document.querySelector('#<%#image1.ClientID %>');
                  var file = document.querySelector('#<%#FileUpload1.ClientID %>').files[0];
                  var reader = new FileReader();
          
                  reader.onloadend = function () {
                      preview.src = reader.result;
                  }
                  if (file) {
                      reader.readAsDataURL(file);
                  } else {
                      preview.src = "";
                  }
               
                  return true;

              }
          }
          obj1.value = "";
          alert('The file extension ' + ext.toUpperCase() + ' is not allowed!                 please  choose only image file(jpg,bmp,jpeg,png,gif,tif,tiff)');

          return false;
      }

    </script>
</head>
<body>
    <form id="form1" runat="server">
   <div id="indexheader">
<div id="logo">
    <asp:Label ID="Label1" runat="server" Font-Size="50px" ForeColor="#CA942F" 
            Text="Virtual library"></asp:Label>
            </div>    
  </div>
  <div id="main">
    <div class="mainsection" >
  <div class="profileimage">
    <asp:Image ID="image1" runat="server" CssClass="style2" Height="105px" 
          Width="88px" ImageUrl="~/image/profilepic.png" 
          ToolTip="Upload profile image" />
  </div>
  <div class="imageupload">
  
      <asp:FileUpload ID="FileUpload1" runat="server" onchange="return checkFileExtension1(this);" />
  
  </div>
       
  <div class="info">
 
      <table class="style2">
          <tr>
              <td class="style5" height="25">
                  &nbsp;</td>
              <td class="style6">
                  Fields are required.*</td>
          </tr>
          <tr>
              <td class="style5" height="25">
                  <asp:Label ID="Label2" runat="server" CssClass="style4" Text="Screen name:"></asp:Label>
              </td>
              <td class="style6">
                  <asp:TextBox ID="TextBox1" runat="server" CssClass="fillcomponent" 
                      Height="20px" Width="200px" ></asp:TextBox>
                  *<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" CssClass="CustomValidatorCalloutStyle " 
        ErrorMessage="screen name missing."></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="style3" height="25">
                  <asp:Label ID="Label3" runat="server" Text="First name:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:TextBox ID="TextBox2" runat="server" CssClass="fillcomponent" 
                      Height="20px" Width="200px" ></asp:TextBox>
                  *<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" CssClass="CustomValidatorCalloutStyle " 
        ErrorMessage="First name missing."></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="style3" height="25">
                  <asp:Label ID="Label4" runat="server" Text="Last name:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:TextBox ID="TextBox3" runat="server" CssClass="fillcomponent" 
                      Height="20px" Width="200px"></asp:TextBox>
                  *<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox3" CssClass="CustomValidatorCalloutStyle " 
        ErrorMessage="Last name missing."></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="style3" height="25">
                  <asp:Label ID="Label5" runat="server" Text="Gender:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:DropDownList ID="DropDownList1" runat="server" CssClass="fillcomponent" 
                       Height="25px" Width="205px">
                      <asp:ListItem Selected="True">Female</asp:ListItem>
                      <asp:ListItem>Male</asp:ListItem>
                  </asp:DropDownList>
                  *</td>
          </tr>
          <tr>
              <td class="style3" height="25">
                  <asp:Label ID="Label6" runat="server" Text="Date of birth:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:TextBox ID="TextBox4" runat="server" CssClass="fillcomponent" 
                       Height="20px" Width="200px"></asp:TextBox>
                  <asp:CalendarExtender ID="TextBox4_CalendarExtender" runat="server" 
                      Enabled="True" TargetControlID="TextBox4">
                  </asp:CalendarExtender>
                  *<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="TextBox4" CssClass="CustomValidatorCalloutStyle " 
        ErrorMessage="Birth date missing."></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="style3" height="25">
                  <asp:Label ID="Label7" runat="server" Text="Education level:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:DropDownList ID="DropDownList2" runat="server" CssClass="fillcomponent" 
                       Height="25px" Width="205px">
                      <asp:ListItem>Graduation</asp:ListItem>
                      <asp:ListItem>Diploma</asp:ListItem>
                      <asp:ListItem>Post graduation</asp:ListItem>
                      <asp:ListItem>Other</asp:ListItem>
                  </asp:DropDownList>
                  *</td>
          </tr>
          <tr>
              <td class="style3" height="25">
                  <asp:Label ID="Label8" runat="server" Text="Institute name:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:DropDownList ID="DropDownList3" runat="server" CssClass="fillcomponent" 
                      Height="25px" Width="205px">
                      <asp:ListItem Selected="True">SSASIT,Surat</asp:ListItem>
                  </asp:DropDownList>
                  *</td>
          </tr>
          <tr>
              <td class="style3" height="25">
                  <asp:Label ID="Label10" runat="server" Text="Admnission year:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:DropDownList ID="DropDownList4" runat="server" CssClass="fillcomponent" 
                      Height="25px" Width="205px">
                      <asp:ListItem Selected="True">2009</asp:ListItem>
                      <asp:ListItem>2010</asp:ListItem>
                      <asp:ListItem>2011</asp:ListItem>
                      <asp:ListItem>2012</asp:ListItem>
                      <asp:ListItem>2013</asp:ListItem>
                      <asp:ListItem>2014</asp:ListItem>
                      <asp:ListItem>2015</asp:ListItem>
                      <asp:ListItem>2016</asp:ListItem>
                      <asp:ListItem>2017</asp:ListItem>
                      <asp:ListItem>2018</asp:ListItem>
                      <asp:ListItem>2019</asp:ListItem>
                      <asp:ListItem>2020</asp:ListItem>
                  </asp:DropDownList>
                  *</td>
          </tr>
          <tr>
              <td class="style3" height="25">
                  <asp:Label ID="Label11" runat="server" Text="Branch:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:DropDownList ID="DropDownList5" runat="server" CssClass="fillcomponent" 
                      Height="25px" Width="205px">
                      <asp:ListItem Selected="True">Civil Engineering</asp:ListItem>
                      <asp:ListItem>Computer Engineering</asp:ListItem>
                      <asp:ListItem>EC engineering</asp:ListItem>
                      <asp:ListItem>Electrical Engineering</asp:ListItem>
                      <asp:ListItem>Mechanical Engineering</asp:ListItem>
                  </asp:DropDownList>
                  *</td>
          </tr>
          <tr>
              <td class="style3" height="25">
                  <asp:Label ID="Label12" runat="server" Text="Current sem:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:DropDownList ID="DropDownList6" runat="server" CssClass="fillcomponent" 
                      Height="25px" Width="205px">
                      <asp:ListItem Selected="True">1st</asp:ListItem>
                      <asp:ListItem>2nd</asp:ListItem>
                      <asp:ListItem>3rd</asp:ListItem>
                      <asp:ListItem>4th</asp:ListItem>
                      <asp:ListItem>5th</asp:ListItem>
                      <asp:ListItem>6th</asp:ListItem>
                      <asp:ListItem>7th</asp:ListItem>
                      <asp:ListItem>8th</asp:ListItem>
                  </asp:DropDownList>
                  *</td>
          </tr>
          </table>
 <asp:Button ID="Button1" runat="server" Text="Submit&nbsp;&nbsp; &gt;&gt;" 
        ForeColor="White" Height="35px" Width="100px" CssClass="submitbtn" />
  </div>
  
    </div>
    <br />
    <br /><br /><br /><br /><br /><br /><br /><br />
      <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
      </asp:ToolkitScriptManager>
      <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <br /><br /><br /><br /><br /><br />
    	<div id="footer">
       <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#666666" 
            NavigateUrl="~/adminlogin.aspx">Login</asp:HyperLink>
    </div>
    </div>
    </form>
</body>
</html>
