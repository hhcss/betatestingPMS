<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/user-home.Master" CodeBehind="default.aspx.vb" Inherits="betatesting._default1" %>

<%@ Register Src="~/pms/user/ascx/sign-in.ascx" TagPrefix="uc1" TagName="pmssignin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:pmssignin runat="server" id="pmssignin" />
</asp:Content>
<h4>a</h4>