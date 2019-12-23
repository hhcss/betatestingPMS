Imports System.Web.Http
Imports System.Web.Optimization
Imports System.Web.SessionState
Imports System.Web.Security
Imports System.Security.Principal

Public Class Global_asax
    Inherits HttpApplication

    Sub Application_Start(sender As Object, e As EventArgs)
        ' Fires when the application is started
        'GlobalConfiguration.Configure(AddressOf WebApiConfig.Register)
        RouteConfig.RegisterRoutes(RouteTable.Routes)
        BundleConfig.RegisterBundles(BundleTable.Bundles)

        RegisterRoutes(RouteTable.Routes)
    End Sub
    Private Shared Sub RegisterRoutes(routes As RouteCollection)
        routes.MapPageRoute("userdoctorprofile", "pms/user/doctor-profile-{doctorid}", "~/pms/user/doctors/profile.aspx")

        routes.MapPageRoute("userdoctoraddpatient", "pms/user/add-patient-doctor-{doctorid}", "~/pms/user/doctors/add-patient.aspx")

        routes.MapPageRoute("userdoctorviewpatient", "pms/user/view-patients-doctor-{doctorid}", "~/pms/user/doctors/view-patient.aspx")


        routes.MapPageRoute("doctorpatientedit", "pms/user/manage-patient-{patientid}", "~/pms/user/doctors/manage-patients.aspx")

        routes.MapPageRoute("doctorpatientdetails", "pms/user/doctor-patient-details-{patientid}", "~/pms/user/doctors/doctor-patient-details.aspx")


        routes.MapPageRoute("doctorpatientprocedure", "pms/user/doctor-patient-procedure-{patientid}", "~/pms/user/doctors/doctor-patient-procedure.aspx")

        routes.MapPageRoute("proceduresingle", "pms/user/procedures/{procedureid}", "~/pms/user/procedures/single.aspx")

    End Sub
    Protected Sub Application_AuthenticateRequest(ByVal sender As Object, ByVal e As EventArgs)
        'If HttpContext.Current.User IsNot Nothing Then
        '    If HttpContext.Current.User.Identity.IsAuthenticated Then
        '        If TypeOf HttpContext.Current.User.Identity Is FormsIdentity Then
        '            ' Get Forms Identity From Current User 
        '            Dim id As FormsIdentity = DirectCast(HttpContext.Current.User.Identity, FormsIdentity)
        '            ' Get Forms Ticket From Identity object 
        '            Dim ticket As FormsAuthenticationTicket = id.Ticket
        '            ' Retrieve stored user-data (our roles from db) 
        '            Dim userData As String = ticket.UserData
        '            Dim roles As String() = userData.Split(","c)
        '            ' Create a new Generic Principal Instance and assign to Current User 
        '            HttpContext.Current.User = New GenericPrincipal(id, roles)
        '        End If
        '    End If
        'End If

        If HttpContext.Current.User IsNot Nothing Then
            If HttpContext.Current.User.Identity.IsAuthenticated Then
                If TypeOf HttpContext.Current.User.Identity Is FormsIdentity Then
                    Dim id As FormsIdentity = DirectCast(HttpContext.Current.User.Identity, FormsIdentity)
                    Dim ticket As FormsAuthenticationTicket = (id.Ticket)
                    If Not FormsAuthentication.CookiesSupported Then
                        'If cookie is not supported for forms authentication, then the
                        'authentication ticket is stored in the URL, which is encrypted.
                        'So, decrypt it
                        ticket = FormsAuthentication.Decrypt(id.Ticket.Name)
                    End If
                    ' Get the stored user-data, in this case, user roles
                    If Not String.IsNullOrEmpty(ticket.UserData) Then
                        Dim userData As String = ticket.UserData
                        Dim roles As String() = userData.Split(","c)
                        'Roles were put in the UserData property in the authentication ticket
                        'while creating it
                        HttpContext.Current.User = New System.Security.Principal.GenericPrincipal(id, roles)
                    End If
                End If
            End If
        End If





    End Sub


    Protected Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)

    End Sub

    Protected Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)

    End Sub

    Protected Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)

    End Sub

#Region "Web Form Designer generated code"
    ''' <summary> 
    ''' Required method for Designer support - do not modify 
    ''' the contents of this method with the code editor. 
    ''' </summary> 
    ''' 

    Private Sub InitializeComponent()
    End Sub
#End Region
End Class