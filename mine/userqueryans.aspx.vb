
Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Text.RegularExpressions

Public Class queryans
    Inherits System.Web.UI.Page
    Dim currid As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If (Application("curuname") Is Nothing) Or (Application("curupass") Is Nothing) Or (Application("curuid") Is Nothing) Then
            Response.Write(<script>alert('Error \nPlease login again');
window.location.href='./mainhome.aspx';</script>)

        End If

        conn = New SqlConnection(connectionstring)
        executesqlstmt(sql)


        


        txtcuruid.Text = Application("curuid")
        'txtcuruid.Text = currid
        'Try
        '    sql = "select id from query where custid = " & currid & ""
        '    Dim ds As New DataSet
        '    ds.Clear()
        '    Dim da As New SqlDataAdapter(sql, conn)
        '    da.Fill(ds, "query")
        '    Dim i As Integer = 0
        '    If ds.Tables(0).Rows.Count > 0 Then
        '        listreff.DataSource = ds.Tables(0)
        '        listreff.DataValueField = "id"
        '        listreff.DataTextField = "id"
        '    End If
        'Catch ex As Exception
        '    MsgBox(ex.Message.ToString())
        '    reader.Close()
        'End Try

    End Sub

    Protected Sub listreff_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles listreff.SelectedIndexChanged
        sql = "select * from query where id= " & listreff.Text & ""
        Try
            cmd = New SqlCommand(sql, conn)
            reader = cmd.ExecuteReader()
            reader.Read()
            txtqust.Text = reader("question")
            txtans.Text = reader("answer")
            reader.Close()


        Catch ex As Exception
            Response.Write("<script>alert(ex.Message.ToString());</script>")
            'MsgBox(ex.Message.ToString())
            reader.Close()
        End Try
    End Sub

    
End Class