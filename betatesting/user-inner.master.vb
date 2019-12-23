Public Class user_inner
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsNothing(Session("pmsUserId")) Then
            Response.Redirect("~/pms/user/sign-in/", True)
        End If
    End Sub

End Class