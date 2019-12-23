Imports betatesting.patientsTableAdapters

Public Class list1
    Inherits System.Web.UI.Page
    Dim dsuser As New PmspatientsTableAdapter

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then




            rptpatients.DataSource = dsuser.GetDataByempid(Session("empid"))
            rptpatients.DataBind()

        End If
    End Sub

End Class