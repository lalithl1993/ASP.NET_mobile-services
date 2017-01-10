
Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Text.RegularExpressions

Module connection
    Public connectionstring As String = Nothing
    Public reader As SqlDataReader = Nothing
    Public conn As SqlConnection = Nothing
    Public cmd As SqlCommand = Nothing
    Public dr As SqlDataReader
    Public sql As String = Nothing
    Public Sub executesqlstmt(ByVal sql As String)
        If conn.State = ConnectionState.Open Then
            conn.Close()
        End If
        connectionstring = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Users\gai-3\Desktop\mine\mine\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
        conn.ConnectionString = connectionstring
        conn.Open()

    End Sub
End Module