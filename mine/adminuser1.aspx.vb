
Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Text.RegularExpressions

Public Class user1
    Inherits System.Web.UI.Page
    Dim status As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load



        If (Application("curauser") Is Nothing) Or (Application("curapass") Is Nothing) Or (Application("curatype") Is Nothing) Then
            Response.Write(<script>alert('Error \nPlease login again');
window.location.href='./mainhome.aspx';</script>)
            Exit Sub
        End If


        conn = New SqlConnection(connectionstring)
        executesqlstmt(sql)
    End Sub

    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnsearch.Click
        txtid1.Text = txtid.Text
        'Response.Write(curid)
        Try
            sql = "select * from signup where id='" & txtid.Text & "'"
            cmd = New SqlCommand(sql, conn)
            Dim num As Integer
            num = cmd.ExecuteScalar

            If num = Nothing Then
                Response.Write("<script>alert('invalid id');</script>")
                'MsgBox("invalid id")
                btnblock.Visible = False
                Exit Sub
            End If


        Catch ex As Exception
            Response.Write("<script>alert(ex.Message.ToString());</script>")
            'MsgBox(ex.Message.ToString())
        End Try

        Try
            sql = "select * from signup where id= " & txtid.Text & ""
            cmd = New SqlCommand(sql, conn)
            reader = cmd.ExecuteReader()
            reader.Read()

            txtname.Text = reader("name")
            txtdob.Text = reader("dob")
            txtsex.Text = reader("sex")
            txtemail.Text = reader("email")
            If reader("status") = "block" Then
                btunblock.Visible = True
                btnblock.Visible = False

            Else
                btnblock.Visible = True
                btunblock.Visible = False

            End If

            reader.Close()
        Catch ex As Exception
            Response.Write("<script>alert(ex.Message.ToString());</script>")
            'MsgBox(ex.Message.ToString())
            reader.Close()
        End Try

    End Sub

    Protected Sub btnblock_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnblock.Click
        sql = "update signup set status='" & "block" & "' where id='" & txtid.Text & "'"
            cmd = New SqlCommand(sql, conn)
            Try
                cmd.ExecuteNonQuery()
            Response.Write("<script>alert('account blocked');</script>")
            'MsgBox("account blocked")
            btnblock.Visible = False
            btunblock.Visible = True
            Catch ex As Exception
            Response.Write("<script>alert(ex.Message.ToString());</script>")
            'MsgBox(ex.Message.ToString())
            End Try
    End Sub

    
    Protected Sub btunblock_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btunblock.Click
        sql = "update signup set status='" & "active" & "' where id='" & txtid.Text & "'"
        cmd = New SqlCommand(sql, conn)
        Try
            cmd.ExecuteNonQuery()
            Response.Write("<script>alert('account activated');</script>")
            'MsgBox("account activated")
            btnblock.Visible = True
            btunblock.Visible = False

        Catch ex As Exception
            Response.Write("<script>alert(ex.Message.ToString());</script>")
            'MsgBox(ex.Message.ToString())
        End Try
    End Sub
End Class