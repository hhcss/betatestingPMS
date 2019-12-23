<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/user-home.Master" CodeBehind="default.aspx.vb" Inherits="betatesting._default2" %>

<%@ Register Src="~/pms/user/ascx/forgot-password.ascx" TagPrefix="uc1" TagName="forgotpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:forgotpassword runat="server" ID="forgotpassword" />
</asp:Content>
