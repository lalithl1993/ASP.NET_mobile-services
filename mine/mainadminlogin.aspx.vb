Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Text.RegularExpressions

Public Class WebForm3
    Inherits System.Web.UI.Page
    'Friend curruser As String
    'Friend currpass As String
    'Friend currtype As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn = New SqlConnection(connectionstring)
        executesqlstmt(sql)

    End Sub


    Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnlogin.Click
        If (txtuname.Text = "" Or txtpass.Text = "") Then
            Response.Write("<script>alert('Enter username and password');</script>")
            'Response.Write("Enter username and password")
            txtuname.Focus()
            Exit Sub
        ElseIf (txtuname.Text = "") Then
            Response.Write("<script>alert('Enter the username');</script>")
            'Response.Write("Enter the username")
            txtuname.Text = ""
            txtpass.Text = ""
            txtuname.Focus()
            Exit Sub
        ElseIf (txtpass.Text = "") Then
            Response.Write("<script>alert('Enter the password');</script>")
            'Response.Write("Enter the password")
            txtuname.Text = ""
            txtpass.Text = ""
            txtuname.Focus()
            Exit Sub
        End If
        sql = "select * from login where userid = '" & txtuname.Text & "' and password = '" & txtpass.Text & "' and type = '" & ddtype.Text & "'"
        cmd = New SqlCommand(sql, conn)
        Dim dr As SqlDataReader = cmd.ExecuteReader
        Try
            If dr.Read = False Then
                Response.Write("<script>alert('username or password or type mismatch');</script>")
                'Response.Write("")
            Else
                Application("curauser") = txtuname.Text
                Application("curapass") = txtpass.Text
                Application("curatype") = ddtype.Text
                Response.Write("<script>alert('Login Successful...');</script>")
                'Response.Write("Login Successful...")
                If (ddtype.Text = "admin") Then
                    Response.Redirect("~/adminuser.aspx")
                Else
                    Response.Redirect("~/empcomplaints.aspx")
                End If

                txtuname.Text = ""
                txtpass.Text = ""

                
                End If
        Catch ex As Exception
        Finally
            dr.Close()
        End Try
    End Sub

    
End Class