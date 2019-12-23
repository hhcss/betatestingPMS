Imports betatesting.patientsTableAdapters

Public Class _default5
    Inherits System.Web.UI.Page
    Dim dscyle As New pmsProcedureCycleTableAdapter

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            GridView1.DataSource = dscyle.cyclefulldata(Session("empid"))
            GridView1.DataBind()
        End If
    End Sub

End Class