<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin-Pms/adminbasepage.Master" CodeBehind="View-Edit-Patients.aspx.vb" Inherits="betatesting.View_Edit_Patients" %>

<%@ Register Src="~/Ascx-Pms/Admins/Patients/Patient-View-Edit.ascx" TagPrefix="uc1" TagName="PatientViewEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:PatientViewEdit runat="server" id="PatientViewEdit" />
</asp:Content>
