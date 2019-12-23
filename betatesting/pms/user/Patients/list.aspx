<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/user-inner.master" CodeBehind="list.aspx.vb" Inherits="betatesting.list1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 

<asp:Repeater ID="rptpatients" runat="server">


     <ItemTemplate>
         <%# Eval("FirstName")%>  </br>
          <%# Eval("LastName")%>  </br>



        <%--     db table colums    ,[EmailID]
      ,[Telephone]
      ,[Password]
      ,[PatientType]
      ,[indications]
      ,[DoctorId]
      ,[CreatedOn]
      ,[STATUS]
      ,[Adress]
      ,[stockistsapid]
      ,[Empcode]--%>



        
     
         <div ><a href='/pms/user/patient-details-<%# Eval("ID")%>' >View Details</a></div>

         <div ><a href='/pms/user/manage-patient-<%# Eval("ID")%>' >Edit Patient</a></div>

         <div ><a href='/pms/user/patient-procedure-<%# Eval("ID")%>' >View Procedure(S)</a></div>
    </ItemTemplate>
</asp:Repeater>



</asp:Content>
