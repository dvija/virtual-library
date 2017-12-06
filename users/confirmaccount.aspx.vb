Imports System.Data.SqlClient
Public Class confirmaccount1
    Inherits System.Web.UI.Page
    Dim str As String = ""
    Dim s1 As String = ""
    Dim s2 As String = ""
    Dim s3 As String = ""
    Dim userkey As String = ""
    Dim con As SqlConnection
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con = New SqlConnection(ConfigurationManager.ConnectionStrings("vl").ConnectionString)
        con.Open()
        Dim enrollno As HttpCookie
        enrollno = Request.Cookies("enrollno")
        Dim emailid As HttpCookie
        emailid = Request.Cookies("email")
        Dim pwd As HttpCookie
        pwd = Request.Cookies("pwd")
        Dim enrollkey As HttpCookie
        enrollkey = Request.Cookies("key")
        s1 = Convert.ToString(enrollno.Value)
        's1 = CType(enrollno.Value, String)
        s2 = Convert.ToString(emailid.Value)
        s3 = Convert.ToString(pwd.Value)
        'MsgBox("enroll" & s1)
        'MsgBox("email" & s2)
        'MsgBox("pass" & s3)
        userkey = Convert.ToString(enrollkey.Value)
        'MsgBox("key" & userkey)
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim type As Int32
        Dim str = "SELECT usertype FROM usertype WHERE userkey = '" & userkey & "' "
        Dim cmd As New SqlCommand(str, con)
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader()
        Do While dr.Read()
            type = dr.Item(0)
        Loop
        dr.Close()
        ' MsgBox("type" & type)
        Dim rcookie As HttpCookie
        rcookie = Request.Cookies("confirmcode")
        If rcookie.Value = TextBox1.Text Then
            s3 = encoding()
            str = "insert into login values('" & s1 & "','" & s2 & "','" & s3 & "','" & type & "',@p)"
            Dim cmd3 As New SqlCommand(str, con)
            cmd3.Parameters.AddWithValue("@p", 1)
            cmd3.ExecuteNonQuery()
            con.Close()

            'session variables for username and enrollno are set
            Session("vlemailid") = s2
            Session("vlenrollno") = s1


            'password,email,enrollno,confirmcode,userkey cookie expires
            Response.Cookies("pwd").Expires = DateTime.Now.AddDays(-1)
            Response.Cookies("enrollno").Expires = DateTime.Now.AddDays(-1)
            Response.Cookies("email").Expires = DateTime.Now.AddDays(-1)
            Response.Cookies("key").Expires = DateTime.Now.AddDays(-1)
            Response.Cookies("confirmcode").Expires = DateTime.Now.AddDays(-1)
            Response.Redirect("primaryinterests.aspx")
        Else
            Label2.Text = "wrong confirmation code !!try again."
            Label2.Visible = True
        End If
    End Sub

    Public Function encoding()
        Dim simpleData As String
        simpleData = s3
        Try
            Dim encData_byte As Byte() = New Byte(simpleData.Length - 1) {}
            encData_byte = System.Text.Encoding.UTF8.GetBytes(simpleData)
            Dim encodedData As String = Convert.ToBase64String(encData_byte)
            s3 = encodedData
        Catch ex As Exception
            Throw (New Exception("Error in base64Encode" & ex.Message))
        End Try
        Return s3
    End Function
End Class