<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="profile.ascx.vb" Inherits="betatesting.profile1" %>


<asp:Repeater ID="rptdoctorprofile" runat="server">


     <ItemTemplate>
         <%# Eval("DocCode")%>  </br>
          <%# Eval("DocName")%>  </br>
          <%# Eval("Qualification")%>  </br>
        

    </ItemTemplate>
</asp:Repeater>
