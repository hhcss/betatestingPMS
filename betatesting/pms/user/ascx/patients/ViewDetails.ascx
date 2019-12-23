<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ViewDetails.ascx.vb" Inherits="betatesting.ViewDetails1" %>
<asp:Repeater ID="rptpatient" runat="server">

    <ItemTemplate>
        <div> First Name</div>
        <div>     <%# Eval("FirstName")%> </div>
         <div>LastName</div>
        <div>  <%# Eval("LastName")%> </div>
        <div>EmailID</div>
        <div> <%# Eval("EmailId")%> </div>
         <div>Telephone</div>
        <div> <%# Eval("Telephone")%> </div>
        <div>Password</div>
        <div><%#Eval("Password") %></div>
        <div>HospitalId</div>
        <div><%# Eval("HospitalId")%></div>
        <div>BranchId</div>
        <div><%#Eval("BranchId") %></div>
        <div>DoctorId</div>
        <div><%#Eval("DoctorId") %></div>
        <div> Status</div>
        <div>  <%# Eval("Status")%></div>
       <div> Created On</div>
        <div>   <%# Eval("CreatedOn")%> </div>
     
     
    </ItemTemplate>
</asp:Repeater>