Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Text.RegularExpressions

Public Class WebForm1
    Inherits System.Web.UI.Page
    'Friend curruser As String
    'Friend currpass As String
    'Friend currid As Integer




    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn = New SqlConnection(connectionstring)
        executesqlstmt(sql)


    End Sub

    Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnlogin.Click
        If (txtuname.Text = "" Or txtpass.Text = "") Then
            Response.Write(<script>window.alert('Enter username and password');</script>)
            'Response.Write("Enter username and password")
            txtuname.Focus()
            Exit Sub
        ElseIf (txtuname.Text = "") Then
            Response.Write(<script>window.alert('Enter the username');</script>)
            'Response.Write("Enter the username")
            txtuname.Text = ""
            txtpass.Text = ""
            txtuname.Focus()
            Exit Sub
        ElseIf (txtpass.Text = "") Then
            Response.Write(<script>window.alert('Enter the password');</script>)
            'Response.Write("Enter the password")
            txtuname.Text = ""
            txtpass.Text = ""
            txtuname.Focus()
            Exit Sub
        End If


        


        Try
            sql = "select * from signup where email = '" & txtuname.Text & "' and password = '" & txtpass.Text & "'"
            cmd = New SqlCommand(sql, conn)

            reader = cmd.ExecuteReader()
            reader.Read()
            If reader.HasRows.ToString = True Then
                If reader("status") = "block" Then
                    Response.Write(<script>window.alert('your account is blocked');</script>)
                    'Response.Write("")
                    Exit Sub
                End If
                Application("curuname") = txtuname.Text
                Application("curupass") = txtpass.Text
                Application("curuid") = reader("id")
                Response.Redirect("userhome.aspx")
            Else
                Response.Write(<script>window.alert('username or password mismatch');</script>)
                'Response.Write("username or password mismatch")
                Exit Sub
            End If

            'If reader.Read = False Then
            '    Response.Write("username or password mismatch")
            '    Exit Sub
            'End If
            'If reader("status") = "block" Then
            '    Response.Write("your account is blocked")
            'End If
            'Session("curruid") = reader("id")

            'reader.Close()

            'Response.Redirect("~/user pages/home.aspx")
        Catch ex As Exception
            'MsgBox(ex.Message.ToString())
            reader.Close()
        End Try


        'Try

        '    sql = "select * from signup where email = '" & txtuname.Text & "' and password = '" & txtpass.Text & "'"
        '    cmd = New SqlCommand(sql, conn)

        '    'Dim dr As SqlDataReader = cmd.ExecuteReader
        '    'dr.Read()
        '    'Dim currid As String
        '    'currid = reader("id")
        '    'Session("curruid") = currid

        '    If dr.Read = False Then
        '        Response.Write("username or password mismatch")
        '    Else
        '        Response.Redirect("~/user pages/home.aspx")

        '    End If
        'Catch ex As Exception
        '    MsgBox(ex.Message.ToString())

        'End Try
    End Sub

  
End Class