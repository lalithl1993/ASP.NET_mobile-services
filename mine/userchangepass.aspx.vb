Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Text.RegularExpressions
Public Class changepass
    Inherits System.Web.UI.Page
    Dim currpass As String
    Dim currid As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Application("curuname") Is Nothing) Or (Application("curupass") Is Nothing) Or (Application("curuid") Is Nothing) Then
            Response.Write(<script>alert('Error \nPlease login again');
window.location.href='./mainhome.aspx';</script>)

        End If
        
        conn = New SqlConnection(connectionstring)
        executesqlstmt(sql)
        currpass = Application("curupass")
        currid = Application("curuid")
    End Sub

    Protected Sub btnchange_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnchange.Click
        If txtcurrpass.Text = "" Or txtconpass.Text = "" Or txtnewpass.Text = "" Then
            Response.Write(<script>alert('please fill all detales');</script>)
            'Response.Write("please fill all detales")
            Exit Sub

        End If

        If Not (txtcurrpass.Text = currpass) Then
            Response.Write(<script>alert('please enter right password');</script>)
            'Response.Write("")
            txtcurrpass.Text = ""
            txtnewpass.Text = ""
            txtconpass.Text = ""
            Exit Sub
        ElseIf Not (txtnewpass.Text = txtconpass.Text) Then
            Response.Write(<script>alert('confirmation failed');</script>)
            'Response.Write("confirmation failed")
            txtcurrpass.Text = ""
            txtnewpass.Text = ""
            txtconpass.Text = ""
            Exit Sub
        Else

            sql = "update signup set password='" & txtconpass.Text & "' where id='" & currid.tostring & "'"
            cmd = New SqlCommand(sql, conn)
            Try
                cmd.ExecuteNonQuery()
                Response.Write(<script>alert('password changed successfully');</script>)
                'MsgBox("")
                Application("curupass") = txtconpass.Text

                txtconpass.Text = ""
                txtnewpass.Text = ""
                txtcurrpass.Text = ""
                
                Response.Redirect("~/userhome.aspx")
            Catch ex As Exception
                Response.Write(<script>alert(ex.Message.ToString());</script>)
                'MsgBox(ex.Message.ToString())
            End Try

        End If
    End Sub

   
End Class