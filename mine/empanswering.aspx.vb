Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Text.RegularExpressions
Public Class answering
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load



        If (Application("curauser") Is Nothing) Or (Application("curapass") Is Nothing) Or (Application("curatype") Is Nothing) Then
            Response.Write(<script>alert('Error \nPlease login again');
window.location.href='./mainhome.aspx';</script>)
            Exit Sub
        End If


        conn = New SqlConnection(connectionstring)
        executesqlstmt(sql)

        sql = "select * from query where id= " & Request.QueryString("tvar") & ""
        Try
            cmd = New SqlCommand(sql, conn)
            reader = cmd.ExecuteReader()
            reader.Read()
            txtquest.Text = reader("question")
            'txtans.Text = reader("answer")
            txtref.Text = reader("id")
            txtcust.Text = reader("custid")

            reader.Close()


        Catch ex As Exception
            Response.Write("<script>alert(ex.Message.ToString());</script>")
            'MsgBox(ex.Message.ToString())
            reader.Close()
        End Try
    End Sub


    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnsubmit.Click
        sql = "update query set answer='" & txtans.Text & "',adate='" & Today.Date.ToString & "',status='" & "a" & "' where id='" & txtref.Text & "'"
        cmd = New SqlCommand(sql, conn)
        Try
            cmd.ExecuteNonQuery()
            Response.Write("<script>alert('answer successfully submitted');</script>")
            'MsgBox("answer successfully submitted")
            
            Response.Redirect("~/empcomplaints.aspx")
        Catch ex As Exception
            Response.Write("<script>alert(ex.Message.ToString());</script>")
            'MsgBox(ex.Message.ToString())
        End Try
    End Sub
End Class