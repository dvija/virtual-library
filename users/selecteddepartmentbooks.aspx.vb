Imports System.Data.SqlClient

Public Class selecteddepartmentbooks
    Inherits System.Web.UI.Page
    Dim subjectname As String
    Dim con As SqlConnection
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
        '  Dim s1 = "100760107001"
        'Dim s2 = "rjgundaraniya123@gmail.com"
        con = New SqlConnection(ConfigurationManager.ConnectionStrings("vl").ConnectionString)
        con.Open()
        '  subjectname = Request.QueryString("subject").ToString
        '   Label1.Text = subjectname

        Dim subjectname = "Computer"
        Label2.Text = subjectname

        Image1.ImageUrl = "~\users\Showuserprofileimage.ashx?id=" & s1
    End Sub

    Protected Sub ImagesList_PagePropertiesChanging(ByVal sender As Object, ByVal e As PagePropertiesChangingEventArgs)
        Try
            TopPager.SetPageProperties(e.StartRowIndex, e.MaximumRows, False)
            BottomPager.SetPageProperties(e.StartRowIndex, e.MaximumRows, False)
        Catch exception As Exception
            'Elmah.ErrorSignal.FromCurrentContext().Raise(exception);
        End Try
    End Sub

    Protected Sub read(ByVal sender As Object, ByVal e As EventArgs)
        Dim id As String = CType(sender, LinkButton).CommandArgument
        Session("id") = id
        MsgBox(id)
        Response.Redirect("book.aspx")
    End Sub

    
End Class