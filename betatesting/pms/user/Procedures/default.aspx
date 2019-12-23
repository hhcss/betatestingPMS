<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/user-inner.master" CodeBehind="default.aspx.vb" Inherits="betatesting._default5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
<asp:GridView ID="GridView1" runat="server">
     <Columns>

          <asp:TemplateField ShowHeader="False">
<ItemTemplate>
<a href='/pms/user/procedures/<%# Eval("id")%>'  target="_blank">Track Record</a> &nbsp;
</ItemTemplate>
</asp:TemplateField>
                </Columns>

</asp:GridView>


</asp:Content>
