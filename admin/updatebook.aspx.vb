Imports System.Data.SqlClient
Imports System.IO
Imports System.Net

Public Class updatebook
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim ds As New DataSet()
    Dim cmdb As SqlCommandBuilder
    Dim bookid As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con = New SqlConnection(ConfigurationManager.ConnectionStrings("vl").ConnectionString)
        '  Session.Remove("name")
        con.Open()
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
            con.Close()
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
            'Label4.Visible = True
            ' Label5.Visible = True
            Label6.Visible = True
            Label7.Visible = True
            Label8.Visible = True
            Label9.Visible = True
            Label10.Visible = True
            Label11.Visible = True
            Label12.Visible = True
            Label13.Visible = True
            ' TextBox1.Visible = True
            'TextBox2.Visible = True
            TextBox3.Visible = True
            TextBox4.Visible = True
            TextBox5.Visible = True
            TextBox6.Visible = True
            Button1.Visible = True
            FileUpload1.Visible = True
            FileUpload2.Visible = True
            Image1.Visible = True
            Button2.Visible = True
            'DropDownList4.Visible = True
            'DropDownList4.Items.Insert(0, New ListItem("--Select--", "0"))
            'DropDownList4.Items.Insert(1, New ListItem("computer", "1"))
            'DropDownList4.Items.Insert(1, New ListItem("electrical", "2"))
            'DropDownList4.Items.Insert(1, New ListItem("civil", "3"))
            'DropDownList4.Items.Insert(1, New ListItem("mechanical", "4"))
            'DropDownList4.Items.Insert(1, New ListItem("electronics and communication", "5"))
            'DropDownList4.Items.Insert(1, New ListItem("general", "6"))
            'DropDownList4.Items.Insert(1, New ListItem("entertainment", "7"))
            'DropDownList4.Items.Insert(1, New ListItem("general knowledge", "8"))
            Dim cmd As New SqlCommand(str, con)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            Do While dr.Read()
                bookid = dr.Item(0)
                'TextBox1.Text = dr.Item(1)
                'TextBox2.Text = dr.Item(6)
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
            con.Close()
        End Try
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
            'System.IO.File.WriteAllBytes(sFilePath, buffer)
            'Dim act As Action(Of String) = New Action(Of String)(AddressOf OpenPDFFile)
            'act.BeginInvoke(sFilePath, Nothing, Nothing)
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Shared Sub OpenPDFFile(ByVal sFilePath)
        Using p As New System.Diagnostics.Process
            p.StartInfo = New System.Diagnostics.ProcessStartInfo(sFilePath)
            p.Start()
            p.WaitForExit()
            Try
                System.IO.File.Delete(sFilePath)
            Catch
            End Try
        End Using
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        Dim subject As String = Convert.ToString(DropDownList2.SelectedItem)
        Dim bookname As String = Convert.ToString(DropDownList3.SelectedItem)
        Dim str = "Select bookid From bookdata where bookname='" & bookname & "' AND subject='" & subject & "'"

        Dim cmd1 As New SqlCommand(str, con)
        bookid = cmd1.ExecuteScalar()
        'MsgBox(bookid)
        If FileUpload1.HasFile = False And FileUpload2.HasFile = False Then
            Dim bn, pn, an, desc As String
            bn = Convert.ToString(TextBox3.Text)
            pn = Convert.ToString(TextBox4.Text)
            an = Convert.ToString(TextBox5.Text)
            desc = Convert.ToString(TextBox6.Text)
            'sn = Convert.ToString(TextBox2.Text)
            'Dim temp As String
            'temp = "--Select--"
            'If DropDownList4.SelectedItem.ToString = temp Then
            '    category = DropDownList1.SelectedItem.ToString
            'Else
            '    category = DropDownList4.SelectedItem.ToString
            'End If
            '   MsgBox(category)
            Dim qry As String
            qry = "update bookdata set bookname='" & bn & "',publishername='" & pn & "',authorname='" & an & "',description='" & desc & "'where bookid='" & bookid & "'"
            Dim cmd As New SqlCommand(qry, con)
            '   MsgBox(qry)
            cmd.ExecuteNonQuery()
            ' MsgBox("your data sucsessfully modify into database")
            ' clearcontrol()
        ElseIf FileUpload1.HasFile = False And FileUpload2.HasFile = True Then
            Dim str1 As Stream = FileUpload2.PostedFile.InputStream
            Dim bn, pn, an, desc As String
            bn = Convert.ToString(TextBox3.Text)
            pn = Convert.ToString(TextBox4.Text)
            an = Convert.ToString(TextBox5.Text)
            desc = Convert.ToString(TextBox6.Text)
            ' sn = Convert.ToString(TextBox2.Text)
            'Dim temp As String
            'temp = "--Select--"
            'If DropDownList4.SelectedItem.ToString = temp Then
            '    category = DropDownList1.SelectedItem.ToString
            'Else
            '    category = DropDownList4.SelectedItem.ToString
            'End If
            ' MsgBox(category)
            Dim qry As String
            Dim br As New BinaryReader(str1)
            Dim size As [Byte]() = br.ReadBytes(CInt(str1.Length))
            qry = "update bookdata set bookname='" & bn & "',publishername='" & pn & "',authorname='" & an & "',description='" & desc & "',bookdata= @p where bookid='" & bookid & "'"
            Dim cmd As New SqlCommand(qry, con)
            cmd.Parameters.AddWithValue("@p", size)
            ' MsgBox(qry)
            cmd.ExecuteNonQuery()
            ' MsgBox("your data sucsessfully modify into database")
        ElseIf FileUpload1.HasFile = True And FileUpload2.HasFile = False Then
            Dim str2 As Stream = FileUpload1.PostedFile.InputStream
            Dim bn, pn, an, desc As String
            bn = Convert.ToString(TextBox3.Text)
            pn = Convert.ToString(TextBox4.Text)
            an = Convert.ToString(TextBox5.Text)
            desc = Convert.ToString(TextBox6.Text)
            '  sn = Convert.ToString(TextBox2.Text)
            'Dim temp As String
            'temp = "--Select--"
            'If DropDownList4.SelectedItem.ToString = temp Then
            '    category = DropDownList1.SelectedItem.ToString
            'Else
            '    category = DropDownList4.SelectedItem.ToString
            'End If
            ' MsgBox(category)
            Dim qry As String
            Dim br1 As New BinaryReader(str2)
            Dim size1 As [Byte]() = br1.ReadBytes(CInt(str2.Length))
            qry = "update bookdata set bookname='" & bn & "',publishername='" & pn & "',authorname='" & an & "',description='" & desc & "',cover= @p where bookid='" & bookid & "'"
            Dim cmd As New SqlCommand(qry, con)
            cmd.Parameters.AddWithValue("@p", size1)
            ' MsgBox(qry)
            cmd.ExecuteNonQuery()
            'MsgBox("your data sucsessfully modify into database")


        ElseIf FileUpload1.HasFile = True And FileUpload2.HasFile = True Then
            Dim str3 As Stream = FileUpload1.PostedFile.InputStream
            Dim str4 As Stream = FileUpload2.PostedFile.InputStream
            Dim bn, pn, an, desc As String
            bn = Convert.ToString(TextBox3.Text)
            pn = Convert.ToString(TextBox4.Text)
            an = Convert.ToString(TextBox5.Text)
            desc = Convert.ToString(TextBox6.Text)
            'sn = Convert.ToString(TextBox2.Text)
            'Dim temp As String
            'temp = "--Select--"
            'If DropDownList4.SelectedItem.ToString = temp Then
            '    category = DropDownList1.SelectedItem.ToString
            'Else
            '    category = DropDownList4.SelectedItem.ToString
            'End If
            '  MsgBox(category)

            Dim qry As String
            Dim br3 As New BinaryReader(str3)
            Dim size3 As [Byte]() = br3.ReadBytes(CInt(str3.Length))
            Dim br4 As New BinaryReader(str4)
            Dim size4 As [Byte]() = br4.ReadBytes(CInt(str4.Length))

            qry = "update bookdata set bookname='" & bn & "',publishername='" & pn & "',authorname='" & an & "',description='" & desc & " ',cover= @p ,bookdata=@q where bookid='" & bookid & "'"
            Dim cmd As New SqlCommand(qry, con)
            cmd.Parameters.AddWithValue("@p", size3)
            cmd.Parameters.AddWithValue("@q", size4)
            '   MsgBox(qry)
            cmd.ExecuteNonQuery()
            'MsgBox("your data sucsessfully modify into database")
            Label16.Visible = True

        End If

        Response.Redirect("updatebook.aspx")
    End Sub


    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click
        Response.Redirect("updatebook.aspx")
    End Sub

    Protected Sub DropDownList5_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles DropDownList5.SelectedIndexChanged
        Try
            Dim category As String = Convert.ToString(DropDownList1.SelectedItem)
            Dim sem As String = Convert.ToString(DropDownList5.SelectedItem)
            Dim str = "select distinct subject from bookdata where category='" & category & "' and sem='" & sem & "'"
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
            DropDownList2.Items.Insert(0, New ListItem("--select one--", "0"))

        Catch ex As Exception
            'Printing any exception if occcured.
            Response.Write("Error occured: " & ex.Message.ToString())
        Finally
            'Close the connection
            con.Close()
        End Try
    End Sub
End Class