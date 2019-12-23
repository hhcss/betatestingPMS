Imports betatesting.pmsTableAdapters

Imports System.Data.SqlClient
Public Class pms_change_password
    Inherits System.Web.UI.UserControl
    Dim dschangepwd As New pmsRegistrationdetailsTableAdapter


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If IsNothing(Session("pmsUserId")) Then
                Response.Redirect("~/pms/user/sign-in/", True)
            End If
        End If
    End Sub

    Protected Sub BtnSave_Click(sender As Object, e As EventArgs) Handles BtnSave.Click


        If TxtNewPassword.Text = TxtConfirmPassword.Text Then

            If CInt(dschangepwd.getidpwdcount(Session("pmsUserId"), TxtOldPassword.Text)) > 0 Then
                dschangepwd.updatepassword(TxtNewPassword.Text, Session("pmsUserId"))

                TxtConfirmPassword.Text = ""
                TxtNewPassword.Text = ""
                TxtOldPassword.Text = ""

                LblMsg.Text = "<br /><br />Password Changed Successfully !<br /><br />"
            Else
                LblMsg.Text = "<br /><br />Invalid Password !, Please Try With The Other !<br /><br />"
            End If
        Else

            LblMsg.TabIndex = " <br /><br />Password is not equal !, Please re enter password correctly !<br /><br />"
        End If
     


      
    End Sub
End Class