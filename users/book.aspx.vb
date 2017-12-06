
Imports System.Data.SqlClient
Imports System.IO


Public Class book
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim a As String
    Dim s2, s1 As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con = New SqlConnection(ConfigurationManager.ConnectionStrings("vl").ConnectionString)
        con.Open()

        s2 = Session("vlemailid")
        s1 = Session("vlenrollno")


        a = Session("id")
        'a = "Com-1-coa-1"
        'If (IsPostBack) Then
        'Else


       
        Dim str = "select * from bookdata where bookid ='" & a & "'"
        Dim dr As SqlDataReader
        Dim cmd As New SqlCommand(str, con)
        dr = cmd.ExecuteReader()
        Do While dr.Read
            Label2.Text = dr.Item(2)
        Loop
        dr.Close()










        Dim qry = "SELECT rate FROM bookdata WHERE bookid='" & a & "'"
        'MsgBox(qry)
        Dim tc As New SqlCommand(qry, con)
        Dim co = tc.ExecuteScalar()
        'MsgBox(co)
        Rating1.CurrentRating = co






        I1.Attributes.Add("src", "Showpdf.ashx?pID=" & a)
        ImageButton1.ImageUrl = "~\users\showbookcover.ashx?id=" & a





        'End If


    End Sub
   

    Private Sub Rating1_Changed(ByVal sender As Object, ByVal e As AjaxControlToolkit.RatingEventArgs) Handles Rating1.Changed
        a = Session("id").ToString()

        Dim total = "SELECT rating FROM bookdata WHERE bookid='" & a & "'"
        'MsgBox(total)
        Dim tc1 As New SqlCommand(total, con)
        Dim co1 = tc1.ExecuteScalar()
        'MsgBox(co1)

        'MsgBox(co1)

        Dim rate = "SELECT rate FROM bookdata WHERE bookid='" & a & "'"
        'MsgBox(rate)
        Dim r As New SqlCommand(rate, con)
        Dim cr = r.ExecuteScalar()
        'MsgBox(cr)
        'MsgBox(Rating1.CurrentRating)
        Dim rating = cr + Rating1.CurrentRating


        ' MsgBox(rating)
        co1 = co1 + 1
        Dim avg As Integer
        If (co1 = 1) Then
            avg = (rating)
        Else
            avg = (rating / 2)
        End If

        'MsgBox(avg)

        Dim rting = avg
        ' MsgBox(rting)

        Dim sql = "update bookdata set rate=@rate,rating=@rating where bookid='" & a & "'"
        'MsgBox(sql)

        Dim cmd As New SqlCommand(sql, con)


        cmd.Parameters.AddWithValue("@rating", rting)
        cmd.Parameters.AddWithValue("@rate", co1)
        cmd.ExecuteNonQuery()


        Dim rat = "SELECT rate FROM bookdata WHERE bookid='" & a & "'"
        'MsgBox(total)
        Dim ra As New SqlCommand(rat, con)
        Dim cra = ra.ExecuteScalar()
        ' MsgBox(cra)


        Rating1.CurrentRating = cra
    End Sub

    
End Class