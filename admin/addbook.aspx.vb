Imports System.Data.SqlClient
Imports System.IO



Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim bookid As String


    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        Dim substr As String
        substr = Convert.ToString(DropDownList1.SelectedItem)
        If (substr.Length() <= 3) Then
            bookid = substr
        Else
            bookid = substr.Substring(0, 3)

        End If
        'MsgBox(bookid)
        ViewState("bookid") = bookid


    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles DropDownList2.SelectedIndexChanged

        Dim substr As String

        Dim id As String

        Dim gen As String = Convert.ToString("General")

        substr = Convert.ToString(DropDownList2.SelectedItem)

        If (substr = gen) Then

            id = ViewState("bookid").ToString + "-" + gen
        Else
            id = ViewState("bookid").ToString + "-" + substr

        End If
        Try
            ' MsgBox(id)
            ViewState("sembookid") = id

        Catch ex As Exception
            MsgBox(Convert.ToString(ex))
        End Try
        DropDownList3.Items.Insert(0, New ListItem("--Select--", "0"))

    End Sub

    Protected Sub DropDownList3_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles DropDownList3.SelectedIndexChanged

        Dim substr As String
        substr = Convert.ToString(DropDownList3.SelectedItem)
        If (substr.Length() <= 3) Then
            bookid = ViewState("sembookid").ToString + "-" + substr
        Else
            bookid = ViewState("sembookid").ToString + "-" + substr.Substring(0, 3)

        End If


        Dim topno = "SELECT max(cnt) FROM booksubject WHERE department='" & Convert.ToString(DropDownList1.SelectedItem) & "' and sem='" & Convert.ToString(DropDownList2.SelectedItem) & "'and subject='" & Convert.ToString(DropDownList3.SelectedItem) & "'"
        'MsgBox(topno)
        Dim tc As New SqlCommand(topno, con)
        Dim co = tc.ExecuteScalar
        co = co + 1
        'MsgBox(co)
        Dim id = bookid + "-" + Convert.ToString(co)
        'MsgBox(id)

        TextBox6.Text = id

        ViewState("co") = co

        Dim total = "SELECT max(total) FROM booksubject WHERE department='" & Convert.ToString(DropDownList1.SelectedItem) & "' and sem='" & Convert.ToString(DropDownList2.SelectedItem) & "'and subject='" & Convert.ToString(DropDownList3.SelectedItem) & "'"
        'MsgBox(total)
        Dim tbook As New SqlCommand(total, con)
        Dim t = tbook.ExecuteScalar()
        t = t + 1
        ViewState("t") = t
        ViewState("department") = Convert.ToString(DropDownList1.SelectedItem)
        ViewState("sem") = Convert.ToString(DropDownList2.SelectedItem)
        ViewState("sub") = Convert.ToString(DropDownList3.SelectedItem)

       

    End Sub



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con = New SqlConnection(ConfigurationManager.ConnectionStrings("vl").ConnectionString)

        con.Open()

    End Sub
    Protected Sub clearcontrol()
        TextBox1.Text = " "
        TextBox2.Text = " "
        TextBox3.Text = " "
        TextBox4.Text = " "
        'TextBox5.Text = " "
        TextBox6.Text = " "
        DropDownList1.SelectedValue = "Select one"
        DropDownList2.SelectedValue = "Select one"

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
     




        Dim str As Stream = FileUpload1.PostedFile.InputStream
        Dim str1 As Stream = FileUpload2.PostedFile.InputStream
        Dim bn, pn, an, id, desc, sn, category, sem As String
        bn = Convert.ToString(TextBox1.Text)
        pn = Convert.ToString(TextBox2.Text)
        an = Convert.ToString(TextBox3.Text)
        desc = Convert.ToString(TextBox4.Text)
        sn = Convert.ToString(DropDownList3.SelectedItem)
        id = Convert.ToString(TextBox6.Text)
        category = DropDownList1.SelectedItem.ToString
        sem = DropDownList2.SelectedItem.ToString


        'Dim qry1 = "SELECT COUNT(*) AS count FROM bookdata WHERE bookid='" & id & "'"
        'MsgBox(Str)
        'Dim cmd1 As New SqlCommand(qry1, con)


        'Dim count = cmd1.ExecuteScalar()
        'If count = 1 Then
        '    TextBox6.Text = ""
        '    Label1.Text = "Bookid is already exist! Please change."



        'Else


        Dim qry As String
        Dim br As New BinaryReader(str)
        Dim size As [Byte]() = br.ReadBytes(CInt(str.Length))
        Dim br1 As New BinaryReader(str1)
        Dim size1 As [Byte]() = br1.ReadBytes(CInt(str1.Length))
        Dim dat As Date = Date.Now()




        qry = "INSERT INTO bookdata VALUES ('" & id & "','" & category & "','" & bn & "','" & pn & "','" & an & "','" & desc & "','" & sn & "',@p,@q,@r,@s,@t,@u,'" & sem & "')"
        Dim cmd As New SqlCommand(qry, con)
        cmd.Parameters.AddWithValue("@p", size)
        cmd.Parameters.AddWithValue("@q", size1)
        cmd.Parameters.AddWithValue("@r", "0")
        cmd.Parameters.AddWithValue("@s", dat)
        cmd.Parameters.AddWithValue("@t", "0")
        cmd.Parameters.AddWithValue("@u", "0")
        cmd.ExecuteNonQuery()
        '  MsgBox("your data sucsessfully enter into database")
        Label3.Visible = True

        clearcontrol()
        Dim cnt = ViewState("co").ToString
        Dim t = ViewState("t").ToString


        Dim update = "update booksubject set cnt=" & cnt & ",total=" & t & " WHERE department='" & ViewState("department").ToString & "' and sem='" & ViewState("sem").ToString & "'and subject='" & ViewState("sub").ToString & "'"
        ' MsgBox(update)
        Dim up As New SqlCommand(update, con)
        up.ExecuteNonQuery()

        Dim notification_qry = "select * from studentlike where likesubject='" & category & "'"
        ' MsgBox(notification_qry)
        Dim adpapter As New SqlDataAdapter(notification_qry, con)
        Dim data As New DataSet()
        adpapter.Fill(data)
        For i = 0 To data.Tables(0).Rows.Count - 1


            Dim a = Convert.ToString(data.Tables(0).Rows(i).Item(0))

            Dim statusqry = "SELECT status FROM studentlike WHERE enrollno='" & a & "'"
            ' MsgBox(statusqry)
            Dim c As New SqlCommand(statusqry, con)


            Dim cou = c.ExecuteScalar()
            'MsgBox(cou)

            If cou = 0 Then

                '   MsgBox(a)
                Dim statusupdate = "UPDATE studentlike SET status=1 where enrollno='" & a & "'"
                '  MsgBox(statusupdate)
                Dim cm As New SqlCommand(statusupdate, con)
                cm.ExecuteNonQuery()
                Dim insert = "insert into notification values('" & a & "','" & id & "',1) "
                Dim inse As New SqlCommand(insert, con)
                inse.ExecuteNonQuery()


            Else
                'Dim topno = "SELECT MAX(notification_no) AS co FROM notification WHERE enrollno = '" & a & "'"
                Dim topno = "SELECT max(notification_no) FROM notification WHERE enrollno='" & a & "'"
                ' MsgBox(topno)
                Dim tc As New SqlCommand(topno, con)
                Dim co = tc.ExecuteScalar()
                'MsgBox(co)
                Dim nextcount = co + 1


                'MsgBox(nextcount)
                Dim inc_notification = "insert into notification values('" & a & "','" & id & "'," & nextcount & ") "
                Dim inc As New SqlCommand(inc_notification, con)
                inc.ExecuteNonQuery()

            End If

        Next



        ' End If


    End Sub
End Class