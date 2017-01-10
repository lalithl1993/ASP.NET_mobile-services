
Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Text.RegularExpressions

Public Class solved
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        If (Application("curauser") Is Nothing) Or (Application("curapass") Is Nothing) Or (Application("curatype") Is Nothing) Then
            Response.Write(<script>alert('Error \nPlease login again');
window.location.href='./mainhome.aspx';</script>)
            Exit Sub
        End If


        conn = New SqlConnection(connectionstring)
        executesqlstmt(sql)
    End Sub

    Protected Sub listreff_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles listreff.SelectedIndexChanged
        sql = "select * from query where id= " & listreff.Text & ""
        Try
            cmd = New SqlCommand(sql, conn)
            reader = cmd.ExecuteReader()
            reader.Read()
            txtqust.Text = reader("question")
            txtans.Text = reader("answer")
            txtadate.Text = reader("adate")
            txtqdate.Text = reader("qdate")
            txtcust.Text = reader("custid")

            reader.Close()


        Catch ex As Exception
            Response.Write("<script>alert(ex.Message.ToString());</script>")
            'MsgBox(ex.Message.ToString())
            reader.Close()
        End Try
    End Sub

End Class