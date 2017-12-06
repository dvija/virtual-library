Imports System.Data.SqlClient
Imports System.IO
Public Class deletebook
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim ds As New DataSet()
    Dim cmdb As SqlCommandBuilder
    Dim bookid As String
    Dim bid As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con = New SqlConnection(ConfigurationManager.ConnectionStrings("vl").ConnectionString)
        con.Open()
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        Try

            Dim category As String = Convert.ToString(DropDownList1.SelectedItem)
            Dim str = "select * from bookdata where category='" & category & "'"
            ' MsgBox(str)
            Dim adp As New SqlDataAdapter(str, con)
            Dim ds As New DataSet()
            adp.Fill(ds)
            'Dim i As Integer
            'For i = 0 To ds.Tables(0).Rows.Count - 1
            '    DropDownList2.Items.Add(ds.Tables(0).Rows(i).Item(6))
            'Next
            DropDownList2.Visible = True
            Label2.Visible = True

            DropDownList2.DataSource = ds
            DropDownList2.DataTextField = "subject"
            DropDownList2.DataValueField = "subject"
            DropDownList2.DataBind()
            DropDownList2.Items.Insert(0, New ListItem("--Select--", "0"))

        Catch ex As Exception
            'Printing any exception if occcured.
            Response.Write("Error occured: " & ex.Message.ToString())
        Finally
            'Close the connection
            con.Close()
        End Try

    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles DropDownList2.SelectedIndexChanged
        Try

            Dim subject As String = Convert.ToString(DropDownList2.SelectedItem)
            Dim str = "select * from bookdata where subject ='" & subject & "'"
            ' MsgBox(str)
            Dim adp As New SqlDataAdapter(str, con)
            Dim ds As New DataSet()
            adp.Fill(ds)
            DropDownList3.Visible = True
            Label3.Visible = True

            DropDownList3.DataSource = ds
            DropDownList3.DataTextField = "bookname"
            DropDownList3.DataValueField = "bookname"
            DropDownList3.DataBind()
            DropDownList3.Items.Insert(0, New ListItem("--Select--", "0"))

        Catch ex As Exception

            Response.Write("Error occured: " & ex.Message.ToString())
        Finally


        End Try

    End Sub

    Protected Sub DropDownList3_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles DropDownList3.SelectedIndexChanged
        Try

            Dim bookname As String = Convert.ToString(DropDownList3.SelectedItem)
            Dim str = "select * from bookdata where bookname ='" & bookname & "'"
            ' MsgBox(str)
            Dim adp As New SqlDataAdapter(str, con)
            Dim ds As New DataSet()
            adp.Fill(ds)



            Label5.Visible = True
            Label6.Visible = True
            Label7.Visible = True
            Label8.Visible = True
            Label9.Visible = True

            Label11.Visible = True

            Label13.Visible = True
            ' TextBox1.Visible = True
            TextBox2.Visible = True
            TextBox3.Visible = True
            TextBox4.Visible = True
            TextBox5.Visible = True
            TextBox6.Visible = True
            Button1.Visible = True

            Image1.Visible = True
            Button2.Visible = True

            Dim cmd As New SqlCommand(str, con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            Do While dr.Read()

                bookid = dr.Item(0)
                'TextBox1.Text = dr.Item(1)
                TextBox2.Text = dr.Item(6)
                TextBox3.Text = dr.Item(2)
                TextBox4.Text = dr.Item(3)
                TextBox5.Text = dr.Item(4)
                TextBox6.Text = dr.Item(5)
                'MsgBox(bookid)


                Dim temp = Convert.ToString(bookid)
                Image1.ImageUrl = "~/ShowImage.ashx?id=" & temp
            Loop



            dr.Close()

        Catch ex As Exception

            Response.Write("Error occured: " & ex.Message.ToString())
        Finally


        End Try

        Dim total = "SELECT max(total) FROM booksubject WHERE department='" & Convert.ToString(DropDownList1.SelectedItem) & "' and sem='" & Convert.ToString(DropDownList5.SelectedItem) & "'and subject='" & Convert.ToString(DropDownList2.SelectedItem) & "'"
        ' MsgBox(total)
        Dim tbook As New SqlCommand(total, con)
        Dim t = tbook.ExecuteScalar()
        t = t - 1
        ViewState("t") = t

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click


        Try

            Dim bookname As String = Convert.ToString(DropDownList3.SelectedItem)
            Dim str = "select * from bookdata where bookname ='" & bookname & "'"
            ' MsgBox(str)
            Dim adp As New SqlDataAdapter(str, con)
            Dim ds As New DataSet()
            adp.Fill(ds)


            Dim cmd As New SqlCommand(str, con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            Do While dr.Read()

                bookid = dr.Item(0)

                'MsgBox(bookid)


            Loop



            dr.Close()

        Catch ex As Exception

            Response.Write("Error occured: " & ex.Message.ToString())
        Finally


        End Try


        Dim qry As String
        'Dim bn, pn, an, desc, sn, category As String
        'bn = Convert.ToString(TextBox2.Text)
        'pn = Convert.ToString(TextBox3.Text)
        'an = Convert.ToString(TextBox4.Text)
        'desc = Convert.ToString(TextBox5.Text)
        'sn = Convert.ToString(TextBox6.Text)
        'category = DropDownList1.SelectedItem.ToString
        'MsgBox(bookid)
        qry = "delete from bookdata where bookid='" & bookid & "'"


        Dim cmd1 As New SqlCommand(qry, con)
        ' MsgBox(qry)
        cmd1.ExecuteNonQuery()
        Label16.Visible = True


        Dim t = ViewState("t").ToString


        Dim update = "update booksubject set total=" & t & " WHERE department='" & Convert.ToString(DropDownList1.SelectedItem) & "' and sem='" & Convert.ToString(DropDownList5.SelectedItem) & "'and subject='" & Convert.ToString(DropDownList2.SelectedItem) & "'"
        'MsgBox(update)
        Dim up As New SqlCommand(update, con)
        up.ExecuteNonQuery()
        Label16.Visible = True

        Response.Redirect("deletebook.aspx")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Try
            Dim subject As String = Convert.ToString(DropDownList2.SelectedItem)
            Dim bookname As String = Convert.ToString(DropDownList3.SelectedItem)
            Dim sFilePath As String
            Dim buffer As Byte()
            Dim str = "Select bookdata From bookdata where bookname='" & bookname & "' AND subject='" & subject & "'"
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




        Catch ex As Exception
            MsgBox(ex.Message)
        End Try





    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click
        Response.Redirect("deletebook.aspx")

    End Sub

    Protected Sub DropDownList5_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles DropDownList5.SelectedIndexChanged
        Try

            Dim category As String = Convert.ToString(DropDownList1.SelectedItem)

            Dim sem As String = Convert.ToString(DropDownList5.SelectedItem)
            Dim str = "select * from booksubject where department='" & category & "' and sem='" & sem & "'"
            ' MsgBox(str)
            Dim adp As New SqlDataAdapter(str, con)
            Dim ds As New DataSet()
            adp.Fill(ds)
            'Dim i As Integer
            'For i = 0 To ds.Tables(0).Rows.Count - 1
            '    DropDownList2.Items.Add(ds.Tables(0).Rows(i).Item(6))
            'Next
            DropDownList2.Visible = True
            Label2.Visible = True

            DropDownList2.DataSource = ds
            DropDownList2.DataTextField = "subject"
            DropDownList2.DataValueField = "subject"
            DropDownList2.DataBind()
            DropDownList2.Items.Insert(0, New ListItem("--Select--", "0"))

        Catch ex As Exception
            'Printing any exception if occcured.
            Response.Write("Error occured: " & ex.Message.ToString())
        Finally
            'Close the connection

        End Try

    End Sub
End Class