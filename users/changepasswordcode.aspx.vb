Public Class changepasswordcode
    Inherits System.Web.UI.Page
    Dim s1 As String = ""

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       
    End Sub

    Private Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
       

        Dim randomno As HttpCookie
        randomno = Request.Cookies("ran")
        s1 = Convert.ToString(randomno.Value)
        If randomno.Value = TextBox1.Text Then
            Label2.Visible = False
            Response.Cookies("ran").Expires = DateTime.Now.AddDays(-1)
            Response.Redirect("resetpassword.aspx")

        Else
            Label2.Text = "sorry !!you have entered wrong confirmation code."
            Label2.Visible = True
        End If






    End Sub

    Private Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("../index.aspx")
    End Sub
End Class