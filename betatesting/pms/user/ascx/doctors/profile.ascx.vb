Imports betatesting.pmsTableAdapters

Public Class profile1
    Inherits System.Web.UI.UserControl
    Dim dsdoctors As New PmsDoctorMasterTableAdapter


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then


            Dim doctorcode As String

            doctorcode = Me.Page.RouteData.Values("doctorid").ToString()
            rptdoctorprofile.DataSource = dsdoctors.GetDataByDocCode(doctorcode)
            rptdoctorprofile.DataBind()

        End If
    End Sub

End Class