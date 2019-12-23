Imports betatesting.pmsTableAdapters
Imports betatesting.hhcTableAdapters
Public Class procedure_new
    Inherits System.Web.UI.UserControl
    Dim dsmedicine As New HproductslistTableAdapter
    Dim dsproceduredata As New PmsProcedureTableAdapter
    Dim dspatientdetails As New patientdetailsbypatientidTableAdapter
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then

            lbmedicine.DataSource = dsmedicine.GetData
            lbmedicine.DataTextField = "HproductslistNAME"
            lbmedicine.DataValueField = "HproductslistID"
            lbmedicine.DataBind()

            rptpatient.DataSource = dspatientdetails.GetData(Request("patientid"))
            rptpatient.DataBind()


            GridView1.DataSource = dsproceduredata.GetDataBypatientid(Request("patientid"))
            GridView1.DataBind()


            'DDLstatus.DataSource = dsstatus.GetAllData()
            'DDLstatus.DataValueField = "PATIENTSTATUSID"
            'DDLstatus.DataTextField = "PATIENTSTATUSNAME"
            'DDLstatus.DataBind()

            DDLstatus.Items.Insert(0, "Status")
            DDLstatus.Items(0).Value = "0"
        End If

    End Sub
    Protected Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click

        Dim nextdate As Date

        nextdate = TxtDate.Text

        nextdate = nextdate.AddDays(txtinterval.Text)
        Dim medicineid, medicinename As String

        medicineid = CommonFunctions.GetListBoxSelectedItems(lbmedicine)
        medicinename = CommonFunctions.GetListBoxSelectedItemstext(lbmedicine)


        dsproceduredata.Insert("Y", TxtDate.Text, TxtDate.Text, nextdate, "0", "0", "0", "0", "0", Now(), Now(), "Y", Request("patientid"), medicineid, medicinename, txtcycles.Text, txtfree.Text, "", txtinterval.Text)

        GridView1.DataSource = dsproceduredata.GetDataBypatientid(Request("patientid"))
        GridView1.DataBind()

    End Sub
    Protected Sub btnstatus_Click(sender As Object, e As EventArgs) Handles btnstatus.Click
        lblmsg.Text = ""

        If DDLstatus.SelectedItem.Value = "3" Then
            TxtDate.Text = "01/01/2030"

        End If
        If DDLstatus.SelectedItem.Value = "4" Then

            TxtDate.Text = "01/01/2030"
        End If

        If DDLstatus.SelectedItem.Value = "0" Then
            lblmsg.Text = "Please status"


        Else
            If TxtDate.Text = "" Then
                lblmsg.Text = "Please Enter Tracking Date"
            Else
                If txtDescription.Text = "" Then
                    lblmsg.Text = "Please Description"
                Else





                    'dsconversation.Insert(Request("ID"), "Y", txtDescription.Text, Now(), ddlrating.SelectedItem.Value, TxtDate.Text, DDLstatus.SelectedItem.Value, DDLstatus.SelectedItem.Text, Session("adminaxis"), Now(), ddltype.SelectedItem.Text, Now())
                    'dstimediff.updatetrackingpage(ddltype.SelectedItem.Text, Now(), DDLstatus.SelectedItem.Text, Request("ID"))
                    'dsleads.updatenexttrackingdate(TxtDate.Text, Request("ID"))
                    'dsleads.updaterepliedbydata(TxtDate.Text, Session("adminid"), Request("ID"), "0")

                    DDLstatus.SelectedIndex = -1
                    ddltype.SelectedIndex = -1
                    ddlrating.SelectedIndex = -1
                    txtDescription.Text = ""
                    TxtDate.Text = ""

                    lblmsg.Text = "Conversation Added Successfully"

                End If
            End If
        End If
        'gvrevenue.DataSource = dskimsrevenue.GetDataByumrnumber(lblpatientumr.Text)
        'gvrevenue.DataBind()
        'rptconversation.DataSource = dsconversation.getalldatabyid(Request("ID"))
        'rptconversation.DataBind()



        'ClearAll()
    End Sub
End Class