Imports System.Data.SqlClient
Imports System.Net.Mail

Public Class resetpassword
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con = New SqlConnection(ConfigurationManager.ConnectionStrings("vl").ConnectionString)
        con.Open()
    End Sub


    Public Function encoding(ByVal sdata As String)
        Dim encodedData As String

        Try
            Dim encData_byte As Byte() = New Byte(sdata.Length - 1) {}
            encData_byte = System.Text.Encoding.UTF8.GetBytes(sdata)
            encodedData = Convert.ToBase64String(encData_byte)
        Catch ex As Exception
            Throw (New Exception("Error in base64Encode" & ex.Message))
        End Try
        Return encodedData
    End Function

    Public Sub sendpwdchangemail(ByVal mailto As String)
        'MsgBox("" & mailto)
        'mail sending
        Dim Mail As New MailMessage
        Try
            Mail.Subject = "welcome to library"
            Mail.To.Add("" & mailto)
            Mail.From = New MailAddress("megundaraniya@gmail.com")
            Mail.Body = "your password has been changed"
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


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim email As String = " "
        Dim mail As HttpCookie
        mail = Request.Cookies("email")
        email = Convert.ToString(mail.Value)
        Response.Cookies("email").Expires = DateTime.Now.AddDays(-1)
        Dim newpwd = encoding(TextBox1.Text)
        Dim str As String
        str = "update login set password =@p1 where emailid=@p2"
        Dim cmd As New SqlCommand(str, con)
        cmd.Parameters.AddWithValue("@p1", newpwd)
        cmd.Parameters.AddWithValue("@p2", email)
        cmd.ExecuteNonQuery()
        sendpwdchangemail(email)









        MsgBox("your password changed successfully")
        Response.Redirect("../index.aspx")
    End Sub
End Class