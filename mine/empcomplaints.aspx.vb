Public Class complaints
    Inherits System.Web.UI.Page

   

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView1.SelectedIndexChanged
        Response.Redirect("~\empanswering.aspx?tvar=" & GridView1.SelectedRow.Cells(0).Text)
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load


        If (Application("curauser") Is Nothing) Or (Application("curapass") Is Nothing) Or (Application("curatype") Is Nothing) Then
            Response.Write(<script>alert('Error \nPlease login again');
window.location.href='./mainhome.aspx';</script>)
            Exit Sub
        End If


    End Sub
End Class