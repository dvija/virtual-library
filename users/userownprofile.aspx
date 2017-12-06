<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="userownprofile.aspx.vb" Inherits="virtual_library.userownprofile" %>

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
        {
            
            }
    
    

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
              <td class="style5" height="25">
                  Enrollment no:</td>
              <td class="style6">
                  <asp:TextBox ID="TextBox1" runat="server" BorderColor="White" 
                      BorderStyle="None" ReadOnly="True" Font-Size="Medium" Height="25px" 
                      Width="250px">dsfs</asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style3" height="25">
                  <asp:Label ID="Label3" runat="server" Text="First name:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:TextBox ID="TextBox2" runat="server" BorderColor="White" 
                      BorderStyle="None" ReadOnly="True" Font-Size="Medium" Height="25px" 
                      Width="250px">fdg</asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style3" height="25">
                  <asp:Label ID="Label4" runat="server" Text="Last name:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:TextBox ID="TextBox3" runat="server" BorderColor="White" 
                      BorderStyle="None" ReadOnly="True" Font-Size="Medium" Height="25px" 
                      Width="250px">fdg</asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style3" height="25">
                  <asp:Label ID="Label5" runat="server" Text="Gender:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:TextBox ID="TextBox4" runat="server" BorderColor="White" 
                      BorderStyle="None" ReadOnly="True" Font-Size="Medium" Height="25px" 
                      Width="250px">fd</asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style3" height="25">
                  <asp:Label ID="Label6" runat="server" Text="Date of birth:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:TextBox ID="TextBox5" runat="server" BorderColor="White" 
                      BorderStyle="None" ReadOnly="True" Font-Size="Medium" Height="25px" 
                      Width="250px">df</asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style3" height="25">
                  <asp:Label ID="Label7" runat="server" Text="Education level:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:TextBox ID="TextBox6" runat="server" BorderColor="White" 
                      BorderStyle="None" ReadOnly="True" Font-Size="Medium" Height="25px" 
                      Width="250px">fd</asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style3" height="25">
                  <asp:Label ID="Label8" runat="server" Text="Institute name:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:TextBox ID="TextBox7" runat="server" BorderColor="White" 
                      BorderStyle="None" ReadOnly="True" Font-Size="Medium" Height="25px" 
                      Width="250px">fd</asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style3" height="25">
                  <asp:Label ID="Label13" runat="server" Text="Admnission year:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:TextBox ID="TextBox8" runat="server" BorderColor="White" 
                      BorderStyle="None" ReadOnly="True" Font-Size="Medium" Height="25px" 
                      Width="250px">df</asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style3" height="25">
                  <asp:Label ID="Label14" runat="server" Text="Branch:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:TextBox ID="TextBox9" runat="server" BorderColor="White" 
                      BorderStyle="None" ReadOnly="True" Font-Size="Medium" Height="25px" 
                      Width="250px">fd</asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style3" height="25">
                  <asp:Label ID="Label15" runat="server" Text="Current sem:"></asp:Label>
              </td>
              <td class="style7">
                  <asp:TextBox ID="TextBox10" runat="server" BorderColor="White" 
                      BorderStyle="None" ReadOnly="True" Font-Size="Medium" Height="25px" 
                      Width="250px">g</asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style3" height="25">
                  Email_id:</td>
              <td class="style7">
                  <asp:TextBox ID="TextBox11" runat="server" BorderColor="White" 
                      BorderStyle="None" ReadOnly="True" Font-Size="Medium" Height="25px" 
                      Width="250px">fg</asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="style3" height="25">
                  &nbsp;</td>
              <td class="style7" height="auto" width="50">
                 </td>
          </tr>
          <tr>
              <td class="style3" height="25">
                  &nbsp;</td>
              <td class="style7">

   
   

   
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
