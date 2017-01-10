
Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Text.RegularExpressions

Public Class products
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If (Application("curuname") Is Nothing) Or (Application("curupass") Is Nothing) Or (Application("curuid") Is Nothing) Then
            Response.Write(<script>alert('Error \nPlease login again');
window.location.href='./mainhome.aspx';</script>)

        End If


        conn = New SqlConnection(connectionstring)
        executesqlstmt(sql)

    End Sub

    Protected Sub listid_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles listid.SelectedIndexChanged
        If listid.Text = "" Then
        Else
            sql = "select * from model where id= " & listid.Text & ""
            Try
                cmd = New SqlCommand(sql, conn)
                reader = cmd.ExecuteReader()
                reader.Read()
                txtname.Text = reader("name")
                txtspec.Text = reader("specifications")

                reader.Close()


            Catch ex As Exception
                Response.Write("<script>alert(ex.Message.ToString());</script>")
                'MsgBox(ex.Message.ToString())
                reader.Close()
            End Try

        End If
        
    End Sub

End Class