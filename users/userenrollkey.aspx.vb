Imports System.Data.SqlClient
Imports System.Net.Mail

Public Class userenrollkey
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con = New SqlConnection(ConfigurationManager.ConnectionStrings("vl").ConnectionString)
        con.Open()
    End Sub

    Private Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim key = TextBox1.Text
        Dim str = "SELECT COUNT(*) AS count FROM usertype WHERE userkey = '" & key & "' "
        Dim cmd As New SqlCommand(str, con)
        Dim count = cmd.ExecuteScalar()

        If count = 1 Then
            Dim enrollkey As New HttpCookie("key")
            enrollkey.Value = TextBox1.Text
            Response.Cookies.Add(enrollkey)
            sendmail()
            Response.Redirect("confirmaccount.aspx")
        Else
            Label2.Text = "sorry wrong enrollkey"
            Label2.Visible = True
        End If
    End Sub

    Public Sub sendmail()
        Dim randomno = randomnogenrator()
        Dim rcookie As New HttpCookie("confirmcode")
        rcookie.Value = randomno
        Response.Cookies.Add(rcookie)

        Dim emailid As HttpCookie
        emailid = Request.Cookies("email")

        Dim mailto As String
        mailto = Convert.ToString(emailid.Value)
        'MsgBox("" & mailto)
        'mail sending
        Dim Mail As New MailMessage
        Try
            Mail.Subject = "welcome to library"
            Mail.To.Add("" & mailto)
            Mail.From = New MailAddress("megundaraniya@gmail.com")
            Mail.Body = "confirmation code:  " & randomno & vbNewLine & "confirm your registration by entering this code."
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

End Class