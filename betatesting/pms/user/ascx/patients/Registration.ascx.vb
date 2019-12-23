
Imports betatesting.pmsTableAdapters
Imports betatesting.patientsTableAdapters
Imports betatesting.ssTableAdapters

Public Class Registration
    Inherits System.Web.UI.UserControl
    Dim dsdoctor As New PmsDoctorMasterTableAdapter
    Dim dsuser As New PmspatientsTableAdapter
    Dim dsuserType As New PmsUserTypeTableAdapter
    Dim dsstockits As New StockistsTableAdapter

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then

            If IsNothing(Session("pmsUserId")) Then
                Response.Redirect("~/pms/user/sign-in/", True)
            End If

            ddlstockist.DataSource = dsstockits.GetDropdowndata
            ddlstockist.DataTextField = "stockistdetails"
            ddlstockist.DataValueField = "StockistSapId"
            ddlstockist.DataBind()



            ddlPatientType.DataSource = dsuserType.GetData
            ddlPatientType.DataValueField = "queryid"
            ddlPatientType.DataTextField = "typename"
            ddlPatientType.DataBind()
            ddlPatientType.Items.Insert(0, "select PatientType")
            ddlPatientType.Items(0).Value = 0



            Dim empid As String
            empid = Session("empid")
            Dim dt As New Data.DataTable

            dt = dsdoctor.GetDataByempcode(empid)

            Dim doccount As String

            doccount = dt.Rows.Count

            ddldoctor.DataSource = dt
            ddldoctor.DataValueField = "doccode"
            ddldoctor.DataTextField = "docname"
            ddldoctor.DataBind()
            ddldoctor.Items.Insert(0, "select Doctor")
            ddldoctor.Items(0).Value = 0





        End If
        lblmsg.Visible = False
    End Sub

   
    Public Sub clearall()
        txtFirstName.Text = ""
        txtLastName.Text = ""
        txtEmailId.Text = ""
        txtTelephone.Text = ""

        ddlPatientType.SelectedIndex = -1

        ddldoctor.SelectedIndex = -1
        txtindications.Text = ""
        txtadress.Text = ""
        ddlstockist.SelectedIndex = -1

    End Sub

    Protected Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click


        If IsNothing(Session("empid")) Then
            Response.Redirect("~/pms/user/sign-in/", True)
        End If


        dsuser.Insert(txtFirstName.Text, txtLastName.Text, txtEmailId.Text, txtTelephone.Text, "",
                      ddlPatientType.SelectedItem.Value, txtindications.Text, ddldoctor.SelectedItem.Value, Now(), "Y", txtadress.Text, ddlstockist.SelectedItem.Value, Session("empid"))
        lblmsg.Visible = True
        lblmsg.Text = "Patient added successfully"
        clearall()
    End Sub
End Class