<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/user-inner.Master" CodeBehind="list.aspx.vb" Inherits="betatesting.list" %>

<%@ Register Src="~/pms/user/ascx/Doctors.ascx" TagPrefix="uc1" TagName="Doctors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Doctors runat="server" id="Doctors" />
</asp:Content>
