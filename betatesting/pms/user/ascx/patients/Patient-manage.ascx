<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="Patient-manage.ascx.vb" Inherits="betatesting.Patient_manage" %>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
  <ContentTemplate>
      <h4> Add Patient</h4>
     <div>First Name</div>
<div> <asp:TextBox ID="txtFirstName" runat="server" placeholder=""></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="None" runat="server" ControlToValidate="txtFirstName"
          ValidationGroup="vgdoctoradd" ErrorMessage="Enter FirstName"></asp:RequiredFieldValidator>
</div>
<div>Last Name</div>
<div> <asp:TextBox ID="txtLastName" runat="server" placeholder=""></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="None" runat="server" ControlToValidate="txtLastName"
          ValidationGroup="vgdoctoradd" ErrorMessage="Enter FirstName"></asp:RequiredFieldValidator>
</div>
<div>EmailId</div>
<div> <asp:TextBox ID="txtEmailId" runat="server" placeholder=""></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="None" runat="server" ControlToValidate="txtEmailId"
          ValidationGroup="vgdoctoradd" ErrorMessage="Enter FirstName"></asp:RequiredFieldValidator>
</div>
<div>Telephone</div>
<div> <asp:TextBox ID="txtTelephone" runat="server" placeholder=""></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="None" runat="server" ControlToValidate="txtTelephone"
          ValidationGroup="vgdoctoradd" ErrorMessage="Enter FirstName"></asp:RequiredFieldValidator>
</div>

<div>Password</div>
<div> <asp:TextBox ID="txtpassword" runat="server" placeholder=""></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator6" Display="None" runat="server" ControlToValidate="txtpassword"
          ValidationGroup="vgdoctoradd" ErrorMessage="Enter FirstName"></asp:RequiredFieldValidator>
    <br />
</div>
      <div>PatientType</div>
<div>
    <asp:DropDownList ID="ddlusertype" runat="server" AppendDataBoundItems="true" AutoPostBack="true"></asp:DropDownList>
<asp:RequiredFieldValidator ID="RequiredFieldValidator9" Display="None" runat="server" ControlToValidate="ddlusertype"
          ValidationGroup="vgdoctoradd" ErrorMessage="Enter FirstName"></asp:RequiredFieldValidator>
</div>
<div>Hospital</div>
<div>
    <asp:DropDownList ID="ddlhospital" runat="server" AppendDataBoundItems="true" AutoPostBack="true"></asp:DropDownList>
<asp:RequiredFieldValidator ID="RequiredFieldValidator7" Display="None" runat="server" ControlToValidate="ddlhospital"
          ValidationGroup="vgdoctoradd" ErrorMessage="Enter FirstName"></asp:RequiredFieldValidator>
</div>
<div>Branch Name</div>
<div> 
     <asp:DropDownList ID="ddlbranch" runat="server" AppendDataBoundItems="true" AutoPostBack="true"></asp:DropDownList>
<asp:RequiredFieldValidator ID="RequiredFieldValidator8" Display="None" runat="server" ControlToValidate="ddlbranch"
          ValidationGroup="vgdoctoradd" ErrorMessage="Enter FirstName"></asp:RequiredFieldValidator>
</div>
<div>Doctor</div>
<div> 
     <asp:DropDownList ID="ddldoctor" runat="server" AppendDataBoundItems="true" AutoPostBack="true"></asp:DropDownList>
<asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="None" runat="server" ControlToValidate="ddldoctor"
          ValidationGroup="vgdoctoradd" ErrorMessage="Enter FirstName"></asp:RequiredFieldValidator>
</div>
<div>
    <asp:Button ID="btnsubmit" runat="server" Text="SAVE" ValidationGroup="vgdoctoradd" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" 
        ValidationGroup="vgdoctoradd" />
</div>
<div>
    <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
</div>
      </ContentTemplate>
  </asp:UpdatePanel>