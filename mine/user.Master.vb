Public Class user2
    Inherits System.Web.UI.MasterPage

   


    Protected Sub MenuEventHandler(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs) Handles Menu1.MenuItemClick
        Application("curuname") = Nothing
        Application("curupass") = Nothing
        Application("curuid") = Nothing
        Response.Redirect("mainhome.aspx")

    End Sub

   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If (Application("curuname") Is Nothing) Or (Application("curupass") Is Nothing) Or (Application("curuid") Is Nothing) Then
            Response.Write(<script>alert('Error \nPlease login again');
window.location.href='./mainhome.aspx';</script>)

        End If
    End Sub
End Class