Imports betatesting.pmsTableAdapters
Imports betatesting.patientsTableAdapters
Imports betatesting.ssTableAdapters

Public Class manage_patients
    Inherits System.Web.UI.Page

    Dim dsuser As New PmspatientsTableAdapter
    Dim dsuserType As New PmsUserTypeTableAdapter
    Dim dsstockits As New StockistsTableAdapter

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then


            lblpatientid.Text = Me.Page.RouteData.Values("patientid").ToString()
            ddlstockist.DataSource = dsstockits.getdropdowndata
            ddlstockist.DataTextField = "stockistdetails"
            ddlstockist.DataValueField = "StockistSapId"
            ddlstockist.DataBind()



            ddlPatientType.DataSource = dsuserType.GetData
            ddlPatientType.DataValueField = "queryid"
            ddlPatientType.DataTextField = "typename"
            ddlPatientType.DataBind()
            ddlPatientType.Items.Insert(0, "select PatientType")
            ddlPatientType.Items(0).Value = 0

            Dim DtDoc As New Data.DataTable
            Dim dtrow As Data.DataRow
            DtDoc = dsuser.GetDataByid(lblpatientid.Text)
            If DtDoc.Rows.Count > 0 Then
                dtrow = DtDoc.Rows(0)

                If Not IsDBNull(dtrow("FirstName")) Then
                    txtFirstName.Text = dtrow("FirstName")
                End If

                If Not IsDBNull(dtrow("LastName")) Then
                    txtLastName.Text = dtrow("LastName")
                End If
                If Not IsDBNull(dtrow("EmailID")) Then
                    txtEmailId.Text = dtrow("EmailID")
                End If
                If Not IsDBNull(dtrow("Telephone")) Then
                    txtTelephone.Text = dtrow("Telephone")
                End If


                If Not IsDBNull(dtrow("EmailID")) Then
                    txtindications.Text = dtrow("EmailID")
                End If
                If Not IsDBNull(dtrow("Adress")) Then
                    txtadress.Text = dtrow("Adress")
                End If

                Dim stockist As String
                If Not IsDBNull(dtrow("stockistsapid")) Then
                    stockist = dtrow("stockistsapid")
                    If stockist = "" Then
                        ddlstockist.SelectedIndex = -1
                    Else
                        ddlstockist.Items.FindByValue(dtrow("stockistsapid")).Selected = True
                    End If
                Else
                    ddlstockist.SelectedIndex = -1
                End If

                Dim PatientType As String
                If Not IsDBNull(dtrow("PatientType")) Then
                    PatientType = dtrow("PatientType")
                    If PatientType = "" Then
                        ddlPatientType.SelectedIndex = -1
                    Else
                        ddlPatientType.Items.FindByValue(dtrow("PatientType")).Selected = True
                    End If
                Else
                    ddlPatientType.SelectedIndex = -1
                End If

                lbldoctorid.Text = dtrow("DoctorId")






            Else
                Response.Redirect("~/pms/user/view-edit-patients.aspx")

            End If
        End If


    End Sub

    Protected Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click
        dsuser.Update(txtFirstName.Text, txtLastName.Text, txtEmailId.Text, txtTelephone.Text, "", ddlPatientType.SelectedItem.Value, txtindications.Text, lbldoctorid.Text, Now(), "Y", txtadress.Text, ddlstockist.SelectedItem.Value, Session("empid"), lblpatientid.Text)

        Response.Redirect("~/pms/user/view-patients-doctor-" & lbldoctorid.Text)

    End Sub



End Class