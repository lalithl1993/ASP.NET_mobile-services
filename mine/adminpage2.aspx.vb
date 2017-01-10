
Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Text.RegularExpressions

Public Class page2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        If (Application("curauser") Is Nothing) Or (Application("curapass") Is Nothing) Or (Application("curatype") Is Nothing) Then
            Response.Write(<script>alert('Error \nPlease login again');
window.location.href='./mainhome.aspx';</script>)
            Exit Sub
        End If


        conn = New SqlConnection(connectionstring)
        executesqlstmt(sql)
        Try
            sql = "select max(id) from model "
            cmd = New SqlCommand(sql, conn)
            Dim num As Integer

            If cmd.ExecuteScalar Is System.DBNull.Value Then
                txtid.Text = 1
            Else
                num = cmd.ExecuteScalar
                txtid.Text = num + 1

            End If


        Catch ex As Exception
            Response.Write("<script>alert(ex.Message.ToString());</script>")
            'MsgBox(ex.Message.ToString())
        End Try
        txtname.Focus()

    End Sub

    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnadd.Click
        If (txtname.Text = "" Or txtspec.Text = "") Then
            Response.Write("<script>alert('Enter all mandatory fields');</script>")
            'Response.Write("Enter all mandatory fields")
            Exit Sub

        End If
        sql = "insert into model values('" & txtid.Text & "','" & txtname.Text & "','" & txtspec.Text & "')"
        cmd = New SqlCommand(sql, conn)
        Try
            cmd.ExecuteNonQuery()
            Response.Write("<script>alert('data successfully recorded');</script>")
            '            Response.Write("")
            txtid.Text = ""
            txtname.Text = ""
            txtspec.Text = ""
            Response.Redirect("adminpage2.aspx")
        Catch ae As SqlException
            Response.Write("<script>alert(ae.Message.ToString());</script>")
            'Response.Write(ae.Message.ToString())
        End Try
    End Sub

    
End Class