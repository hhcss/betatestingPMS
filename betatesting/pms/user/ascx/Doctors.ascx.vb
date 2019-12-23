Imports betatesting.pmsTableAdapters

Public Class Doctors
    Inherits System.Web.UI.UserControl
    Dim dsdoctors As New PmsDoctorMasterTableAdapter

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            rptdoctors.DataSource = dsdoctors.GetDataByEmpCode(Session("empid"))
            rptdoctors.DataBind()

        End If
    End Sub

End Class