
Imports System.Data.SqlClient
Imports System.IO



Public Class notification
    Inherits System.Web.UI.Page
    Dim btnclick As Integer
    Dim con As SqlConnection
    Public flag As Integer
    Dim en As String = "Enter "
    Dim s1, s2 As String
    Dim ds As New DataSet()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con = New SqlConnection(ConfigurationManager.ConnectionStrings("vl").ConnectionString)
        con.Open()



        If IsPostBack Then
            btnclick = ViewState("btnclick")
            If btnclick = 1 Then
                showbooksbyauthor()
            ElseIf btnclick = 2 Then
                showbooksbybookname()
            ElseIf btnclick = 3 Then
                showbooksbypublication()
            End If

        End If

        s2 = Session("vlemailid")
        s1 = Session("vlenrollno")
        ViewState("user") = s1

        'Menu1.SelectedValue = "dfgyu"
       

        If Menu1.Items(0).ChildItems(0).Text = "username" Then
            Menu1.Items(0).ChildItems(0).Text = s1

        End If



        Image1.ImageUrl = "~\users\Showuserprofileimage.ashx?id=" & s1
        displaynotification()
    End Sub

    Public Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        GridView1.Visible = False
        'If ds.DefaultViewManager.DataViewSettingCollectionString.Contains("Table") = True Then
        '    MsgBox("Dataset table contains data")

        'Else
        '    MsgBox("Dataset does not contains data")

        'End If
        Dim temp As String = Convert.ToString(DropDownList1.SelectedItem)

        Label3.Visible = False
        Label4.Visible = False
        Label5.Visible = False
        Label6.Visible = False
        DropDownList4.Visible = False

        DropDownList2.Visible = False
        TextBox1.Visible = False
        DropDownList3.Visible = False


        If temp = "Author Name" Then
            Label3.Visible = True
            Label3.Text = en & temp
            ImageButton4.Visible = True
            TextBox1.Visible = True
            flag = 1
            'MsgBox(flag)
        ElseIf temp = "Book Name" Then
            Label3.Visible = True

            Label3.Text = en & temp

            ImageButton4.Visible = True
            TextBox1.Visible = True
            flag = 2
        ElseIf temp = "Publication" Then
            Label3.Visible = True
            Label3.Text = en & temp
            ImageButton4.Visible = True
            TextBox1.Visible = True
            flag = 3
        ElseIf temp = "Department" Then

            'Label3.Text = temp
            ImageButton4.Visible = False
            'TextBox1.Visible = False
            flag = 4
            Label6.Visible = True
            DropDownList4.Visible = True

            DropDownList2.Visible = True
            Label4.Visible = True
            Label3.Visible = False
            TextBox1.Visible = False

        Else
            'ImageButton4.Visible = False

            'TextBox1.Visible = False

            flag = 0
            Label3.Visible = False
            TextBox1.Visible = False

        End If
        ' MsgBox(flag)
        ViewState("flag") = flag
    End Sub

    Protected Sub ImageButton4_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton4.Click
        ds = New DataSet()
        flag = ViewState("flag").ToString
        ' MsgBox("now" & flag)
        If TextBox1.Text = Nothing Then
            ImageButton4.OnClientClick = False
            MsgBox("no book")
        ElseIf flag = 1 Then
            ViewState("btnclick") = 1
            ViewState("searchkeyword") = TextBox1.Text
            showbooksbyauthor()
        ElseIf flag = 2 Then
            ViewState("btnclick") = 2
            ViewState("searchkeyword") = Convert.ToString(TextBox1.Text)
            showbooksbybookname()
          ElseIf flag = 3 Then
            ViewState("btnclick") = 3
            ViewState("searchkeyword") = Convert.ToString(TextBox1.Text)
            showbooksbypublication()
        End If
    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles DropDownList2.SelectedIndexChanged
        Label5.Visible = True
        DropDownList3.Visible = True
    End Sub

    Protected Sub DropDownList3_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles DropDownList3.SelectedIndexChanged
        flag = ViewState("flag").ToString
        If flag = 4 Then
            Dim se As String
            se = Convert.ToString(DropDownList2.SelectedItem)
            Dim subject As String
            subject = Convert.ToString(DropDownList3.SelectedItem)
            Dim newstr = "select * from bookdata where sem='" & se & "'and subject='" & subject & "'"
            ' MsgBox(newstr)
            Dim adp As New SqlDataAdapter(newstr, con)
            Dim ds As New DataSet()
            adp.Fill(ds)
            GridView1.DataSource = ds
            GridView1.DataBind()
        ElseIf flag = 0 Then
            Dim se As String
            se = Convert.ToString(DropDownList2.SelectedItem)
            Dim subject As String
            subject = Convert.ToString(DropDownList3.SelectedItem)
            Dim newstr = "select * from bookdata where sem='" & se & "'and subject='" & subject & "' order by rating"
            Dim adp As New SqlDataAdapter(newstr, con)
            Dim ds As New DataSet()
            adp.Fill(ds)
            GridView1.DataSource = ds
            GridView1.DataBind()
        End If

    End Sub

    Public Sub showbooksbyauthor()
        Dim se As String
        se = Convert.ToString(ViewState("searchkeyword"))
        Dim newstr = "select * from bookdata where authorname like '%" & se & "%'"
        ' MsgBox(newstr)
        Dim adp As New SqlDataAdapter(newstr, con)
        adp.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            ' MsgBox("Dataset table contains data")
            GridView1.DataSource = ds
            GridView1.DataBind()
            GridView1.Visible = True
        Else
            'MsgBox("Dataset does not contains data")
            Response.Redirect("userhome.aspx")
        End If
    End Sub

    Public Sub showbooksbybookname()
        Dim se = Convert.ToString(ViewState("searchkeyword"))
        Dim newstr = "select * from bookdata where bookname like '%" & se & "%'"
        Dim adp As New SqlDataAdapter(newstr, con)
        Dim ds As New DataSet()
        adp.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            ' MsgBox("Dataset table contains data")
            GridView1.DataSource = ds
            GridView1.DataBind()
            GridView1.Visible = True
        Else
            'MsgBox("Dataset does not contains data")
            Response.Redirect("userhome.aspx")
        End If
    End Sub

    Public Sub showbooksbypublication()
        Dim se = Convert.ToString(ViewState("searchkeyword"))
        Dim newstr = "select * from bookdata where publishername like '%" & se & "%'"
        Dim adp As New SqlDataAdapter(newstr, con)
        Dim ds As New DataSet()
        adp.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            ' MsgBox("Dataset table contains data")
            GridView1.DataSource = ds
            GridView1.DataBind()
            GridView1.Visible = True
        Else
            ' MsgBox("Dataset does not contains data")
            Response.Redirect("userhome.aspx")
        End If
    End Sub

    Protected Sub OnPaging(ByVal sender As Object, ByVal e As GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
        GridView1.DataBind()
    End Sub

    Protected Sub DownloadFile(ByVal sender As Object, ByVal e As EventArgs)
        Dim id As String = CType(sender, LinkButton).CommandArgument
        'MsgBox(id)
        Dim SQL As String = "Select bookdata,bookname From bookdata Where bookid ='" & id & "'"
        'MsgBox(SQL)
        Dim scmd As New SqlCommand(SQL, con)
        Dim dr As SqlDataReader
        dr = scmd.ExecuteReader()
        Do While dr.Read()
            Dim bookname = dr.Item(1)
            Dim bookdata = dr.Item(0)
            Response.ContentType = "application/pdf"
            Response.AppendHeader("Content-Disposition", "attachment; FileName=" + bookname)
            Response.BinaryWrite(bookdata)
        Loop
        dr.Close()
    End Sub


    Protected Sub read(ByVal sender As Object, ByVal e As EventArgs)
        Dim id As String = CType(sender, LinkButton).CommandArgument
        Session("id") = id
        Response.Redirect("book.aspx")
    End Sub

    Public Sub displaynotification()
        Dim a = Session("vlenrollno")
        Dim topno = "SELECT max(notification_no) FROM notification WHERE enrollno='" & a & "'"
        ' MsgBox(topno)
        Dim tc As New SqlCommand(topno, con)
        Dim co = tc.ExecuteScalar()
        If IsDBNull(co) Then
            Label2.Visible = False
        Else
            Label2.Text = co
        End If
    End Sub


    Protected Sub ImageButton3_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click


        Response.Redirect("booknotification.aspx")
    End Sub

    Protected Sub Menu1_MenuItemClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs) Handles Menu1.MenuItemClick
        If Menu1.SelectedValue = "Log out" Then

            Response.Redirect("userlogout.aspx")

        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        s1 = ViewState("user").ToString

        If (TextBox2.Text = "" Or TextBox3.Text = "" Or TextBox4.Text = "" Or TextBox5.Text = "" Or FileUpload1.HasFile = False Or FileUpload2.HasFile = False) Then
            Label6.Text = "Please enter all the value"
        End If
        Dim id


        Dim statusqry = "SELECT id FROM usersenddata"
        ' MsgBox(statusqry)
        Dim c As New SqlCommand(statusqry, con)


        Dim cou = c.ExecuteScalar()
        'MsgBox(cou)

        If cou = 0 Then

            '   MsgBox(a)
         
            id = 1


        Else

            Dim topno = "SELECT max(id) FROM usersenddata"
            ' MsgBox(topno)
            Dim tc As New SqlCommand(topno, con)
            Dim co = tc.ExecuteScalar()
            'MsgBox(co)
            id = co + 1

        End If



        Dim str As Stream = FileUpload1.PostedFile.InputStream
        Dim str1 As Stream = FileUpload2.PostedFile.InputStream
        Dim bn, pn, an, desc As String
        bn = Convert.ToString(TextBox2.Text)
        pn = Convert.ToString(TextBox3.Text)
        an = Convert.ToString(TextBox4.Text)
        desc = Convert.ToString(TextBox5.Text)
        Dim qry As String
        Dim br As New BinaryReader(str)
        Dim size As [Byte]() = br.ReadBytes(CInt(str.Length))
        Dim br1 As New BinaryReader(str1)
        Dim size1 As [Byte]() = br1.ReadBytes(CInt(str1.Length))
        Dim dat As Date = Date.Now()

        qry = "INSERT INTO usersenddata VALUES ('" & s1 & "','" & id & "','" & bn & "','" & pn & "','" & an & "','" & desc & "',@p,@q,@r)"
        Dim cmd As New SqlCommand(qry, con)
        cmd.Parameters.AddWithValue("@p", size)
        cmd.Parameters.AddWithValue("@q", size1)

        cmd.Parameters.AddWithValue("@r", dat)

        cmd.ExecuteNonQuery()
        '  MsgBox("your data sucsessfully enter into database")
        Label6.Text = "Your data is sucessfully send"
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub

    Protected Sub DropDownList4_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles DropDownList4.SelectedIndexChanged
        flag = ViewState("flag").ToString
        If flag = 4 Then



            Dim se As String
            se = Convert.ToString(DropDownList2.SelectedItem)
            Dim subject As String

            subject = Convert.ToString(DropDownList3.SelectedItem)


            Dim newstr = "select * from bookdata where sem='" & se & "'and subject='" & subject & "'"
            ' MsgBox(newstr)
            Dim adp As New SqlDataAdapter(newstr, con)
            Dim ds As New DataSet()
            adp.Fill(ds)
            GridView1.DataSource = ds


            GridView1.DataBind()
        ElseIf flag = 0 Then
            Dim se As String
            se = Convert.ToString(DropDownList2.SelectedItem)
            Dim subject As String

            subject = Convert.ToString(DropDownList3.SelectedItem)

            Dim newstr = "select * from bookdata where sem='" & se & "'and subject='" & subject & "' order by rating"
            Dim adp As New SqlDataAdapter(newstr, con)
            Dim ds As New DataSet()
            adp.Fill(ds)
            GridView1.DataSource = ds


            GridView1.DataBind()
        End If
    End Sub
End Class


