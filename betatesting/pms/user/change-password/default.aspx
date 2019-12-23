<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/user-inner.master" CodeBehind="default.aspx.vb" Inherits="betatesting._default4" %>

<%@ Register Src="~/pms/user/ascx/change-password.ascx" TagPrefix="uc1" TagName="changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:changepassword runat="server" id="changepassword" />
</asp:Content>
