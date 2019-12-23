Imports betatesting.pmsTableAdapters
Imports System.Data.SqlClient
Public Class pms_forgot_password
    Inherits System.Web.UI.UserControl
    Dim dsuser As New pmsRegistrationdetailsTableAdapter
    Dim CF As New CommonFunctions
    Dim Message, subject, sendto As String


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Not IsPostBack Then

        End If
    End Sub

    Protected Sub btnsave_Click(sender As Object, e As EventArgs) Handles btnsave.Click

        Dim dt As New Data.DataTable
        Dim dr As Data.DataRow
        dt = dsuser.GetDataByempid(txtempid.Text)

        If dt.Rows.Count > 0 Then
            dr = dt.Rows(0)
            Dim pwd = dr("password")
            Dim firstname = dr("Firstname")
            Dim lastname = dr("Lastname")
            Dim email = dr("OfficialEmailId")
            Dim email2 = dr("OfficialEmailId")
            ' After Sms Integration

            'Dim mobile = dr("Mobile")

            'Dim mobilenumber As String

            'mobilenumber = 91 & mobile
            'Dim obj As New SmsReseller
            'If obj.CheckLogin("info@mokshamedia.co.in", "12345678") = "OK" Then
            '    obj.User = "info@mokshamedia.co.in" 'username
            '    obj.Pass = "12345678" 'password
            '    obj.Sender_id = "KIMSWB" 'senderid'senderid
            '    obj.MSISDN = mobilenumber ' mobilenumber
            '    obj.Message = "Your Password For Gastro Package Login " & Password 'message
            '    obj.MsgType = SmsReseller.MessageType.Msg_Text 'messagetype
            '    obj.SendSingle()


            '    ' method to send SMS
            'End If


            Dim mail As New CommonFunctions

            If email <> "" And email2 <> "" Then
                Message = "<font face='Verdana' size='2'>Dear " & firstname & lastname & ", <br /><br />" & _
                        "<br /><br /></font>" & _
                        " Welcome to PMS  . Following are the details to access the administrator control panel.<br /><br />" & _
                        "<br />URL '" & System.Configuration.ConfigurationManager.AppSettings("WebsiteURL") & "/sign-in/'<br />" & _
                        "<br />User Name(Login Id) : " & txtempid.Text & _
                        "<br />Password : " & pwd & _
                        "<br /><br /><font face='Verdana' size='2'>Thanks & Regards,<br />" & _
                        "Website Support Team,<br />" & _
                        "PMS . </font>"

                subject = "PMS Password Details -- www.PMS.com"
                If email = "" Then
                    sendto = email2
                Else
                    sendto = email
                End If


                Dim CF As New CommonFunctions
                ' CF.SendMail(Message, sendto, subject)
                Panel1.Visible = False
                Label1.Visible = True
            End If
        Else
            Panel1.Visible = False
            Label1.Visible = True
            Label1.Text = "The Employee Id  [" & txtempid.Text & "]  Doesn't Exist"
        End If




    End Sub
End Class
