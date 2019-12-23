Imports betatesting.pmsTableAdapters
Public Class Patient_View_Edit
    Inherits System.Web.UI.UserControl
    Dim dshospitals As New PmsDoctorTableAdapter
    Dim dspatients As New PmsUserTableAdapter
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        BuildQuery()
    End Sub
    Protected Sub GridView1_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.DataBound
        For i = 0 To GridView1.Rows.Count - 1

            Dim CmdActive As LinkButton = CType(GridView1.Rows(i).Cells(2).FindControl("LnkBtnActiveStatus"), LinkButton)

            If GridView1.Rows(i).Cells(3).Text = "Y" Then
                CmdActive.Text = "De Activate"
                CmdActive.OnClientClick = "return confirm('Are You Sure, You Want To De Activate?');"
                GridView1.Rows(i).Cells(3).Text = "Active"
            Else
                CmdActive.Text = "Activate"
                CmdActive.OnClientClick = "return confirm('Are You Sure, You Want To Activate?');"
                GridView1.Rows(i).Cells(3).Text = "De Active"
            End If
            CmdActive.CommandArgument = i


        Next
    End Sub

    Protected Sub GridView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
        BuildQuery()
    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
        If e.CommandName = "CmdActive" Then
            If GridView1.Rows(e.CommandArgument).Cells(3).Text = "Active" Then
                dshospitals.updateactivatestatus("N", GridView1.DataKeys(e.CommandArgument).Value)
            Else
                dshospitals.updateactivatestatus("Y", GridView1.DataKeys(e.CommandArgument).Value)
            End If
        ElseIf e.CommandName = "CmdDelete" Then
            dshospitals.Delete(e.CommandArgument)
        End If
        BuildQuery()



    End Sub
    Private Sub BuildQuery()
        GridView1.DataSource = dspatients.Getalldata

        GridView1.DataBind()

    End Sub

End Class