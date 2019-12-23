Imports betatesting.patientsTableAdapters
Public Class view_patient
    Inherits System.Web.UI.Page
    Dim dsuser As New PmspatientsTableAdapter

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then


            Dim doctorcode As String

            doctorcode = Me.Page.RouteData.Values("doctorid").ToString()

            rptpatients.DataSource = dsuser.GetDataByDoctorId(doctorcode)
            rptpatients.DataBind()

        End If
    End Sub

End Class