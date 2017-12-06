Imports System.Web
Imports System.Web.Services
Imports System.IO
Imports System.Data.SqlClient

Public Class Showpdf1
    Implements System.Web.IHttpHandler


    Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest

        Dim imgName As String
        If Not context.Request.QueryString("pID") Is Nothing Then
            imgName = Convert.ToString(context.Request.QueryString("pID"))
            ' MsgBox(imgName)
        Else
            Throw New ArgumentException("No parameter specified")
        End If
        context.Response.ContentType = "application/pdf"
        Dim strm As Stream = ShowLawsImage(imgName)
        If Not strm Is Nothing Then
            Dim buffer As Byte() = New Byte(4095) {}
            Dim byteSeq As Integer = strm.Read(buffer, 0, 4096)
            Do While byteSeq > 0
                context.Response.OutputStream.Write(buffer, 0, byteSeq)
                byteSeq = strm.Read(buffer, 0, 4096)
            Loop
            context.Response.BinaryWrite(buffer)
        End If
    End Sub
    Public Function ShowLawsImage(ByVal imgName As String) As Stream
        Dim conn As String = ConfigurationManager.ConnectionStrings("vl").ConnectionString
        Dim connection As SqlConnection = New SqlConnection(conn)
        Dim sql As String = "SELECT bookdata FROM bookdata WHERE bookid = @ID"
        Dim cmd As SqlCommand = New SqlCommand(sql, connection)
        cmd.CommandType = CommandType.Text
        cmd.Parameters.AddWithValue("@ID", imgName)
        connection.Open()
        Dim img As Object = cmd.ExecuteScalar()
        Try
            Return New MemoryStream(CType(img, Byte()))
        Catch
            Return Nothing
        Finally
            connection.Close()
        End Try
    End Function

    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable

        Get

            Return False

        End Get

    End Property

End Class