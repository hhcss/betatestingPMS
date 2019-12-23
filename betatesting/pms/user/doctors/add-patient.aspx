<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/user-inner.master" CodeBehind="add-patient.aspx.vb" Inherits="betatesting.add_patient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:Label ID="lbldoctorid" runat="server" Text="" Visible="false" ></asp:Label>
<div>
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

<%--<div>Password</div>
<div> <asp:TextBox ID="txtpassword" runat="server" placeholder=""></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator6" Display="None" runat="server" ControlToValidate="txtpassword"
          ValidationGroup="vgdoctoradd" ErrorMessage="Enter FirstName"></asp:RequiredFieldValidator>
</div>--%>
      <div>Patient Type</div>
      <div>
    <asp:DropDownList ID="ddlPatientType" runat="server" AppendDataBoundItems="true" AutoPostBack="true"></asp:DropDownList>
<asp:RequiredFieldValidator ID="RequiredFieldValidator9" Display="None" runat="server" ControlToValidate="ddlPatientType"
          ValidationGroup="vgdoctoradd" ErrorMessage="select ptype"></asp:RequiredFieldValidator>
</div>




      <div>Indications</div>
<div> <asp:TextBox ID="txtindications" runat="server" placeholder=""></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator6" Display="None" runat="server" ControlToValidate="txtindications"
          ValidationGroup="vgdoctoradd" ErrorMessage="Enter FirstName"></asp:RequiredFieldValidator>
</div>
      
                            <div >
                                
                                
                                
                                <asp:TextBox ID="txtadress" runat="server" Rows="2" TextMode="MultiLine" Columns="25" Text="Type Adress" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RFVComments" runat="server" ControlToValidate="txtadress" Display="None" ValidationGroup="VGEnquiry2single" ErrorMessage="Enter Adress" ></asp:RequiredFieldValidator></div>
        
        <div class="clearfix"></div>



       <asp:DropDownList ID="ddlstockist" runat="server" AutoPostBack="true" AppendDataBoundItems="true" SelectionMode="Multiple" cssclass="test-stock" >
                                                           <asp:ListItem Value="">Select Stockist</asp:ListItem> </asp:DropDownList>



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



    
   
</div>

</asp:Content>
