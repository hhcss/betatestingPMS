<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/user-inner.Master" CodeBehind="Registration.aspx.vb" Inherits="betatesting.Registration1" %>

<%@ Register Src="~/Pms/user/ascx/Patients/Registration.ascx" TagPrefix="uc1" TagName="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Registration runat="server" id="Registration1" />
</asp:Content>
