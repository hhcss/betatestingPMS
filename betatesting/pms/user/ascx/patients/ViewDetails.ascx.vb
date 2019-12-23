Imports betatesting.pmsTableAdapters
Public Class ViewDetails1
    Inherits System.Web.UI.UserControl

    Dim dspatient As New PmsUserTableAdapter
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            rptpatient.DataSource = dspatient.GetDataByid(Request("patientid"))
            rptpatient.DataBind()

            If rptpatient.Items.Count = 0 Then
                Response.Redirect("view-edit-Patients.aspx")
            End If
        End If
    End Sub

End Class