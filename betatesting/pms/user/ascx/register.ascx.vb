Imports betatesting.pmsTableAdapters
Imports System.Data.SqlClient
Public Class pms_register
    Inherits System.Web.UI.UserControl
    Dim i As Integer
    Dim Permissions, Password As String
    Dim Message, subject, sendto As String

    Dim strsql As String
    Dim oracmd As SqlCommand
    Dim connString As String
    Public objConn As SqlConnection

    Dim dsregister As New pmsRegistrationdetailsTableAdapter



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then

        End If
    End Sub


    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click


        If dsregister.getempidcount(txtempid.Text) > 0 Then


            LblMsg.Text = "Employee with Id :" & txtempid.Text & "Already Exists, try with another Employee Id"
        Else




            dsregister.Insert(txtfirstname.Text, txtlastname.Text, txtmobilenumber.Text, txtempid.Text, txtpassword.Text, "Y", txtEmailId.Text)

            Message = ""
            If txtEmailId.Text <> "" Then
                Message = "<font face='Verdana' size='2'>Dear " & txtfirstname.Text & ", <br /><br />" & _
                        "<br /><br /></font>" & _
                        " Welcome to PMS Network. Following are the details to access the administrator control panel.<br /><br />" & _
                        "<br />URL '" & System.Configuration.ConfigurationManager.AppSettings("WebsiteURL") & "privilege-card/sign-in/'<br />" & _
                        "<br />User Name(Login Id) : " & txtEmailId.Text & _
                        "<br />Password : " & Password & _
                        "<br /><br /><font face='Verdana' size='2'>Thanks & Regards,<br />" & _
                        "Website Support Team,<br />" & _
                        "PMS . </font>"

                subject = "Pms  Login Details -- www.pms.com"
                sendto = txtEmailId.Text


                Dim CF As New CommonFunctions
                'CF.SendMail(Message, sendto, subject)  uncomment after setting smtp in web.config
                LblMsg.Text = "<br /><br />User Added Successfully ! Login Details Emailed.<br /><br />"


            End If

            Response.Redirect("~/pms/user/sign-in/")
        End If

        
    End Sub

    Private Sub clearall()
        txtfirstname.Text = ""
        txtlastname.Text = ""
        txtEmailId.Text = ""
        txtmobilenumber.Text = ""
       
    End Sub

    Protected Sub BtnCancel_Click(sender As Object, e As EventArgs) Handles BtnCancel.Click
        clearall()
    End Sub
End Class