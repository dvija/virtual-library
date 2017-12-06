Imports System.Data.SqlClient

Public Class primaryinterests
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

        s2 = Session("vlemailid")
        s1 = Session("vlenrollno")
        'Dim enrollno As HttpCookie
        'enrollno = Request.Cookies("enrollno")
        'Dim emailid As HttpCookie
        'emailid = Request.Cookies("email")
        's1 = Convert.ToString(enrollno.Value)
        's2 = Convert.ToString(emailid.Value)
        's1 = "100760107001"
        ' s2 = "rjgundaraniya123@gmail.com"
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim flag = checkall()
        If flag = 1 Then
            Response.Redirect("feelupprimarydetail.aspx")
        Else
            addlikesubject()
        End If
    End Sub

    Public Sub addlikesubject()
        Dim s As String
        If CheckBox1.Checked = True Then
            s = "Computer"
            Dim qry = "INSERT INTO studentlike VALUES ('" & s1 & "','" & s & "',@p)"
            Dim cmd As New SqlCommand(qry, con)
            cmd.Parameters.AddWithValue("@p", 0)
            cmd.ExecuteNonQuery()
        Else
            s = ""
        End If
        If CheckBox2.Checked = True Then
            s = "Chemical"
            Dim qry = "INSERT INTO studentlike VALUES ('" & s1 & "','" & s & "',@p)"
            Dim cmd As New SqlCommand(qry, con)
            cmd.Parameters.AddWithValue("@p", 0)
            cmd.ExecuteNonQuery()
        Else
            s = ""
        End If
        If CheckBox3.Checked = True Then
            s = "Electrical"
            Dim qry = "INSERT INTO studentlike VALUES ('" & s1 & "','" & s & "',@p)"
            Dim cmd As New SqlCommand(qry, con)
            cmd.Parameters.AddWithValue("@p", 0)
            cmd.ExecuteNonQuery()
        Else
            s = ""
        End If
        If CheckBox4.Checked = True Then
            s = "EC"
            Dim qry = "INSERT INTO studentlike VALUES ('" & s1 & "','" & s & "',@p)"
            Dim cmd As New SqlCommand(qry, con)
            cmd.Parameters.AddWithValue("@p", 0)
            cmd.ExecuteNonQuery()
        Else
            s = ""
        End If
        If CheckBox5.Checked = True Then
            s = "Civil"
            Dim qry = "INSERT INTO studentlike VALUES ('" & s1 & "','" & s & "',@p)"
            Dim cmd As New SqlCommand(qry, con)
            cmd.Parameters.AddWithValue("@p", 0)
            cmd.ExecuteNonQuery()
        Else
            s = ""
        End If
        If CheckBox6.Checked = True Then
            s = "Mechanical"
            Dim qry = "INSERT INTO studentlike VALUES ('" & s1 & "','" & s & "',@p)"
            Dim cmd As New SqlCommand(qry, con)
            cmd.Parameters.AddWithValue("@p", 0)
            cmd.ExecuteNonQuery()
        Else
            s = ""
        End If
        If CheckBox7.Checked = True Then
            s = "Automobile"
            Dim qry = "INSERT INTO studentlike VALUES ('" & s1 & "','" & s & "',@p)"
            Dim cmd As New SqlCommand(qry, con)
            cmd.Parameters.AddWithValue("@p", 0)
            cmd.ExecuteNonQuery()
        Else
            s = ""
        End If
        If CheckBox8.Checked = True Then
            s = "Physics"
            Dim qry = "INSERT INTO studentlike VALUES ('" & s1 & "','" & s & "',@p)"
            Dim cmd As New SqlCommand(qry, con)
            cmd.Parameters.AddWithValue("@p", 0)
            cmd.ExecuteNonQuery()
        Else
            s = ""
        End If
        If CheckBox9.Checked = True Then
            s = "Mathematics"
            Dim qry = "INSERT INTO studentlike VALUES ('" & s1 & "','" & s & "',@p)"
            Dim cmd As New SqlCommand(qry, con)
            cmd.Parameters.AddWithValue("@p", 0)
            cmd.ExecuteNonQuery()
        Else
            s = ""
        End If
        If CheckBox10.Checked = True Then
            s = "Architecture"
            Dim qry = "INSERT INTO studentlike VALUES ('" & s1 & "','" & s & "',@p)"
            Dim cmd As New SqlCommand(qry, con)
            cmd.Parameters.AddWithValue("@p", 0)
            cmd.ExecuteNonQuery()
        Else
            s = ""
        End If
        If CheckBox11.Checked = True Then
            s = "Buisness management"
            Dim qry = "INSERT INTO studentlike VALUES ('" & s1 & "','" & s & "',@p)"
            Dim cmd As New SqlCommand(qry, con)
            cmd.Parameters.AddWithValue("@p", 0)
            cmd.ExecuteNonQuery()
        Else
            s = ""
        End If
        If CheckBox12.Checked = True Then
            s = "Science"
            Dim qry = "INSERT INTO studentlike VALUES ('" & s1 & "','" & s & "',@p)"
            Dim cmd As New SqlCommand(qry, con)
            cmd.Parameters.AddWithValue("@p", 0)
            cmd.ExecuteNonQuery()
        Else
            s = ""
        End If
        If CheckBox13.Checked = True Then
            s = "General knowledge"
            Dim qry = "INSERT INTO studentlike VALUES ('" & s1 & "','" & s & "',@p)"
            Dim cmd As New SqlCommand(qry, con)
            cmd.Parameters.AddWithValue("@p", 0)
            cmd.ExecuteNonQuery()
        Else
            s = ""
        End If
        If CheckBox14.Checked = True Then
            s = "Personality development"
            Dim qry = "INSERT INTO studentlike VALUES ('" & s1 & "','" & s & "',@p)"
            Dim cmd As New SqlCommand(qry, con)
            cmd.Parameters.AddWithValue("@p", 0)
            cmd.ExecuteNonQuery()
        Else
            s = ""
        End If
        If CheckBox15.Checked = True Then
            s = "Compititive exams"
            Dim qry = "INSERT INTO studentlike VALUES ('" & s1 & "','" & s & "',@p)"
            Dim cmd As New SqlCommand(qry, con)
            cmd.Parameters.AddWithValue("@p", 0)
            cmd.ExecuteNonQuery()
        Else
            s = ""
        End If
        If CheckBox16.Checked = True Then
            s = "Entertainment and others"
            Dim qry = "INSERT INTO studentlike VALUES ('" & s1 & "','" & s & "',@p)"
            Dim cmd As New SqlCommand(qry, con)
            cmd.Parameters.AddWithValue("@p", 0)
            cmd.ExecuteNonQuery()
        Else
            s = ""
        End If
        Response.Redirect("feelupprimarydetail.aspx")
    End Sub

    Public Function checkall() As Int32
        If CheckBox1.Checked = False And CheckBox2.Checked = False _
           And CheckBox3.Checked = False And CheckBox4.Checked = False _
          And CheckBox5.Checked = False And CheckBox6.Checked = False _
          And CheckBox7.Checked = False And CheckBox8.Checked = False _
           And CheckBox9.Checked = False And CheckBox10.Checked = False _
          And CheckBox11.Checked = False And CheckBox12.Checked = False _
          And CheckBox13.Checked = False And CheckBox14.Checked = False _
          And CheckBox15.Checked = False And CheckBox16.Checked = False _
          Then
            Return 1
        Else
            Return 0
        End If
    End Function
End Class