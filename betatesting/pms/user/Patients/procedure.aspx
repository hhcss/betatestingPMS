<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin-Pms/adminbasepage.Master" CodeBehind="procedure.aspx.vb" Inherits="betatesting.procedure" %>

<%@ Register Src="~/Ascx-Pms/Admins/Patients/procedure.ascx" TagPrefix="uc1" TagName="procedure" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:procedure runat="server" ID="procedure" />
</asp:Content>
