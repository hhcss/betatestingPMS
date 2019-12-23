Imports betatesting.pmsTableAdapters
Imports betatesting.patientsTableAdapters
Imports betatesting.ssTableAdapters
Public Class _single
    Inherits System.Web.UI.Page
    Dim dsuser As New PmspatientsTableAdapter
    Dim dsuserType As New PmsUserTypeTableAdapter
    Dim dsstockits As New StockistsTableAdapter
    Dim dsattender As New PmspatientsattendersTableAdapter
    Dim dscyle As New pmsProcedureCycleTableAdapter
    Dim dsstatus As New PATIENTSTATUSTableAdapter
    Dim dsselection As New PATIENTSTATUSselectionTableAdapter

    Dim dsconversation As New pmsProcedureCycleConversationTableAdapter
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            lblid.Text = Me.Page.RouteData.Values("procedureid").ToString()
            lblpatientid.Text = dscyle.getpatientidbyid(lblid.Text)
            rptleads.DataSource = dscyle.getfulldatabyid(lblid.Text)
            rptleads.DataBind()

            rptconversation.DataSource = dsconversation.GetDataByprocedurecycleid(lblid.Text)
            rptconversation.DataBind()

            gvcity.DataSource = dsattender.GetDataBypatientid(lblpatientid.Text)
            gvcity.DataBind()


            DDLstatus.DataSource = dsstatus.GetAllData()
            DDLstatus.DataValueField = "PATIENTSTATUSID"
            DDLstatus.DataTextField = "PATIENTSTATUSNAME"
            DDLstatus.DataBind()
            DDLstatus.Items.Insert(0, "Status")
            DDLstatus.Items(0).Value = "0"
        End If
    End Sub
    Protected Sub ddlstatus_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLstatus.SelectedIndexChanged
        If (DDLstatus.SelectedIndex > 0) Then
            ddltype.Items.Clear()
            ddltype.DataSource = dsselection.GetDataByPATIENTSTATUSNAME(DDLstatus.SelectedItem.Value)
            ddltype.DataValueField = "PATIENTSTATUSID"
            ddltype.DataTextField = "PATIENTSTATUSNAME"
            ddltype.DataBind()

            ddltype.Items.Insert(0, "        Select a Type")
            ddltype.Items(0).Value = "N/A"

        End If
    End Sub

    Protected Sub LnkBtnUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        Dim LnkBtn As LinkButton = TryCast(sender, LinkButton)
        Dim GVRow As GridViewRow = DirectCast(LnkBtn.Parent.Parent, GridViewRow)

        Dim rowIndex As Integer = GVRow.RowIndex




        Dim txtfirstname As TextBox = CType(gvcity.Rows(rowIndex).Cells(1).FindControl("txtfirstname"), TextBox)
        Dim txtlastname As TextBox = CType(gvcity.Rows(rowIndex).Cells(2).FindControl("txtlastname"), TextBox)
        Dim txtemailid As TextBox = CType(gvcity.Rows(rowIndex).Cells(3).FindControl("txtemailid"), TextBox)
        Dim txtmblnumber As TextBox = CType(gvcity.Rows(rowIndex).Cells(4).FindControl("txtmblnumber"), TextBox)
        Dim txtrelation As TextBox = CType(gvcity.Rows(rowIndex).Cells(5).FindControl("txtrelation"), TextBox)
        Dim lblattenderid As Label = CType(gvcity.Rows(rowIndex).Cells(6).FindControl("lblattenderid"), Label)

        dsattender.updatedata(txtfirstname.Text, txtlastname.Text, txtemailid.Text, txtmblnumber.Text, txtrelation.Text, lblattenderid.Text)

        gvcity.EditIndex = -1
        gvcity.DataSource = dsattender.GetDataBypatientid(lblpatientid.Text)
        gvcity.DataBind()
    End Sub


    Protected Sub btnattender_Click(sender As Object, e As EventArgs) Handles btnattender.Click
        dsattender.Insert(txtfirstname.Text, txtlastname.Text, txtemailid.Text, txtphonenumber.Text, Now(), "Y", txtrelation.Text, lblpatientid.Text)


        txtfirstname.Text = ""
        txtlastname.Text = ""
        txtemailid.Text = ""
        txtphonenumber.Text = ""
        txtrelation.Text = ""

        gvcity.DataSource = dsattender.GetDataBypatientid(lblpatientid.Text)
        gvcity.DataBind()

    End Sub


    Protected Sub GVCity_RowCancelingEdit(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCancelEditEventArgs) Handles gvcity.RowCancelingEdit
        gvcity.EditIndex = -1
        gvcity.DataSource = dsattender.GetDataBypatientid(lblpatientid.Text)
        gvcity.DataBind()

    End Sub



    Protected Sub gvcity_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles gvcity.RowEditing
        gvcity.EditIndex = e.NewEditIndex
        gvcity.DataSource = dsattender.GetDataBypatientid(lblpatientid.Text)
        gvcity.DataBind()

    End Sub

    Protected Sub btnconversation_Click(sender As Object, e As EventArgs) Handles btnconversation.Click


        LblMsg.Text = ""

        If DDLstatus.SelectedItem.Value = "3" Then
            txtdate.Text = "01/01/2030"

        End If
        If DDLstatus.SelectedItem.Value = "4" Then

            txtdate.Text = "01/01/2030"
        End If

        If DDLstatus.SelectedItem.Value = "0" Then
            LblMsg.Text = "Please status"


        Else
            If txtdate.Text = "" Then
                LblMsg.Text = "Please Enter Tracking Date"
            Else
                If txtDescription.Text = "" Then
                    LblMsg.Text = "Please Enter Description"
                Else



                    dsconversation.Insert(lblpatientid.Text, lblid.Text, txtdate.Text, txtdate.Text, txtDescription.Text,
                                              DDLstatus.SelectedItem.Text, ddltype.SelectedItem.Text, Now())

                    LblMsg.Text = "Conversation Added Successfully"
                    rptconversation.DataSource = dsconversation.GetDataByprocedurecycleid(lblid.Text)
                    rptconversation.DataBind()

                    txtDescription.Text = ""
                    ddlrating.SelectedIndex = -1
                    DDLstatus.SelectedIndex = -1
                    ddltype.SelectedIndex = -1
                    txtdate.Text = ""

                End If
            End If
        End If





    End Sub
End Class