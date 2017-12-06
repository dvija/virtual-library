Imports System.Data.SqlClient
Imports System.Net.Mail

Public Class index
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim dr As SqlDataReader
    Dim str As String
    Dim flag As Integer
    Dim enroll, pwd As String
    Dim randomno As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con = New SqlConnection(ConfigurationManager.ConnectionStrings("vl").ConnectionString)
        con.Open()
        sethighratedbooks()
        setrecentlyaddedbook()
        Page.Response.Cache.SetCacheability(HttpCacheability.NoCache)
        If Not IsPostBack Then
            If ((Not (Request.Cookies("UserNamevl")) Is Nothing) AndAlso (Not (Request.Cookies("Passwordvl")) Is Nothing)) Then
                TextBox1.Text = Request.Cookies("UserNamevl").Value
                TextBox2.Attributes("value") = Request.Cookies("Passwordvl").Value
                CheckBox1.Checked = True
            End If
        End If
    End Sub

    '****************coding for sign up*************************
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        flag = checkAccountPresentDatabase()
        'creating cookies
        If (flag = 1) Then
            Dim enrollno As New HttpCookie("enrollno")
            enrollno.Value = TextBox3.Text
            Response.Cookies.Add(enrollno)

            Dim emailid As New HttpCookie("email")
            emailid.Value = TextBox4.Text
            Response.Cookies.Add(emailid)

            Dim pwd As New HttpCookie("pwd")
            pwd.Value = TextBox5.Text
            Response.Cookies.Add(pwd)
            Response.Redirect("users/userenrollkey.aspx")
        End If
    End Sub

    Public Function checkAccountPresentDatabase() As Int32
        Dim flg As Integer
        Try
            Dim enrollno = Convert.ToString(TextBox3.Text)
            Dim emailid = Convert.ToString(TextBox4.Text)
            pwd = Convert.ToString(TextBox3.Text)

            str = "SELECT COUNT(*) AS count FROM login WHERE enrollno = '" & enrollno & "' "
            Dim cmd1 As New SqlCommand(str, con)
            Dim count1 = cmd1.ExecuteScalar()

            str = "SELECT COUNT(*) AS count FROM login WHERE emailid = '" & emailid & "' "
            Dim cmd2 As New SqlCommand(str, con)
            Dim count2 = cmd2.ExecuteScalar()

            If count1 = 1 Then
                MsgBox("username is  already exist ! signup fail")
                flg = 0
            ElseIf count2 = 1 Then
                MsgBox("emailid is  already exist ! signup fail")
                flg = 0
            Else
                flg = 1
            End If

        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
        Return flg
    End Function


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
    '*****************sign up complete********************************



    '******************coding for highratedbook show******************
    Public Sub sethighratedbooks()
        Dim str = "select top 6 bookid from bookdata  order by rating desc"
        Dim cmd As New SqlCommand(str, con)
        dr = cmd.ExecuteReader()
        Dim a(6) As String
        Dim i As Int32
        i = 0
        Do While dr.Read()
            a(i) = dr.Item(0)
            ' MsgBox("bookid =" & a(i) & "  and cnt=" & dr.Item(1))
            i = i + 1
        Loop
        dr.Close()
        Image1.ImageUrl = "~/topbook.ashx?id=" & a(0)
        Image2.ImageUrl = "~/topbook.ashx?id=" & a(1)
        Image3.ImageUrl = "~/topbook.ashx?id=" & a(2)
        Image4.ImageUrl = "~/topbook.ashx?id=" & a(3)
        Image5.ImageUrl = "~/topbook.ashx?id=" & a(4)
        Image6.ImageUrl = "~/topbook.ashx?id=" & a(5)
    End Sub
    '*********************coding for highrated book complete****************


    '****************coding for new available book show****************
    Public Sub setrecentlyaddedbook()
        Dim str = "select top 6 bookid from bookdata order by bookenterdate desc"
        Dim cmd As New SqlCommand(str, con)
        dr = cmd.ExecuteReader()
        Dim b(5) As String
        Dim i As Int32
        i = 0
        Do While dr.Read()
            b(i) = dr.Item(0)
            '  MsgBox("bookid =" & b(i))
            i = i + 1
        Loop
        dr.Close()
        Image7.ImageUrl = "~/topbook.ashx?id=" & b(0)
        Image8.ImageUrl = "~/topbook.ashx?id=" & b(1)
        Image9.ImageUrl = "~/topbook.ashx?id=" & b(2)
        Image10.ImageUrl = "~/topbook.ashx?id=" & b(3)
        Image11.ImageUrl = "~/topbook.ashx?id=" & b(4)
        Image12.ImageUrl = "~/topbook.ashx?id=" & b(5)
    End Sub
    '***********coding for new available book show complete***************






    '*****************coding for login*********************************
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        If CheckBox1.Checked Then
            Response.Cookies("UserNamevl").Expires = DateTime.Now.AddDays(30)
            Response.Cookies("Passwordvl").Expires = DateTime.Now.AddDays(30)
        Else
            Response.Cookies("UserNamevl").Expires = DateTime.Now.AddDays(-1)
            Response.Cookies("Passwordvl").Expires = DateTime.Now.AddDays(-1)
        End If
        Response.Cookies("UserNamevl").Value = TextBox1.Text.Trim
        Response.Cookies("Passwordvl").Value = TextBox2.Text.Trim
        login()
    End Sub

    Public Sub login()
        Try
            enroll = (TextBox1.Text).ToString
            pwd = (encoding(TextBox2.Text)).ToString
            

            str = "SELECT COUNT(*) AS count FROM login WHERE enrollno = @p1 and password=@p2"
            Dim cmd1 As New SqlCommand(str, con)
            cmd1.Parameters.AddWithValue("@p1", enroll)
            cmd1.Parameters.AddWithValue("@p2", pwd)
            Dim count1 = cmd1.ExecuteScalar()

            str = "SELECT COUNT(*) AS count FROM login WHERE emailid = @p1 and password=@p2"
            Dim cmd2 As New SqlCommand(str, con)
            cmd2.Parameters.AddWithValue("@p1", enroll)
            cmd2.Parameters.AddWithValue("@p2", pwd)
            Dim count2 = cmd2.ExecuteScalar()

            If count1 = 1 Then
                Dim emailid, enrollno As String
                emailid = ""
                enrollno = ""
                Session("vlenrollno") = TextBox1.Text
                enrollno = TextBox1.Text
                Dim str = "SELECT emailid FROM login WHERE enrollno = '" & enrollno & "' "
                Dim cmd As New SqlCommand(str, con)
                Dim dr As SqlDataReader
                dr = cmd.ExecuteReader()
                Do While dr.Read()
                    emailid = dr.Item(0)
                Loop
                dr.Close()
                Session("vlemailid") = emailid
                flag = 1

            ElseIf count2 = 1 Then
                Dim emailid, enrollno As String
                emailid = ""
                enrollno = ""
                Session("vlemailid") = TextBox1.Text
                emailid = TextBox1.Text
                Dim str = "SELECT enrollno FROM login WHERE emailid = '" & emailid & "' "
                Dim cmd As New SqlCommand(str, con)
                Dim dr As SqlDataReader
                dr = cmd.ExecuteReader()
                Do While dr.Read()
                    enrollno = dr.Item(0)
                Loop
                dr.Close()
                Session("vlenrollno") = enrollno
                flag = 1
            Else
                flag = 0
            End If


            If flag <> 1 Then
                Label3.Visible = True

            End If

        Catch ex As Exception
            MsgBox("Something went wrong: " & Environment.NewLine & ex.Message)
        End Try
        If flag = 1 Then
            Response.Redirect("users\userhome.aspx")
            '  MsgBox("welcome login user.........")
        End If
    End Sub
    Public Function encoding(ByVal sData As String)
        Dim encodedData As String
        sData = textbox2.Text
        Try
            Dim encData_byte As Byte() = New Byte(sData.Length - 1) {}
            encData_byte = System.Text.Encoding.UTF8.GetBytes(sData)
            encodedData = Convert.ToBase64String(encData_byte)
        Catch ex As Exception
            Throw (New Exception("Error in base64Encode" & ex.Message))
        End Try
        Return encodedData
    End Function
    '*************coding for login complete*********************

End Class