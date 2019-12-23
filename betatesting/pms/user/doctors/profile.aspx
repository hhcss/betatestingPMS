<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/user-inner.master" CodeBehind="profile.aspx.vb" Inherits="betatesting.doctor_profile" %>

<%@ Register Src="~/pms/user/ascx/doctors/profile.ascx" TagPrefix="uc1" TagName="profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:profile runat="server" ID="profile1" />
</asp:Content>
