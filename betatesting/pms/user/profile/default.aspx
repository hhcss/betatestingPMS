<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/user-inner.master" CodeBehind="default.aspx.vb" Inherits="betatesting._default3" %>

<%@ Register Src="~/pms/user/ascx/profile.ascx" TagPrefix="uc1" TagName="profile1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:profile1 runat="server" id="profile1" />
</asp:Content>
