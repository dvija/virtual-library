Imports System.Data.SqlClient
Imports System.IO

Public Class feelupprimarydetail
    Inherits System.Web.UI.Page
    Dim str As String = ""
    Dim s1 As String = ""
    Dim s2 As String = ""
    Dim s3 As String = ""
    Dim con As SqlConnection
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Page.Header.DataBind()
        con = New SqlConnection(ConfigurationManager.ConnectionStrings("vl").ConnectionString)
        con.Open()

        s2 = Session("vlemailid")
        s1 = Session("vlenrollno")
        'Dim enrollno As HttpCookie
        'enrollno = Request.Cookies("enrollno")
        'Dim emailid As HttpCookie
        'emailid = Request.Cookies("email")
        's1 = Convert.ToString(enrollno.Value)
        's2 = Convert.ToString(emailid.Value)
        's1 = "100760107001"
        's2 = "rjgundaraniya123@gmail.com"
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim enroll = s1
        Dim mail = s2
        Dim screenname = TextBox1.Text
        Dim fname = TextBox2.Text
        Dim lname = TextBox3.Text
        Dim gender = DropDownList1.SelectedItem.ToString
        Dim bdate = TextBox4.Text
        Dim educationlevel = DropDownList2.SelectedItem.ToString
        Dim institutename = DropDownList3.SelectedItem.ToString
        Dim admissionyear = DropDownList4.SelectedItem.ToString
        Dim branch = DropDownList5.SelectedItem.Text
        Dim curssem = DropDownList6.SelectedItem.Text

        Dim str As Stream = FileUpload1.PostedFile.InputStream
        Dim br As New BinaryReader(str)
        Dim size As [Byte]() = br.ReadBytes(CInt(str.Length))
        Dim qry = "INSERT INTO userdetail VALUES ('" & enroll & "',@p,'" & mail & "','" & screenname & "','" & fname & "','" & lname & "','" & gender & "','" & bdate & "','" & educationlevel & "','" & institutename & "','" & admissionyear & "','" & branch & "','" & curssem & "')"
        Dim cmd As New SqlCommand(qry, con)
        cmd.Parameters.AddWithValue("@p", size)
        cmd.ExecuteNonQuery()
        ' MsgBox("your data sucsessfully enter into database")
        clearcontrol()
        Response.Redirect("userhome.aspx")
    End Sub
    Protected Sub clearcontrol()
        TextBox1.Text = " "
        TextBox2.Text = " "
        TextBox3.Text = " "
        TextBox4.Text = " "
    End Sub
End Class