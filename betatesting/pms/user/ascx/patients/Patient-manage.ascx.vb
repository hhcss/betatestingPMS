Imports betatesting.pmsTableAdapters
Public Class Patient_manage
    Inherits System.Web.UI.UserControl
    Dim dshospital As New PmsHospitalTableAdapter
    Dim dsbranch As New pmshospitalbranchTableAdapter
    Dim dsdoctor As New PmsDoctorTableAdapter
    Dim dsuser As New PmsUserTableAdapter
    Dim dsusertype As New PmsUserTypeTableAdapter

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then

            ddlusertype.DataSource = dsusertype.GetData
            ddlusertype.DataValueField = "queryid"
            ddlusertype.DataTextField = "typename"
            ddlusertype.Items.Insert(0, "select patienttype")
            ddlusertype.Items(0).Value = 0
            ddlusertype.DataBind()

            ddlhospital.DataSource = dshospital.GetData
            ddlhospital.DataValueField = "Id"
            ddlhospital.DataTextField = "HospitalName"
            ddlhospital.Items.Insert(0, "Select Hospital")
            ddlhospital.Items(0).Value = 0
            ddlhospital.DataBind()

            ddlbranch.DataSource = dsbranch.GetData
            ddlbranch.DataValueField = "id"
            ddlbranch.DataTextField = "BranchName"
            ddlbranch.Items.Insert(0, "Select Branch")
            ddlbranch.Items(0).Value = 0
            ddlbranch.DataBind()



            Dim DtDoc As New Data.DataTable
            Dim dtrow As Data.DataRow
            DtDoc = dsuser.GetDataByid(Request("patientid"))
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
                If Not IsDBNull(dtrow("Password")) Then
                    txtpassword.Text = dtrow("Password")
                End If

                Dim speciality As String
                If Not IsDBNull(dtrow("HospitalId")) Then
                    speciality = dtrow("HospitalId")
                    If speciality = "" Then
                        ddlhospital.SelectedIndex = -1
                    Else
                        ddlhospital.Items.FindByValue(dtrow("HospitalId")).Selected = True
                    End If
                Else
                    ddlhospital.SelectedIndex = -1
                End If



                Dim category As String
                If Not IsDBNull(dtrow("BranchId")) Then
                    category = dtrow("BranchId")
                    If category = "" Then
                        ddlbranch.SelectedIndex = -1
                    Else
                        ddlbranch.Items.FindByValue(dtrow("BranchId")).Selected = True
                    End If
                Else
                    ddlbranch.SelectedIndex = -1

                End If



                ddlhospital.DataSource = dshospital.Getalldata
                ddlhospital.DataTextField = "HospitalName"
                ddlhospital.DataValueField = "Id"
                ddlhospital.DataBind()

                Dim hospital As String
                If Not IsDBNull(dtrow("hospitalid")) Then
                    hospital = dtrow("hospitalid")
                    If hospital = "" Then
                        ddlhospital.SelectedIndex = -1
                    Else
                        ddlhospital.Items.FindByValue(dtrow("hospitalid")).Selected = True




                        ddlbranch.DataSource = dsbranch.GetDataByHospitalId(ddlhospital.SelectedItem.Value)
                        ddlbranch.DataTextField = "branchName"
                        ddlbranch.DataValueField = "Id"
                        ddlbranch.DataBind()
                        ddlbranch.Items.Insert(0, " Select a Branch")
                        ddlbranch.Items(0).Value = "0"


                        Dim branch As String
                        If Not IsDBNull(dtrow("branchid")) Then
                            branch = dtrow("branchid")
                            If branch = "" Then
                                ddlbranch.SelectedIndex = -1
                            Else
                                ddlbranch.Items.FindByValue(dtrow("branchid")).Selected = True

                                Dim doctor As String
                                If Not IsDBNull(dtrow("doctorid")) Then
                                    doctor = dtrow("doctorid")
                                    If doctor = "" Then
                                        ddlbranch.SelectedIndex = -1
                                    Else

                                        ddldoctor.DataSource = dsdoctor.Getdatabybranchid(doctor)
                                        ddldoctor.DataValueField = "Id"
                                        ddldoctor.DataTextField = "FirstName"
                                        ddldoctor.Items.Insert(0, "Select doctor")
                                        ddldoctor.Items(0).Value = "0"
                                        ddldoctor.DataBind()
                                        ddldoctor.Items.FindByValue(dtrow("doctorid")).Selected = True



                                    End If
                                Else
                                    ddldoctor.SelectedIndex = -1

                                End If

                            End If
                        Else
                            ddlbranch.SelectedIndex = -1

                        End If


                    End If
                Else
                    ddlhospital.SelectedIndex = -1

                End If

            Else
                Response.Redirect("view-edit-patients.aspx")

            End If
        End If


    End Sub

    Protected Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click
        If dsdoctor.getCountByDoctorId(txtFirstName.Text, Request("doctorid")) > 0 Then
            lblmsg.Text = "patient name already exist"
        Else
            dsuser.updatedata(txtFirstName.Text, txtLastName.Text, txtEmailId.Text, txtTelephone.Text, ddlhospital.SelectedItem.Value, ddlbranch.SelectedItem.Value, ddldoctor.SelectedItem.Value, ddlusertype.SelectedItem.Value, Request("patientid"))

            Response.Redirect("view-edit-Patients.aspx")
        End If

    End Sub



    Protected Sub ddlhospital_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlhospital.SelectedIndexChanged


        If (ddlhospital.SelectedIndex > 0) Then
            ddlbranch.Items.Clear()
            ddlbranch.DataSource = dsbranch.GetDataByHospitalId(ddlhospital.SelectedItem.Value)
            ddlbranch.DataTextField = "branchName"
            ddlbranch.DataValueField = "STATEID"
            ddlbranch.DataBind()
            ddlbranch.Items.Insert(0, " Select a Branch")
            ddlbranch.Items(0).Value = "0"


        End If
    End Sub
    Protected Sub ddlbranch_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlbranch.SelectedIndexChanged


        If (ddlbranch.SelectedIndex > 0) Then
            ddldoctor.Items.Clear()
            ddldoctor.DataSource = dsdoctor.Getdatabybranchid(ddlbranch.SelectedItem.Value)
            ddldoctor.DataTextField = "firstName"
            ddldoctor.DataValueField = "Id"
            ddldoctor.DataBind()
            ddldoctor.Items.Insert(0, " Select a doctor")
            ddldoctor.Items(0).Value = "0"


        End If
    End Sub
End Class