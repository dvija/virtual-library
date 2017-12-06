Imports System.Data.SqlClient
Imports System.Net.Mail

Public Class forgotpassword
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim randomno As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con = New SqlConnection(ConfigurationManager.ConnectionStrings("vl").ConnectionString)
        con.Open()
    End Sub



    Public Function randomnogenrator()
        Dim s As String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz"
        Dim r As New Random
        Dim sb As New StringBuilder
        For i As Integer = 1 To 8
            Dim id As Integer = r.Next(0, 61)
            sb.Append(s.Substring(id, 1))
        Next
        Return (sb.ToString)
    End Function

    Public Sub sendmail()
        randomno = randomnogenrator()

        Dim random As New HttpCookie("ran")
        random.Value = randomno
        Response.Cookies.Add(random)
       
        Dim mailto As String
        mailto = TextBox1.Text
        ' MsgBox("" & mailto)
        'mail sending
        Dim Mail As New MailMessage
        Try
            Mail.Subject = "welcome to library"
            Mail.To.Add("" & mailto)
            Mail.From = New MailAddress("megundaraniya@gmail.com")
            Mail.Body = "confirmation code: " & randomno & vbNewLine & "confirm with this code."
            Dim SMTP As New SmtpClient("smtp.gmail.com")
            SMTP.EnableSsl = True
            SMTP.Credentials = New System.Net.NetworkCredential("megundaraniya@gmail.com", "DVIJARINKALTRUPTI")
            SMTP.Port = 587
            SMTP.Send(Mail)
            'MsgBox("Mail Sent")
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub


    Public Function checkunameoremailidpresent()
        Dim email As String

        email = TextBox1.Text.Trim()
        Dim str = "SELECT COUNT(*) AS count FROM login WHERE emailid=@p2"
        Dim cmd As New SqlCommand(str, con)
        'cmd.Parameters.AddWithValue("@p1", uname)
        cmd.Parameters.AddWithValue("@p2", email)
        Dim count = cmd.ExecuteScalar()
        cmd.Dispose()
        If count = 1 Then
            ' MsgBox("rows present:" & count)
            Return 1
        Else
           
            Return 0
        End If
    End Function




    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click


        Dim flag = checkunameoremailidpresent()

        If flag = 1 Then
            sendmail()
            Dim emailid As New HttpCookie("email")
            emailid.Value = TextBox1.Text
            'MsgBox(emailid.Value.ToString)
            Response.Cookies.Add(emailid)
            Response.Redirect("changepasswordcode.aspx")

        Else
            MsgBox("this emailid is not exist!!")
            Response.Redirect("../index.aspx")
        End If


    End Sub

    Private Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("../index.aspx")

    End Sub
End Class