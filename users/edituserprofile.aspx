<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="edituserprofile.aspx.vb" Inherits="virtual_library.edituserprofile" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<link href="../css/csssimple.css" rel="stylesheet"  type="text/css" />

    <title>Virtual library</title> 
  <script type="text/javascript" >
    </script>
    <style type="text/css">

    
        .style8
        {
            font-size: medium;
        }
    
    

        .style10
        {}
    
    

        .style11
        {
            width: 73px;
            height: 29px;
            text-align: left;
        }
        .style12
        {
            width: 73px;
            text-align: left;
        }
        .style13
        {}
    
    

        </style>
  
</head>
<body id="body1">
    <form id="form1" runat="server">
   <div id="indexheader1">
   
<div id="logo1">
    	

        <asp:Label ID="Label1" runat="server" Font-Size="50px" ForeColor="#CA942F" 
            Text="Virtual library"></asp:Label>
       
        </div>    
        <div id="homelink">
            <asp:HyperLink 
            ID="HyperLink4" runat="server" Font-Bold="True" Font-Names="Book Antiqua" 
            Font-Size="Small" ForeColor="#CC6600" NavigateUrl="~/users/userhome.aspx">Home</asp:HyperLink>
        </div>
  
</div>
<div id="main1">
    <div class="mainsection1" >

     <div class="profileimage1">
  
      <asp:Image ID="image1" runat="server" CssClass="style2" Height="105px" 
          Width="88px" ImageUrl="~/image/profilepic.png" 
          ToolTip="Upload profile image" />
  
  </div>
   <div class="imageupload">
       <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" 
           ForeColor="#6600CC" NavigateUrl="~/users/userhome.aspx" Width="100px">[HyperLink3]</asp:HyperLink>
       <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
       </asp:ToolkitScriptManager>
   </div>
<div class="userslike">
    <br />

    <span class="style8">Mylikes</span>

    <div class="gridviewdiaplay">
    <asp:SqlDataSource ID="SqlDataSource1" 
        runat="server" ConnectionString="<%$ ConnectionStrings:vl %>" 
        SelectCommand="SELECT [likesubject] FROM [studentlike] WHERE ([enrollno] = @enrollno)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="enrollno" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource> 
    <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource1" CssClass="style10" 
            ForeColor="#333333" GridLines="None" Height="298px" ShowHeader="False" 
           BackColor="white" UseAccessibleHeader="False" Width="142px">
        <AlternatingRowStyle BackColor="#F4F2E9" />
      



         <Columns>
<asp:TemplateField>
<ItemTemplate>
<a href ='<%#"selecteddepartmentbooks.aspx?subject="+DataBinder.Eval(Container.DataItem,"likesubject") %>'> <%# Eval("likesubject")%>  </a>
</ItemTemplate>
</asp:TemplateField>

        </Columns>
      
    </asp:GridView>
    </div></div>

  <div class="info1">
 
      <table class="style2">
          <tr>
              <td class="style11" height="25">
                  Enrollment no:</td>
              <td class="style6">
                  <asp:TextBox ID="TextBox1" runat="server" BorderColor="White" 
                      BorderStyle="None" ReadOnly="True" Font-Size="Medium" Height="25px" 
                      Width="210px"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style11" height="25">
                  Screen_name:</td>
              <td class="style6">
                  <asp:TextBox ID="TextBox12" runat="server" BorderColor="White" 
                       Font-Size="Medium" Height="23px" 
                      Width="190px" ></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox12" CssClass="CustomValidatorCalloutStyle " 
        ErrorMessage="screen name missing."></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="style12" height="25">
                  <asp:Label ID="Label3" runat="server" Text="First name:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:TextBox ID="TextBox2" runat="server" BorderColor="White" 
                       Font-Size="Medium" Height="23px" 
                      Width="190px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" CssClass="CustomValidatorCalloutStyle " 
        ErrorMessage="First name missing."></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="style12" height="25">
                  <asp:Label ID="Label4" runat="server" Text="Last name:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:TextBox ID="TextBox3" runat="server" BorderColor="White" 
                       Font-Size="Medium" Height="23px" 
                      Width="190px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox3" CssClass="CustomValidatorCalloutStyle " 
        ErrorMessage="Last name missing."></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="style12" height="25">
                  <asp:Label ID="Label5" runat="server" Text="Gender:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:DropDownList ID="DropDownList1" runat="server" CssClass="fillcomponent" 
                       Height="23px" Width="190px">
                      <asp:ListItem>Female</asp:ListItem>
                      <asp:ListItem>Male</asp:ListItem>
                  </asp:DropDownList>
              </td>
          </tr>
          <tr>
              <td class="style12" height="25">
                  <asp:Label ID="Label6" runat="server" Text="Date of birth:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:TextBox ID="TextBox5" runat="server" BorderColor="White" 
                      Font-Size="Medium" Height="23px" 
                      Width="190px"></asp:TextBox>
                  <asp:CalendarExtender ID="TextBox5_CalendarExtender" runat="server" 
                      Enabled="True" TargetControlID="TextBox5">
                  </asp:CalendarExtender>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="TextBox5" CssClass="CustomValidatorCalloutStyle " 
        ErrorMessage="Birth date missing."></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="style12" height="25">
                  <asp:Label ID="Label7" runat="server" Text="Education level:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:DropDownList ID="DropDownList2" runat="server" CssClass="fillcomponent" 
                       Height="23px" Width="190px">
                      <asp:ListItem>Graduation</asp:ListItem>
                      <asp:ListItem>Diploma</asp:ListItem>
                      <asp:ListItem>Post graduation</asp:ListItem>
                      <asp:ListItem>Other</asp:ListItem>
                  </asp:DropDownList>
              </td>
          </tr>
          <tr>
              <td class="style12" height="25">
                  <asp:Label ID="Label8" runat="server" Text="Institute name:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:TextBox ID="TextBox7" runat="server" BorderColor="White" 
                      Font-Size="Medium" Height="23px" 
                      Width="190px" ReadOnly="True"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style12" height="25">
                  <asp:Label ID="Label13" runat="server" Text="Admnission year:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:DropDownList ID="DropDownList4" runat="server" CssClass="fillcomponent" 
                      Height="23px" Width="190px">
                      <asp:ListItem>2009</asp:ListItem>
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
              </td>
          </tr>
          <tr>
              <td class="style12" height="25">
                  <asp:Label ID="Label14" runat="server" Text="Branch:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:DropDownList ID="DropDownList5" runat="server" CssClass="fillcomponent" 
                      Height="23px" Width="190px">
                      <asp:ListItem>Civil Engineering</asp:ListItem>
                      <asp:ListItem>Computer Engineering</asp:ListItem>
                      <asp:ListItem>EC engineering</asp:ListItem>
                      <asp:ListItem>Electrical Engineering</asp:ListItem>
                      <asp:ListItem>Mechanical Engineering</asp:ListItem>
                  </asp:DropDownList>
              </td>
          </tr>
          <tr>
              <td class="style12" height="25">
                  <asp:Label ID="Label15" runat="server" Text="Current sem:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:DropDownList ID="DropDownList6" runat="server" CssClass="fillcomponent" 
                      Height="25px" Width="190px">
                      <asp:ListItem>1st</asp:ListItem>
                      <asp:ListItem>2nd</asp:ListItem>
                      <asp:ListItem>3rd</asp:ListItem>
                      <asp:ListItem>4th</asp:ListItem>
                      <asp:ListItem>5th</asp:ListItem>
                      <asp:ListItem>6th</asp:ListItem>
                      <asp:ListItem>7th</asp:ListItem>
                      <asp:ListItem>8th</asp:ListItem>
                  </asp:DropDownList>
              </td>
          </tr>
          <tr>
              <td class="style12" height="25">
                  Email_id:</td>
              <td class="style7">
                  <asp:TextBox ID="TextBox11" runat="server" BorderColor="White" 
                       ReadOnly="True" Font-Size="Medium" Height="23px" 
                      Width="210px"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style12" height="25">
                  &nbsp;</td>
              <td class="style7">
                  <asp:Button ID="Button1" runat="server" Text="Save" CssClass="style13" 
                      Width="120px" />
              </td>
          </tr>
          </table>
  </div>

    </div>
    
<div id="footer1">
           <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#666666"  >Login</asp:HyperLink>
    </div>
    </div>
    </form>
</body>
</html>
