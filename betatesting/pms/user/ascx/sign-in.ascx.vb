Imports betatesting.pmsTableAdapters
Imports System.IO

Imports System.Data.SqlClient
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web.UI.WebControls

Public Class pms_sign_in
    Inherits System.Web.UI.UserControl


    Dim dssignin As New pmsRegistrationdetailsTableAdapter
    Dim DsIdentity As New QueriesTableAdapter

    Dim ObjCPIP As New PmsControlPanelIPStatsTableAdapter

    Dim Permissions As String


    Dim i As Integer


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then

        End If

    End Sub

    Protected Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click


        Dim dt As New Data.DataTable
        Dim dr As Data.DataRow
        dt = dssignin.GetDataByempidpassword(txtempid.Text, txtpassword.Text)

        If dt.Rows.Count > 0 Then
            dr = dt.Rows(0)
            Session("pmsUserId") = dr("Id")
            Session("EmailId") = dr("OfficialEmailId")
            Session("empid") = dr("empid")
            Session("FirstName") = dr("Firstname")
            Session("LastName") = dr("Lastname")
            Session("MobileNumber") = dr("Mobile")
            HttpContext.Current.Session.Add("Firstname", dr("Lastname") & dr("Id"))
            Session.Timeout = 3600

            'FormsAuthentication.Initialize()
            'FormsAuthentication.HashPasswordForStoringInConfigFile(TxtPwd.Text, "sha1")
            Dim ticket As New FormsAuthenticationTicket(1, txtempid.Text, DateTime.Now, DateTime.Now.AddMinutes(180), False, "RegisteredMember")
            Dim hash As String = FormsAuthentication.Encrypt(ticket)
            Dim cookie As New HttpCookie(FormsAuthentication.FormsCookieName, hash)
            Response.Cookies.Add(cookie)


            ObjCPIP.Insert(Request.ServerVariables("REMOTE_ADDR"), Now(), Now(), txtempid.Text)

            Response.Redirect("~/pms/user/Profile/")
        Else

            LblMsg.Text = "Invalid User ID / Password, Please Try Again !!"
            Exit Sub
        End If

    End Sub

    Protected Sub btncancel_Click(sender As Object, e As EventArgs) Handles btncancel.Click
        clearall()
    End Sub

    Private Sub clearall()
        txtempid.Text = ""
        txtpassword.Text = ""

    End Sub
End Class