
Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Text.RegularExpressions
Public Class employee2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load



        If (Application("curauser") Is Nothing) Or (Application("curapass") Is Nothing) Or (Application("curatype") Is Nothing) Then
            Response.Write(<script>alert('Error \nPlease login again');
window.location.href='./mainhome.aspx';</script>)
            Exit Sub
        End If



        conn = New SqlConnection(connectionstring)
        executesqlstmt(sql)
        btnremove.Attributes.Add("onclick", "return confirm('are u sure?');")
    End Sub

    Protected Sub btnremove_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnremove.Click
        

        sql = "delete from login where userid='" & txtid1.Text & "'"

                cmd = New SqlCommand(sql, conn)
                Try
                    cmd.ExecuteNonQuery()
                    Response.Write("<script>alert('epm login deleted');</script>")
                    'MsgBox("epm login deleted")


                Catch ae As SqlException
            'Response.Write("<script>alert(ae.Message.ToString());</script>")
            MsgBox(ae.Message.ToString())
                End Try

                sql = "delete from employee where empid='" & txtid.Text & "'"

                cmd = New SqlCommand(sql, conn)
                Try
                    cmd.ExecuteNonQuery()
                    Response.Write("<script>alert('employee deleted');</script>")
                    'MsgBox("epmployee deleted")
                    txtid.Text = ""
                    txtname.Text = ""
                    txtdob.Text = ""
                    txtsex.Text = ""
                    txtemail.Text = ""
                    txtaddress.Text = ""
                    txtphone.Text = ""
                    txtbranch.Text = ""
                    btnedit.Visible = False
                    btncanael.Visible = False
                    btnremove.Visible = False


                Catch ae As SqlException
            'Response.Write("<script>alert(ae.Message.ToString());</script>")
            MsgBox(ae.Message.ToString())
                End Try



    End Sub

    Protected Sub btnedit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnedit.Click
        btnedit.Visible = False
        btncanael.Visible = True
        btnremove.Visible = True

    End Sub

    Protected Sub btncanael_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btncanael.Click
        btncanael.Visible = False
        btnremove.Visible = False
        btnedit.Visible = True

    End Sub

    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnsearch.Click
        Try
            sql = "select * from employee where empid='" & txtid.Text & "'"
            cmd = New SqlCommand(sql, conn)
            Dim num As Integer
            num = cmd.ExecuteScalar

            If num = Nothing Then
                Response.Write("<script>alert('invalid id');</script>")
                'MsgBox("invalid id")
                btnedit.Visible = False
                Exit Sub
            End If


        Catch ex As Exception
            Response.Write("<script>alert(ex.Message.ToString());</script>")
            'MsgBox(ex.Message.ToString())
        End Try

        Try
            txtid1.Text = txtid.Text
            sql = "select * from employee where empid= " & txtid.Text & ""
            cmd = New SqlCommand(sql, conn)
            reader = cmd.ExecuteReader()
            reader.Read()
            txtname.Text = reader("name")
            txtdob.Text = reader("dob")
            txtsex.Text = reader("sex")
            txtemail.Text = reader("email")
            txtaddress.Text = reader("address")
            txtphone.Text = reader("phone")
            txtbranch.Text = reader("branch")

            btnedit.Visible = True
            reader.Close()


        Catch ex As Exception
            Response.Write("<script>alert(ex.Message.ToString());</script>")
            'MsgBox(ex.Message.ToString())
            reader.Close()
        End Try

    End Sub
End Class