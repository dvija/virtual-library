Imports System.Data.SqlClient
Public Class WebForm2
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim bookid As String
    Dim s1 As String
    Dim bid



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con = New SqlConnection(ConfigurationManager.ConnectionStrings("vl").ConnectionString)
        con.Open()
        s1 = Session("bookaddid")
        'MsgBox(s1)
      
        Try
            Dim bookname As String = Convert.ToString(DropDownList3.SelectedItem)
            Dim str = "select * from usersenddata where id ='" & s1 & "'"
            ' MsgBox(str)
            Dim adp As New SqlDataAdapter(str, con)
            Dim ds As New DataSet()
            adp.Fill(ds)
            Dim id

            Dim cmd As New SqlCommand(str, con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            Do While dr.Read()
                id = dr.Item(1)

                TextBox1.Text = dr.Item(2)
                TextBox2.Text = dr.Item(3)
                TextBox3.Text = dr.Item(4)
                TextBox4.Text = dr.Item(5)
               
                'MsgBox(bookid)
             

            Loop
            dr.Close()
            Dim temp = s1
          
            Image1.ImageUrl = "~\admin\image.ashx?id=" & temp
        Catch ex As Exception
            Response.Write("Error occured: " & ex.Message.ToString())
        Finally

        End Try


    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        If DropDownList1.SelectedValue = "Select one" Or DropDownList2.SelectedValue = "Select one" Or TextBox6.Text = "" Then

            Label3.Text = "Please select all the value"

        Else
            Dim s1 = Session("bookaddid")



            Dim bn, pn, an, bid, desc, sn, category, sem As String
            bn = Convert.ToString(TextBox1.Text)
            pn = Convert.ToString(TextBox2.Text)
            an = Convert.ToString(TextBox3.Text)
            desc = Convert.ToString(TextBox4.Text)
            sn = Convert.ToString(DropDownList3.SelectedItem)
            bid = Convert.ToString(TextBox6.Text)
            category = DropDownList1.SelectedItem.ToString
            sem = DropDownList2.SelectedItem.ToString
            Dim dat As Date = Date.Now()


            Dim cmd1 = New SqlCommand("select * from usersenddata WHERE id='" & s1 & "'", con)
            Dim da = New SqlDataAdapter(cmd1)
            Dim ds = New DataSet()
            da.Fill(ds)
            For j = 0 To ds.Tables(0).Rows.Count - 1

                Dim data6 = ds.Tables(0).Rows(j).Item(6)
                Dim data7 = ds.Tables(0).Rows(j).Item(7)
                Dim qry = "INSERT INTO bookdata VALUES ('" & bid & "','" & category & "','" & bn & "','" & pn & "','" & an & "','" & desc & "','" & sn & "',@p,@q,@r,@s,@t,@u,'" & sem & "')"
                Dim cmd As New SqlCommand(qry, con)
                cmd.Parameters.AddWithValue("@p", data6)
                cmd.Parameters.AddWithValue("@q", data7)
                cmd.Parameters.AddWithValue("@r", "0")
                cmd.Parameters.AddWithValue("@s", dat)
                cmd.Parameters.AddWithValue("@t", "0")
                cmd.Parameters.AddWithValue("@u", "0")
                cmd.ExecuteNonQuery()


            Next j

            Dim qry1 = "delete  from  usersenddata where id='" & s1 & "'"
            Dim cmd2 As New SqlCommand(qry1, con)
            cmd2.ExecuteNonQuery()


            Dim cnt = ViewState("co").ToString

            Dim t = ViewState("t").ToString

            Dim update = "update booksubject set cnt=" & cnt & ",total=" & t & " WHERE department='" & ViewState("department").ToString & "' and sem='" & ViewState("sem").ToString & "'and subject='" & ViewState("sub").ToString & "'"

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
                    Dim insert = "insert into notification values('" & a & "','" & bookid & "',1) "
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
                    Dim inc_notification = "insert into notification values('" & a & "','" & bookid & "'," & nextcount & ") "
                    Dim inc As New SqlCommand(inc_notification, con)
                    inc.ExecuteNonQuery()

                End If

            Next





            Label3.Text = "Your data is sucessfully entered"
        End If





    End Sub



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
        Dim bid = bookid + "-" + Convert.ToString(co)
        'MsgBox(id)

        TextBox6.Text = bid

        ViewState("co") = co

        Dim total = "SELECT max(total) FROM booksubject WHERE department='" & Convert.ToString(DropDownList1.SelectedItem) & "' and sem='" & Convert.ToString(DropDownList2.SelectedItem) & "'and subject='" & Convert.ToString(DropDownList3.SelectedItem) & "'"

        Dim tbook As New SqlCommand(total, con)
        Dim t = tbook.ExecuteScalar()
        t = t + 1

        ViewState("t") = t

        ViewState("department") = Convert.ToString(DropDownList1.SelectedItem)
        ViewState("sem") = Convert.ToString(DropDownList2.SelectedItem)
        ViewState("sub") = Convert.ToString(DropDownList3.SelectedItem)

    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click
        
        Try

            Dim sFilePath As String
            Dim buffer As Byte()
            Dim str = "Select bookdata From usersenddata where id='" & s1 & "'"
            ' MsgBox(str)
            Using cmd As New SqlCommand(str, con)
                buffer = cmd.ExecuteScalar()
            End Using
            sFilePath = System.IO.Path.GetTempFileName()
            System.IO.File.Move(sFilePath, System.IO.Path.ChangeExtension(sFilePath, ".pdf"))
            sFilePath = System.IO.Path.ChangeExtension(sFilePath, ".pdf")
            'Dim path As String = Server.MapPath("SiteAnalytics.pdf")
            'Dim client As New WebClient()
            'Dim buffer As [Byte]() = client.DownloadData(path)
            If buffer IsNot Nothing Then
                Response.ContentType = "application/pdf"
                Response.AddHeader("content-length", buffer.Length.ToString())
                Response.BinaryWrite(buffer)
            End If
            'System.IO.File.WriteAllBytes(sFilePath, buffer)
            'Dim act As Action(Of String) = New Action(Of String)(AddressOf OpenPDFFile)
            'act.BeginInvoke(sFilePath, Nothing, Nothing)
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub
End Class