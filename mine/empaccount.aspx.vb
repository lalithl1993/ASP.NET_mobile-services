
Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Text.RegularExpressions
Public Class account
    Inherits System.Web.UI.Page

    Dim curruser As String



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load



        If (Application("curauser") Is Nothing) Or (Application("curapass") Is Nothing) Or (Application("curatype") Is Nothing) Then
            Response.Write(<script>alert('Error \nPlease login again');
window.location.href='./mainhome.aspx';</script>)
            Exit Sub
        End If


        conn = New SqlConnection(connectionstring)
        executesqlstmt(sql)
        curruser = Application("curauser")
        Call loadinfo()


    End Sub

    Protected Sub btnedit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnedit.Click
        btnedit.Visible = False
        btnsave.Visible = True
        btncanael.Visible = True
        txtemail.Visible = False
        txtemail0.Text = txtemail.Text
        txtemail0.Visible = True
        txtaddress.Visible = False
        txtaddress0.Text = txtaddress.Text
        txtaddress0.Visible = True
        txtphone.Visible = False
        txtphone0.Text = txtphone.Text
        txtphone0.Visible = True

    End Sub

    Protected Sub btncanael_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btncanael.Click
        btnedit.Visible = True
        btnsave.Visible = False
        btncanael.Visible = False
        txtemail.Visible = True
        txtemail0.Visible = False
        txtaddress.Visible = True
        txtaddress0.Visible = False
        txtphone.Visible = True
        txtphone0.Visible = False
        'Call loadinfo()

    End Sub
    Sub loadinfo()

        sql = "select * from employee where empid= " & curruser & ""
        Try
            cmd = New SqlCommand(sql, conn)
            reader = cmd.ExecuteReader()
            reader.Read()
            txtname.Text = reader("name")
            txtdob.Text = reader("dob")
            txtsex.Text = reader("sex")
            txtid.Text = curruser
            txtemail.Text = reader("email")
            txtaddress.Text = reader("address")
            txtphone.Text = reader("phone")
            txtbranch.Text = reader("branch")


            reader.Close()


        Catch ex As Exception

            Response.Write("<script>alert(ex.Message.ToString());</script>")
            'MsgBox(ex.Message.ToString())
            reader.Close()
        End Try
    End Sub

    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnsave.Click
        sql = "update employee set email='" & txtemail0.Text & "',address='" & txtaddress0.Text & "',phone='" & txtphone0.Text & "' where empid='" & curruser & "'"
        cmd = New SqlCommand(sql, conn)
        Try
            cmd.ExecuteNonQuery()
            Response.Write("<script>alert('Updater successfully');</script>")
            'MsgBox("Updater successfully")
            Response.Redirect("empaccount.aspx")
        Catch ex As Exception
            Response.Write("<script>alert(ex.Message.ToString());</script>")
            'MsgBox(ex.Message.ToString())
        End Try

    End Sub

    
End Class