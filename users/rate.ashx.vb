
Imports System
Imports System.Configuration
Imports System.Web
Imports System.IO
Imports System.Data
Imports System.Data.SqlClient
Public Class rate
    Implements System.Web.IHttpHandler



    Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        Dim empno As String

        If Not context.Request.QueryString("id") Is Nothing Then
            empno = Convert.ToString(context.Request.QueryString("id"))
            MsgBox(empno.ToString)
        Else
            Throw New ArgumentException("No parameter specified")
        End If


        Dim strm As Stream = ShowEmpImage(empno)
      
        'context.Response.BinaryWrite(buffer);
    End Sub

    Public Function ShowEmpImage(ByVal empno As String) As Stream

        Dim conn As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("vl").ConnectionString)



        Dim sql As String = "SELECT rating FROM bookdata WHERE bookid = @ID"
        conn.Open()
        Dim cmd As SqlCommand = New SqlCommand(sql, conn)
        cmd.CommandType = CommandType.Text
        cmd.Parameters.AddWithValue("@ID", Convert.ToString(empno))

        Dim img = cmd.ExecuteScalar()
        Try
            MsgBox(img)
            Return img
        Catch
            Return Nothing
        Finally
            conn.Close()
        End Try
    End Function

    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property


End Class