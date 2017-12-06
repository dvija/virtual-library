Imports System.Data.SqlClient
Public Class adminhome
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con = New SqlConnection(ConfigurationManager.ConnectionStrings("vl").ConnectionString)
        con.Open()
        Dim newstr = "select * from usersenddata"
        ' MsgBox(newstr)
        Dim adp As New SqlDataAdapter(newstr, con)
        Dim ds As New DataSet()
        adp.Fill(ds)
        GridView1.DataSource = ds
        GridView1.DataBind()
    End Sub


    Protected Sub OnPaging(ByVal sender As Object, ByVal e As GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
        GridView1.DataBind()
    End Sub
    Protected Sub DownloadFile(ByVal sender As Object, ByVal e As EventArgs)
        Dim id As String = CType(sender, LinkButton).CommandArgument
        ' Dim bookname As String = CType(sender1, LinkButton).CommandArgument
        'MsgBox(id)
        Try

            Dim sFilePath As String
            Dim buffer As Byte()
            Dim str = "Select bookdata From usersenddata where id='" & id & "'"
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

    Protected Sub addbook(ByVal sender As Object, ByVal e As EventArgs)
        Dim id As String = CType(sender, LinkButton).CommandArgument
        ' Dim bookname As String = CType(sender1, LinkButton).CommandArgument
        'MsgBox(id)
        Session("bookaddid") = id
        ' MsgBox(id)
        Response.Redirect("addusersenddata.aspx")

    End Sub

    Protected Sub delete(ByVal sender As Object, ByVal e As EventArgs)
        Dim id As String = CType(sender, LinkButton).CommandArgument
        Dim qry1 = "delete  from  usersenddata where id='" & id & "'"
        Dim cmd2 As New SqlCommand(qry1, con)
        cmd2.ExecuteNonQuery()
        Response.Redirect("adminhome.aspx")
    End Sub

    
    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LinkButton1.Click
        Response.Redirect("../index.aspx")
    End Sub
End Class