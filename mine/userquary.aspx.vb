
Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Text.RegularExpressions
Public Class quary


    Inherits System.Web.UI.Page
    Dim currid As String



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If (Application("curuname") Is Nothing) Or (Application("curupass") Is Nothing) Or (Application("curuid") Is Nothing) Then
            Response.Write(<script>alert('Error \nPlease login again');
window.location.href='./mainhome.aspx';</script>)

        End If

        conn = New SqlConnection(connectionstring)
        executesqlstmt(sql)



        currid = Application("curuid")
        Try
            sql = "select max(id) from query "
            cmd = New SqlCommand(sql, conn)
            Dim num As Integer

            If cmd.ExecuteScalar Is System.DBNull.Value Then
                txtreff.Text = 1
            Else
                num = cmd.ExecuteScalar
                txtreff.Text = num + 1

            End If


        Catch ex As Exception
            Response.Write("<script>alert(ex.Message.ToString());</script>")
            'MsgBox(ex.Message.ToString())
        End Try
    End Sub

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnsubmit.Click
        Dim dat As String
        dat = Now.Date
        sql = "insert into query values('" & txtreff.Text & "','" & txtquest.Text & "','" & "" & "','" & dat.ToString & "','" & "" & "','" & currid & "','" & "n" & "')"
        cmd = New SqlCommand(sql, conn)
        Try
            cmd.ExecuteNonQuery()
            Response.Write("<script>alert('data successfully recorded');</script>")
            'Response.Write("data successfully recorded")
            txtquest.Text = ""
            txtreff.Text = ""
            Response.Redirect("userquary.aspx")
        Catch ae As SqlException
            Response.Write("<script>alert(ae.Message.ToString());</script>")
            'Response.Write(ae.Message.ToString())
        End Try
    End Sub
End Class