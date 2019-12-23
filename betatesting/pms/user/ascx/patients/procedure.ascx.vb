
Imports betatesting.pmsTableAdapters






Public Class procedure1
    Inherits System.Web.UI.UserControl
    Dim dsmedicine As New BrandTableAdapter


    Dim dsproceduredata As New PmsProcedureTableAdapter

    Dim dspatientdetails As New patientdetailsbypatientidTableAdapter



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            'ddlmedicine.DataSource = dsmedicine.GetData
            'ddlmedicine.DataTextField = "HproductslistNAME"
            'ddlmedicine.DataValueField = "HproductslistID"
            'ddlmedicine.DataBind()
            lbmedicine.DataSource = dsmedicine.Getalldata
            lbmedicine.DataTextField = "productname"
            lbmedicine.DataValueField = "CurrentProductSapId"
            lbmedicine.DataBind()

            rptpatient.DataSource = dspatientdetails.GetData(Request("patientid"))
            rptpatient.DataBind()


            GridView1.DataSource = dsproceduredata.GetDataBypatientid(Request("patientid"))
            GridView1.DataBind()

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
End Class