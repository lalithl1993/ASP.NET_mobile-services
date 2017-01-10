Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Text.RegularExpressions
Public Class changepass1
    Inherits System.Web.UI.Page

    Dim currpass As String
    Dim curruser As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load



        If (Application("curauser") Is Nothing) Or (Application("curapass") Is Nothing) Or (Application("curatype") Is Nothing) Then
            Response.Write(<script>alert('Error \nPlease login again');
window.location.href='./mainhome.aspx';</script>)
            Exit Sub
        End If


        conn = New SqlConnection(connectionstring)
        executesqlstmt(sql)
        currpass = Application("curapass")
        curruser = Application("curauser")
    End Sub

    Protected Sub btnchange_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnchange.Click
        If txtcurrpass.Text = "" Or txtconpass.Text = "" Or txtnewpass.Text = "" Then
            Response.Write(<script>alert('please fill all detales');</script>)
            'Response.Write("please fill all detales")
            Exit Sub

        End If

        If Not (txtcurrpass.Text = currpass) Then
            Response.Write(<script>alert('please enter right password');</script>)
            'Response.Write("please enter right password")
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

            sql = "update login set password='" & txtconpass.Text & "' where userid='" & curruser & "'"
            cmd = New SqlCommand(sql, conn)
            Try
                cmd.ExecuteNonQuery()
                Response.Write(<script>alert('password changed successfully');</script>)
                'MsgBox("password changed successfully")
                currpass = txtconpass.Text

                txtconpass.Text = ""
                txtnewpass.Text = ""
                txtcurrpass.Text = ""
                Response.Redirect("~/empcomplaints.aspx")
            Catch ex As Exception
                Response.Write(<script>alert(ex.Message.ToString());</script>)
                'MsgBox(ex.Message.ToString())
            End Try

        End If
    End Sub

    Protected Sub btncanael_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btncanael.Click
        txtconpass.Text = ""
        txtcurrpass.Text = ""
        txtnewpass.Text = ""
        Response.Redirect("~/empcomplaints.aspx")
    End Sub
End Class