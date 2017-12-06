Imports System.Data.SqlClient
Imports System.IO

Public Class addsubject
    Inherits System.Web.UI.Page



    Dim con As SqlConnection
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con = New SqlConnection(ConfigurationManager.ConnectionStrings("vl").ConnectionString)

        con.Open()
    End Sub
    Protected Sub clearcontrol()
        TextBox1.Text = " "

        DropDownList1.SelectedValue = "Select one"
        DropDownList2.SelectedValue = "Select one"

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        If TextBox1.Text = " " Or DropDownList1.SelectedValue = "Select one" Or DropDownList2.SelectedValue = "Select one" Then
            Label2.Text = "Please enter all the value"

        Else
            Dim department = Convert.ToString(DropDownList1.SelectedItem)
            Dim sem = Convert.ToString(DropDownList2.SelectedItem)
            Dim subject = TextBox1.Text
            Dim Str = "SELECT COUNT(*) AS count FROM booksubject WHERE department='" & department & "' and subject='" & subject & "'and sem='" & sem & "'"
            'MsgBox(Str)
            Dim cmd As New SqlCommand(Str, con)
            Dim count = cmd.ExecuteScalar()
            If count = 1 Then
                clearcontrol()

                Label2.Text = "This data  is already available"
            Else
                Dim qry = "INSERT INTO booksubject VALUES ('" & department & "','" & subject & "','" & sem & "',0,0)"
                Dim cmd1 As New SqlCommand(qry, con)

                cmd1.ExecuteNonQuery()
                clearcontrol()
                Label2.Text = "your data is successfully entered"
            End If
        End If





    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        clearcontrol()
    End Sub
    'Protected Sub Button4_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button4.Click

    '    DropDownList3.SelectedValue = "Select one"
    '    DropDownList4.SelectedValue = "Select one"

    '    DropDownList6.Visible = False
    '    DropDownList7.Visible = False
    '    TextBox2.Visible = False
    '    Label4.Visible = False
    '    Label5.Visible = False
    '    Label6.Visible = False
    '    Button3.Visible = False
    'End Sub

    'Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click
    '    Dim c, se, su As String
    '    Dim category = Convert.ToString(DropDownList3.SelectedItem)
    '    Dim sem = Convert.ToString(DropDownList4.SelectedItem)
    '    Dim subject = Convert.ToString(DropDownList5.SelectedItem)

    '        If DropDownList6.SelectedValue = "Select one" Then
    '            c = category
    '        Else
    '            c = Convert.ToString(DropDownList6.SelectedItem)

    '        End If

    '        If DropDownList7.SelectedValue = "Select one" Then
    '            se = sem
    '        Else
    '            se = Convert.ToString(DropDownList7.SelectedItem)

    '        End If
    '    If TextBox2.Text = "" Then
    '        su = subject

    '    Else
    '        su = Convert.ToString(TextBox2.Text)


    '    End If
    '    ' MsgBox(su)
    '    Dim Str = "SELECT COUNT(*) AS count FROM booksubject WHERE department='" & c & "' and subject='" & su & "'and sem='" & se & "'"
    '    'MsgBox(Str)
    '    Dim cmd As New SqlCommand(Str, con)
    '    Dim count = cmd.ExecuteScalar()
    '    ' MsgBox(count)
    '    If count = 1 Then
    '        Label3.Text = "This data is already available"
    '    Else
    '        Dim qry = "update booksubject set department='" & c & "',subject='" & su & "',sem='" & se & "'where department='" & category & "' and subject='" & subject & "'and sem='" & sem & "'"
    '        Dim cmd1 As New SqlCommand(qry, con)
    '        cmd1.ExecuteNonQuery()
    '        Label3.Text = "your data is successfully update"
    '        DropDownList3.SelectedValue = "Select one"
    '        DropDownList4.SelectedValue = "Select one"
    '        DropDownList6.SelectedValue = "Select one"
    '        DropDownList7.SelectedValue = "Select one"
    '        TextBox2.Text = Nothing
    '        DropDownList6.Visible = False
    '        DropDownList7.Visible = False
    '        TextBox2.Visible = False
    '        Label4.Visible = False
    '        Label5.Visible = False
    '        Label6.Visible = False
    '        Button3.Visible = False
    '    End If
    'End Sub

    'Protected Sub DropDownList5_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles DropDownList5.SelectedIndexChanged
    '    DropDownList6.Visible = True
    '    DropDownList7.Visible = True
    '    TextBox2.Visible = True
    '    Label4.Visible = True
    '    Label5.Visible = True
    '    Label6.Visible = True
    '    Button3.Visible = True
    'End Sub

    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button5.Click
       Dim category = Convert.ToString(DropDownList8.SelectedItem)
        Dim sem = Convert.ToString(DropDownList9.SelectedItem)
        Dim subject = Convert.ToString(DropDownList10.SelectedItem)
      Dim qry = "delete from  booksubject where department='" & category & "'and subject='" & subject & "'and sem='" & sem & "'"
                Dim cmd1 As New SqlCommand(qry, con)
        cmd1.ExecuteNonQuery()


        Dim qry1 = "delete  from  bookdata where category='" & category & "'and subject='" & subject & "'and sem='" & sem & "'"
        Dim cmd2 As New SqlCommand(qry1, con)
        cmd2.ExecuteNonQuery()







        Label7.Text = "your subject is delete successfully"
        DropDownList8.SelectedValue = "Select one"
        DropDownList9.SelectedValue = "Select one"
       End Sub

    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button6.Click
        DropDownList8.SelectedValue = "Select one"
        DropDownList9.SelectedValue = "Select one"
    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles DropDownList2.SelectedIndexChanged

    End Sub

   
End Class
