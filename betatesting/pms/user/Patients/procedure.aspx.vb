Imports betatesting.patientsTableAdapters
Imports betatesting.ssTableAdapters
Public Class procedure
    Inherits System.Web.UI.Page
    Dim dsmedicine As New BrandTableAdapter


    Dim dsproceduredata As New PmsProcedureTableAdapter

    Dim dspatientdetails As New PmspatientsTableAdapter
    Dim dsprocedurecyle As New pmsProcedureCycleTableAdapter
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then

            lblpatientid.Text = Me.Page.RouteData.Values("patientid").ToString()


            lbproducts.DataSource = dsmedicine.getdropdowndata
            lbproducts.DataTextField = "brandcomposition"
            lbproducts.DataValueField = "BrandId"
            lbproducts.DataBind()

            rptpatient.DataSource = dspatientdetails.GetDataByid(lblpatientid.Text)
            rptpatient.DataBind()


            GridView1.DataSource = dsproceduredata.GetDataBypatientid(lblpatientid.Text)
            GridView1.DataBind()

        End If
    End Sub
    Protected Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click
        If btnsubmit.Text = "ADD" Then





            For i = 0 To lbproducts.Items.Count - 1
                If lbproducts.Items(i).Selected = True Then

                    dsproceduredata.updatepatientmedicineactivestatus("N", lblpatientid.Text, lbproducts.Items(i).Value)
                    dsproceduredata.Insert("Y", Now(), Now(), TxtFromDate1.Text, "MEDICINE", "0", "0", "TEST", "0", Now(), Now(), "Y", lblpatientid.Text, lbproducts.Items(i).Value, lbproducts.Items(i).Text, txtcycles.Text, txtfree.Text, "0", txtinterval.Text)

                    Dim procedureid As String

                    procedureid = dsproceduredata.getrecentpatientprocedureid(lblpatientid.Text, lbproducts.Items(i).Value, "Y")

                    'Dim nextdate As Date

                    'nextdate = TxtFromDate1.Text

                    'nextdate = nextdate.AddDays(txtinterval.Text)



                    dsprocedurecyle.Insert(lblpatientid.Text, procedureid, TxtFromDate1.Text, TxtFromDate1.Text, "Y", Now(), "1")


                    lbproducts.SelectedIndex = -1
                    TxtFromDate1.Text = ""
                    txtcycles.Text = ""
                    txtfree.Text = ""
                    txtinterval.Text = ""
                End If


            Next


        End If
        'Dim nextdate As Date

        'nextdate = TxtDate.Text

        'nextdate = nextdate.AddDays(txtinterval.Text)
        'Dim medicineid, medicinename As String

        'medicineid = CommonFunctions.GetListBoxSelectedItems(lbmedicine)
        'medicinename = CommonFunctions.GetListBoxSelectedItemstext(lbmedicine)


        'dsproceduredata.Insert("Y", TxtDate.Text, TxtDate.Text, nextdate, "0", "0", "0", "0", "0", Now(), Now(), "Y", Request("patientid"), medicineid, medicinename, txtcycles.Text, txtfree.Text, "", txtinterval.Text)

        GridView1.DataSource = dsproceduredata.GetDataBypatientid(lblpatientid.Text)
        GridView1.DataBind()

    End Sub
End Class