﻿Imports betatesting.pmsTableAdapters
Imports betatesting.patientsTableAdapters
Imports betatesting.ssTableAdapters


Public Class doctor_patient_details
    Inherits System.Web.UI.Page

    Dim dsuser As New PmspatientsTableAdapter
    Dim dsuserType As New PmsUserTypeTableAdapter
    Dim dsstockits As New StockistsTableAdapter
    Dim dsattender As New PmspatientsattendersTableAdapter

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then

            lblpatientid.Text = Me.Page.RouteData.Values("patientid").ToString()



            rptpatient.DataSource = dsuser.GetDataByid(lblpatientid.Text)
            rptpatient.DataBind()
            gvcity.DataSource = dsattender.GetDataBypatientid(lblpatientid.Text)
            gvcity.DataBind()


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

End Class