Public Class home1
    Inherits System.Web.UI.Page

    

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

        If (Application("curuname") Is Nothing) Or (Application("curupass") Is Nothing) Or (Application("curuid") Is Nothing) Then
            Response.Write(<script>alert('Error \nPlease login again');
window.location.href='./mainhome.aspx';</script>)

        End If

    End Sub
End Class