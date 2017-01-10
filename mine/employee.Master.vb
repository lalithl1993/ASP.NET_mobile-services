Public Class employee3
    Inherits System.Web.UI.MasterPage

    
    Protected Sub MenuEventHandler(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs) Handles Menu1.MenuItemClick
        Application("curauser") = Nothing
        Application("curapass") = Nothing
        Application("curatype") = Nothing
        Response.Redirect("mainhome.aspx")

    End Sub

End Class