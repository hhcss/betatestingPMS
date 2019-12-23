<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/user-inner.master" CodeBehind="doctor-patient-procedure.aspx.vb" Inherits="betatesting.doctor_patient_procedure" %>

  <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="lblpatientid" runat="server" Text=""></asp:Label>


  
<div>
      <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
  <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <link href="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/css/bootstrap-multiselect.css"
        rel="stylesheet" type="text/css" />
    <script src="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/js/bootstrap-multiselect.js"
        type="text/javascript"></script>
  


    <div class="col-md-12">

        <asp:Repeater ID="rptpatient" runat="server">


            <ItemTemplate>
<div class="row">
<div class="col-md-6 col-sm-6 col-xs-12">

<div class="col-md-12" style="padding: 5px; background: #eee;">
<div class="row">
<div class="col-md-6 col-sm-6 col-xs-12">First Name</div>
<div class="col-md-6 col-sm-6 col-xs-12"><%# Eval("firstname")%></div>
</div>
</div>

<div class="col-md-12" style="padding: 5px; background: #ccc;">
<div class="row">
<div class="col-md-6 col-sm-6 col-xs-12">Last Name</div>
<div class="col-md-6 col-sm-6 col-xs-12"><%# Eval("lastname")%></div>
</div>
</div>

<div class="col-md-12" style="padding: 5px; background: #eee;">
<div class="row">
<div class="col-md-6 col-sm-6 col-xs-12">Email Id</div>
<div class="col-md-6 col-sm-6 col-xs-12"><%# Eval("emailid")%></div>
</div>
</div>


<div class="col-md-12" style="padding: 5px; background: #ccc;">
<div class="row">
<div class="col-md-6 col-sm-6 col-xs-12">Mobile No.</div>
<div class="col-md-6 col-sm-6 col-xs-12"><%# Eval("telephone")%></div>
</div>
</div>


        </div>     
            </div>     
            </ItemTemplate>
        </asp:Repeater>
    </div>

 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
  <ContentTemplate>
      <h4> Add Patient</h4>
     <div>Medicine</div>

<div>


     <div >
                        
                                 
    <asp:ListBox ID="lbproducts" runat="server" data-placeholder="select product" SelectionMode="Multiple" cssclass="test1" AppendDataBoundItems="true">
                                                                 <asp:ListItem Value="ALL">ALL</asp:ListItem>
                                                            </asp:ListBox>
</div>
  
</div>

      </div>
  <div>No Cycles</div>
<div> <asp:TextBox ID="txtcycles" runat="server" placeholder=""></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="None" runat="server" ControlToValidate="txtcycles"
          ValidationGroup="vgdoctoradd" ErrorMessage="Enter Cycle"></asp:RequiredFieldValidator>
</div>

<div>Free Cycle Number</div>
<div> <asp:TextBox ID="txtfree" runat="server" placeholder=""></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="None" runat="server" ControlToValidate="txtcycles"
          ValidationGroup="vgdoctoradd" ErrorMessage="Enter Free Cycle Number"></asp:RequiredFieldValidator>
</div>

        <div>Cycle Interval</div>
<div> <asp:TextBox ID="txtinterval" runat="server" placeholder=""></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="None" runat="server" ControlToValidate="txtinterval"
          ValidationGroup="vgdoctoradd" ErrorMessage="Enter FirstName"></asp:RequiredFieldValidator>
</div>

      <div>
          Start Date
      </div>

     <div >       
         
         <asp:TextBox ID="TxtFromDate1" runat="server" cssClass="form-control input-sm"></asp:TextBox>
                                                            </div>
<div>
    <asp:Button ID="btnsubmit" runat="server" Text="ADD" ValidationGroup="vgdoctoradd" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" 
        ValidationGroup="vgdoctoradd" />
</div>
<div>
    <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
</div>
      </ContentTemplate>
  </asp:UpdatePanel>



</div>

<asp:GridView ID="GridView1" runat="server">


</asp:GridView>


</asp:Content>
