Imports System.Data.SqlClient

Public Class edituserprofile
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim dr As SqlDataReader
    Dim s1, s2 As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        s2 = Session("vlemailid")
        s1 = Session("vlenrollno")
    
        'Dim enrollno As HttpCookie
        'enrollno = Request.Cookies("enrollno")

        'Dim emailid As HttpCookie
        'emailid = Request.Cookies("email")
        's1 = Convert.ToString(enrollno.Value)
        's2 = Convert.ToString(emailid.Value)
        'Dim s1 = "100760107001"
        ' Dim s2 = "rjgundaraniya123@gmail.com"
        con = New SqlConnection(ConfigurationManager.ConnectionStrings("vl").ConnectionString)
        con.Open()
        Dim str = "select * from userdetail where enrollno ='" & s1 & "'"
        Dim cmd As New SqlCommand(str, con)
        dr = cmd.ExecuteReader()
        Do While dr.Read()
            TextBox1.Text = dr.Item(0) 'enrollno
            '    MsgBox(dr.Item(0))
            TextBox11.Text = dr.Item(2) 'emailid
            '    MsgBox(dr.Item(2))
            HyperLink3.Text = dr.Item(3) 'screenname
            '    MsgBox(dr.Item(3))
            '    TextBox12.Text = dr.Item(3) 'screenname
            '    MsgBox(dr.Item(4))
            '    TextBox2.Text = dr.Item(4) 'fname()
            '    MsgBox(dr.Item(5))
            '    TextBox3.Text = dr.Item(5) 'lname()
            '    MsgBox(dr.Item(6))
            '    DropDownList1.SelectedItem.Text = dr.Item(6) 'gender()

            '    MsgBox(dr.Item(7))
            '    TextBox5.Text = dr.Item(7) 'bdate()
            '    MsgBox(dr.Item(8))
            '    DropDownList2.SelectedItem.Text = dr.Item(8) 'educationlevel()
            '    MsgBox(dr.Item(9))
            TextBox7.Text = dr.Item(9) 'institutename()
            '    MsgBox(dr.Item(10))
            '    DropDownList4.SelectedItem.Text = dr.Item(10) ' admissionyear()
            '    MsgBox(dr.Item(11))
            '    DropDownList5.SelectedItem.Text = dr.Item(11) ' branch()
            '    MsgBox(dr.Item(12))
            '    DropDownList6.SelectedItem.Text = dr.Item(12) ' currentsem()
        Loop
        dr.Close()
        image1.ImageUrl = "~\users\Showuserprofileimage.ashx?id=" & s1
        'image1.ImageUrl = "~\ShowImage.ashx?id=" & "sa"
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click

        Dim screenname = TextBox12.Text
        'MsgBox(screenname)
        Dim fname = TextBox2.Text
        ' MsgBox(fname)
        Dim lname = TextBox2.Text
        '  MsgBox(lname)
        Dim gender = DropDownList1.SelectedValue.ToString
        '  MsgBox(gender)
        Dim bdate = TextBox5.Text
        '  MsgBox(bdate)
        Dim educationlevel = DropDownList2.SelectedValue.ToString
        ' MsgBox(educationlevel)

        Dim admissionyear = DropDownList4.SelectedValue.ToString
        '   MsgBox(admissionyear)
        Dim branch = DropDownList5.SelectedValue.ToString
        '  MsgBox(branch)
        Dim currentsem = DropDownList6.SelectedValue.ToString
        '  MsgBox(currentsem)

        Dim qry = "update userdetail set screenname='" & screenname & "',fname='" & fname & "',lname='" & lname & "',gender='" & gender & "',bdate='" & bdate & "',educationlevel='" & educationlevel & "',admissionyear='" & admissionyear & "',branch='" & branch & "',currentsem='" & currentsem & "'"
        Dim cmd As New SqlCommand(qry, con)

        '  MsgBox("success")
        cmd.ExecuteNonQuery()
        Response.Redirect("userownprofile.aspx")
    End Sub

   
End Class

