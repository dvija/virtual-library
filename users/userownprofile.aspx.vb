Imports System.Data.SqlClient

Public Class userownprofile
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim dr As SqlDataReader
    Dim s1, s2 As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        clearcontrol()
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
    Dim cmd As New SqlCommand(Str, con)
        dr = cmd.ExecuteReader()
        Do While dr.Read()
            TextBox1.Text = dr.Item(0) 'enrollno

            TextBox11.Text = dr.Item(2) 'emailid
            HyperLink3.Text = dr.Item(3) 'screenname
            TextBox2.Text = dr.Item(4) 'fname()
            TextBox3.Text = dr.Item(5) 'lname()
            TextBox4.Text = dr.Item(6) 'gender()
            TextBox5.Text = dr.Item(7) 'bdate()
            TextBox6.Text = dr.Item(8) 'educationlevel()
            TextBox7.Text = dr.Item(9) 'institutename()
            TextBox8.Text = dr.Item(10) ' admissionyear()
            TextBox9.Text = dr.Item(11) ' branch()
            TextBox10.Text = dr.Item(12) ' currentsem()
        Loop
        dr.Close()
        image1.ImageUrl = "~\users\Showuserprofileimage.ashx?id=" & s1
    ' image1.ImageUrl = "~\ShowImage.ashx?id=" & "sa"
    End Sub


  



    Public Sub clearcontrol()
        TextBox1.Text = ""
        TextBox11.Text = ""
        HyperLink3.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox7.Text = ""
        TextBox8.Text = ""
        TextBox9.Text = ""
        TextBox10.Text = ""
    End Sub
End Class