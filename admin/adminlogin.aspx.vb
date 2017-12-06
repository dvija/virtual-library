Imports System.Data.SqlClient

Public Class adminlogin
    Inherits System.Web.UI.Page

    Dim con As SqlConnection
    Dim dr As SqlDataReader
    Dim name, pwd, str As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        con = New SqlConnection(ConfigurationManager.ConnectionStrings("vl").ConnectionString)
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        name = TextBox3.Text
        pwd = TextBox4.Text

        con.Open()
        str = "SELECT COUNT(*) AS count FROM admin_detail WHERE adminid='" & name & "' and password='" + pwd + "'"
        'MsgBox(Str)
        Dim cmd As New SqlCommand(str, con)
        Dim count = cmd.ExecuteScalar()
        If count = 1 Then
            Session("name") = name

            Response.Redirect("adminhome.aspx")
        Else
            Label2.Text = "Invalid Username or password !! Try again."
            'MsgBox("login fail")
        End If

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        Response.Redirect("../index.aspx")
    End Sub
End Class