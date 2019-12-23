Imports betatesting.pmsTableAdapters
Imports System.Data.SqlClient
Imports System.IO
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web.UI.WebControls

Public Class profile
    Inherits System.Web.UI.UserControl
    Dim dsuser As New pmsRegistrationdetailsTableAdapter
    Dim dshhc As New PmsFsMasterTableAdapter
    Dim strsql As String
    Dim oracmd As SqlCommand
    Dim connString As String
    Public objConn As SqlConnection


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then

            If IsNothing(Session("pmsUserId")) Then
                Response.Redirect("~/pms/user/sign-in/", True)
            End If


            lblempid.Text = Session("empid")
            rptpms.DataSource = dsuser.GetDataByid(Session("pmsUserId"))
            rptpms.DataBind()
            rpthhc.DataSource = dshhc.GetDataByempcode(lblempid.Text)
            rpthhc.DataBind()

            If rpthhc.Items.Count = "0" Then

                lblstatus.Text = "Deactive Employee"
            Else
                lblstatus.Text = "Active"
            End If


            'BuildQuery()



        End If
    End Sub


    'Private Sub BuildQuery()
    '    Dim strsql1 = "SELECT fsheirarchy.FSCODE,fsheirarchy.FSNAME, fsheirarchy.empcode, emp.C_NAMEPREFIX, emp.C_Name, emp.C_Mobile_No, " &
    '                  "fsheirarchy.NTYPE, useraccess.C_Name AS useraccessname, Tbl_Area_Mst.C_Name AS area, Tbl_Region_Mst.C_Name AS region," &
    '                  "Tbl_Zone_Mst.C_Name AS zone, f2.C_Name + ' ( ' + f2.C_Code + ' ) ' AS f2, f3.C_Name + ' ( ' + f3.C_Code + ' ) ' AS f3, " &
    '                   "  f4.C_Name + ' ( ' + f4.C_Code + ' ) ' AS f4, f5.C_Name + ' ( ' + f5.C_Code + ' ) ' AS f5, f6.C_Name + ' ( ' + f6.C_Code + ' ) ' AS f6," &
    '                   "f7.C_Name + ' ( ' + f7.C_Code + ' ) ' AS f7, f8.C_Name + ' ( ' + f8.C_Code + ' ) ' AS f8, " &
    '                     "f9.C_Name + ' ( ' + f9.C_Code + ' ) ' AS f9, f10.C_Name + ' ( ' + f10.C_Code + ' ) ' AS f10, " &
    '                     "f11.C_Name + ' ( ' + f11.C_Code + ' ) ' AS f11, f12.C_Name + ' ( ' + f12.C_Code + ' ) ' AS f12, " &
    '                    " f13.C_Name + ' ( ' + f13.C_Code + ' ) ' AS f13, f14.C_Name + ' ( ' + f14.C_Code + ' ) ' AS f14," &
    '                    "f15.C_Name + ' ( ' + f15.C_Code + ' ) ' AS f15, div.c_name + ' ( ' + f1.c_div_code + ' ) ' AS Division " &
    '                     "FROM  fsheirarchy LEFT OUTER JOIN " &
    '                     "Tbl_FS_Mst  f1 ON fsheirarchy.FSCODE = f1.C_Code LEFT  JOIN " &
    '                     "Tbl_FS_Mst  f2 ON fsheirarchy.FS2 = f2.C_Code LEFT  JOIN " &
    '                     "Tbl_FS_Mst  f3 ON fsheirarchy.FS3 = f3.C_Code LEFT  JOIN " &
    '                     "Tbl_FS_Mst  f4 ON fsheirarchy.FS4 = f4.C_Code LEFT  JOIN " &
    '                     "Tbl_FS_Mst  f5 ON fsheirarchy.FS5 = f5.C_Code LEFT  JOIN " &
    '                     "Tbl_FS_Mst  f6 ON fsheirarchy.FS6 = f6.C_Code LEFT  JOIN " &
    '                     "Tbl_FS_Mst  f7 ON fsheirarchy.FS7 = f7.C_Code LEFT  JOIN " &
    '                     "Tbl_FS_Mst  f8 ON fsheirarchy.FS8 = f8.C_Code LEFT  JOIN " &
    '                     "Tbl_FS_Mst  f9 ON fsheirarchy.FS9 = f9.C_Code LEFT  JOIN " &
    '                     "Tbl_FS_Mst  f10 ON fsheirarchy.FS10 = f10.C_Code LEFT  JOIN " &
    '                     "Tbl_FS_Mst  f11 ON fsheirarchy.FS11 = f11.C_Code LEFT  JOIN " &
    '                     "Tbl_FS_Mst  f12 ON fsheirarchy.FS12 = f12.C_Code LEFT  JOIN " &
    '                     "Tbl_FS_Mst  f13 ON fsheirarchy.FS13 = f13.C_Code LEFT  JOIN " &
    '                     "Tbl_FS_Mst  f14 ON fsheirarchy.FS14 = f14.C_Code LEFT  JOIN " &
    '                     "Tbl_FS_Mst  f15 ON fsheirarchy.FS15 = f15.C_Code LEFT  JOIN " &
    '                     "Tbl_Area_Mst ON Tbl_Area_Mst.C_Code = f1.C_Area_Code LEFT  JOIN " &
    '                     "Tbl_Region_Mst ON Tbl_Area_Mst.C_Region_Code = Tbl_Region_Mst.C_Code LEFT  JOIN " &
    '                     "Tbl_Zone_Mst ON Tbl_Region_Mst.C_Zone_Code = Tbl_Zone_Mst.C_Code LEFT  JOIN " &
    '                     "Tbl_Emp_Mst  emp ON fsheirarchy.empcode = emp.C_EmpCode LEFT  JOIN " &
    '                     "Tbl_Div_Mst  div ON f1.c_div_code = div.c_code LEFT  JOIN " &
    '                     "Tbl_User_Access  useraccess ON fsheirarchy.NTYPE = useraccess.N_Type " &
    '                     " WHERE        (fsheirarchy.FSNAME NOT LIKE '%*%') AND (fsheirarchy.empcode ='" & lblempid.Text & "')"
    '    getData(strsql1)
    'End Sub
    'Public Sub openConnection()
    '    connString = ConfigurationManager.ConnectionStrings("HeteroHealthConnectionString").ConnectionString
    '    objConn = New SqlConnection(connString)
    '    objConn.Open()
    'End Sub
    'Public Sub closeConnection()
    '    objConn.Close()
    '    objConn = Nothing
    'End Sub
    'Private Sub getData(ByVal strsql As String)
    '    Dim count As Integer
    '    lblstatus.Text = strsql
    '    openConnection()
    '    oracmd = New SqlCommand(strsql, objConn)

    '    'create a new DataAdapter
    '    Dim myAdapter As New SqlDataAdapter

    '    'Assign the command to the Adapter so it knows what command to send when Fill() is called
    '    myAdapter.SelectCommand = oracmd

    '    'Create a DataSet object - any other constructors?
    '    Dim myDataSet As New Data.DataSet

    '    'Use the DataAdapter to fill the DataSet
    '    myAdapter.Fill(myDataSet)
    '    count = 0

    '    If myDataSet.Tables(0).Rows.Count > 0 Then
    '        rpthhc.DataSource = myDataSet
    '        rpthhc.DataBind()
    '        If rpthhc.Items.Count = "0" Then


    '            lblstatus.Text = "Deactive Employee"
    '        Else
    '            lblstatus.Text = "Active"
    '        End If
    '    End If
    '    oracmd = Nothing
    '    closeConnection()
    'End Sub

End Class