
Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Text.RegularExpressions
Public Class manage
    Inherits System.Web.UI.Page
    Public currid As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If (Application("curuname") Is Nothing) Or (Application("curupass") Is Nothing) Or (Application("curuid") Is Nothing) Then
            Response.Write(<script>alert('Error \nPlease login again');
window.location.href='./mainhome.aspx';</script>)
            Exit Sub
        End If


        'tabdob.Visible = False
        conn = New SqlConnection(connectionstring)
        executesqlstmt(sql)

        currid = Application("curuid")
        sql = "select * from signup where id= " & currid & ""
        Try
            cmd = New SqlCommand(sql, conn)
            reader = cmd.ExecuteReader()
            reader.Read()
            txtname.Text = reader("name")
            txtdob.Text = reader("dob")
            txtsex.Text = reader("sex")
            txtid.Text = currid
            txtemail.Text = reader("email")

            reader.Close()


        Catch ex As Exception
            Response.Write(<script>alert(ex.Message.ToString());</script>)
            'MsgBox(ex.Message.ToString())
            reader.Close()
        End Try
        If Not IsPostBack Then
            If (Me.SelectedDate = DateTime.MinValue) Then
                Me.PopulateYear()
                Me.PopulateMonth()
                Me.PopulateDay()
            End If
        Else
            If (Not (Request.Form(ddlDay.UniqueID)) Is Nothing) Then
                Me.PopulateDay()
                ddlDay.ClearSelection()
                ddlDay.Items.FindByValue(Request.Form(ddlDay.UniqueID)).Selected = True
            End If
        End If
    End Sub

    Protected Sub btnedit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnedit.Click
        btnsave.Visible = True
        btncanael.Visible = True
        btnedit.Visible = False
        txtdob.Visible = False
        tabdob.Visible = True
        txtname.Visible = False
        txtname1.Text = txtname.Text
        txtname1.Visible = True
    End Sub

    Protected Sub btncanael_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btncanael.Click
        btnsave.Visible = False
        btncanael.Visible = False
        btnedit.Visible = True
        txtdob.Visible = True
        tabdob.Visible = False
        txtname.Visible = True
        txtname1.Visible = False

    End Sub

    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnsave.Click
        Dim birth As String

        'birth = byear.Text & "-" & bmonth.Text & "-" & bdate.Text
        birth = SelectedDate.ToShortDateString
        If birth > Today Then
            Response.Write(<script>alert('Invalid DateOfBirth');</script>)
            Exit Sub
        End If
        sql = "update signup set name='" & txtname1.Text & "',dob='" & birth & "' where id='" & currid.ToString & "'"
        cmd = New SqlCommand(sql, conn)
        Try
            cmd.ExecuteNonQuery()
            'MsgBox("Updater successfully")
            Response.Redirect("useraccount.aspx")
        Catch ex As Exception
            Response.Write(<script>alert(ex.Message.ToString());</script>)
            'MsgBox(ex.Message.ToString())
        End Try

    End Sub

    Private Sub PopulateDay()
        ddlDay.Items.Clear()
        Dim lt As ListItem = New ListItem
        lt.Text = "DD"
        lt.Value = "0"
        ddlDay.Items.Add(lt)
        Dim days As Integer = DateTime.DaysInMonth(Me.Year, Me.Month)
        Dim i As Integer = 1
        Do While (i <= days)
            lt = New ListItem
            lt.Text = i.ToString
            lt.Value = i.ToString
            ddlDay.Items.Add(lt)
            i = (i + 1)
        Loop
        ddlDay.Items.FindByValue(DateTime.Now.Day.ToString).Selected = True
    End Sub

    Private Sub PopulateMonth()
        ddlMonth.Items.Clear()
        Dim lt As ListItem = New ListItem
        lt.Text = "MM"
        lt.Value = "0"
        ddlMonth.Items.Add(lt)
        Dim i As Integer = 1
        Do While (i <= 12)
            lt = New ListItem
            lt.Text = Convert.ToDateTime((i.ToString + "/1/1900")).ToString("MMMM")
            lt.Value = i.ToString
            ddlMonth.Items.Add(lt)
            i = (i + 1)
        Loop
        ddlMonth.Items.FindByValue(DateTime.Now.Month.ToString).Selected = True
    End Sub

    Private Sub PopulateYear()
        ddlYear.Items.Clear()
        Dim lt As ListItem = New ListItem
        lt.Text = "YYYY"
        lt.Value = "0"
        ddlYear.Items.Add(lt)
        Dim i As Integer = DateTime.Now.Year
        Do While (i >= 1950)
            lt = New ListItem
            lt.Text = i.ToString
            lt.Value = i.ToString
            ddlYear.Items.Add(lt)
            i = (i - 1)
        Loop
        ddlYear.Items.FindByValue(DateTime.Now.Year.ToString).Selected = True
    End Sub


    Private Property Day() As Integer
        Get
            If (Not (Request.Form(ddlDay.UniqueID)) Is Nothing) Then
                Return Integer.Parse(Request.Form(ddlDay.UniqueID))
            Else
                Return Integer.Parse(ddlDay.SelectedItem.Value)
            End If
        End Get
        Set(ByVal value As Integer)
            Me.PopulateDay()
            ddlDay.ClearSelection()
            ddlDay.Items.FindByValue(value.ToString).Selected = True
        End Set
    End Property

    Private Property Month() As Integer
        Get
            Return Integer.Parse(ddlMonth.SelectedItem.Value)
        End Get
        Set(ByVal value As Integer)
            Me.PopulateMonth()
            ddlMonth.ClearSelection()
            ddlMonth.Items.FindByValue(value.ToString).Selected = True
        End Set
    End Property

    Private Property Year() As Integer
        Get
            Return Integer.Parse(ddlYear.SelectedItem.Value)
        End Get
        Set(ByVal value As Integer)
            Me.PopulateYear()
            ddlYear.ClearSelection()
            ddlYear.Items.FindByValue(value.ToString).Selected = True
        End Set
    End Property

    Public Property SelectedDate() As DateTime
        Get
            Try
                Return DateTime.Parse(Me.Month & "/" & Me.Day & "/" & Me.Year)
            Catch ex As Exception
                Return DateTime.MinValue
            End Try
        End Get
        Set(ByVal value As DateTime)
            If Not value.Equals(DateTime.MinValue) Then
                Me.Year = value.Year
                Me.Month = value.Month
                Me.Day = value.Day
            End If
        End Set
    End Property

   
End Class