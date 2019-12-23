<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/user-home.Master" CodeBehind="default.aspx.vb" Inherits="betatesting._default" %>

<%@ Register Src="~/pms/user/ascx/register.ascx" TagPrefix="uc1" TagName="pmsregister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <uc1:pmsregister runat="server" id="pmsregister" />

</asp:Content>
