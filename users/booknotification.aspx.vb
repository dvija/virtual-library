Imports System.Data.SqlClient
Imports System.IO




Public Class notification2
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim s1, s2 As String
    Dim a

    Dim table As String
    Dim flag = 0


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        con = New SqlConnection(ConfigurationManager.ConnectionStrings("vl").ConnectionString)
        con.Open()

        s2 = Session("vlemailid")
        s1 = Session("vlenrollno")


        a = s1
        Dim table = "temp" & a
        Dim topno = "SELECT max(notification_no) FROM notification WHERE enrollno='" & a & "'"
        Dim tc As New SqlCommand(topno, con)
        Dim co = tc.ExecuteScalar()

        If IsDBNull(co) Then
            'MsgBox(co)
            Label3.Visible = True

        Else

            flag = 1


            Label3.Visible = False



            Dim create = "create table " & table & " (bookid varchar(50),category varchar(50),bookname varchar(50),publishername varchar(50),authorname varchar(50),description varchar(50),subject varchar(50),cover image,cnt int)"

            Dim cr As New SqlCommand(create, con)
            cr.ExecuteNonQuery()


            For i = co To 1 Step -1
                'MsgBox(i)

                Dim bookid = "SELECT notifybookid FROM notification WHERE notification_no='" & i & "'"
                Dim bid As New SqlCommand(bookid, con)
                Dim id = bid.ExecuteScalar()
                'MsgBox(id)

                Dim cmd = New SqlCommand("select * from bookdata WHERE bookid='" & id & "'", con)
                Dim da = New SqlDataAdapter(cmd)
                Dim ds = New DataSet()
                da.Fill(ds)
                For j = 0 To ds.Tables(0).Rows.Count - 1
                    Dim data0 = ds.Tables(0).Rows(j).Item(0)
                    Dim data1 = ds.Tables(0).Rows(j).Item(1)
                    Dim data2 = ds.Tables(0).Rows(j).Item(2)
                    Dim data3 = ds.Tables(0).Rows(j).Item(3)
                    Dim data4 = ds.Tables(0).Rows(j).Item(4)
                    Dim data5 = ds.Tables(0).Rows(j).Item(5)
                    Dim data6 = ds.Tables(0).Rows(j).Item(6)
                    Dim data7 = ds.Tables(0).Rows(j).Item(7)
                    Dim data9 = ds.Tables(0).Rows(j).Item(9)
                    Dim insert = "insert into " & table & " values('" & data0 & "','" & data1 & "','" & data2 & "','" & data3 & "','" & data4 & "','" & data5 & "','" & data6 & "',@p," & data9 & ") "
                    Dim ins As New SqlCommand(insert, con)
                    ins.Parameters.AddWithValue("@p", data7)
                    ins.ExecuteScalar()
                Next j
            Next i
            Dim sel = "select * from " & table

            Dim cmd1 = New SqlCommand(sel, con)
            Dim da1 = New SqlDataAdapter(cmd1)

            Dim ds1 = New DataSet()
            da1.Fill(ds1)

            DataList1.DataSource = ds1.Tables(0).DefaultView

            DataList1.DataBind()


            Dim deletenotify = "delete from notification where enrollno='" & a & "'"


            Dim den As New SqlCommand(deletenotify, con)

            den.ExecuteNonQuery()


            Dim update = "update studentlike set status=0  where enrollno='" & a & "'"


            Dim up As New SqlCommand(update, con)
            up.ExecuteNonQuery()
        End If

    End Sub

   
    

    Private Sub Page_Unload(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Unload
        If flag = 1 Then


            Dim table = "temp" & a
            Dim delete = "drop table " & table

            Dim de As New SqlCommand(delete, con)
            de.ExecuteNonQuery()
        End If


    End Sub

    Protected Sub DataList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles DataList1.SelectedIndexChanged

    End Sub
End Class