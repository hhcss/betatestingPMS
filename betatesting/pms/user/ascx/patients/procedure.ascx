<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="procedure.ascx.vb" Inherits="betatesting.procedure1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
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

<div class="col-md-12" style="padding: 5px; background: #eee;">
<div class="row">
<div class="col-md-6 col-sm-6 col-xs-12">Date & Time</div>
<div class="col-md-6 col-sm-6 col-xs-12"><%# Eval("createdon")%></div>
</div></div>

<div class="col-md-12" style="padding: 5px; background: #eee;">
<div class="row">
<div class="col-md-6 col-sm-6 col-xs-12">Hospital Name</div>
<div class="col-md-6 col-sm-6 col-xs-12"><%# Eval("hospitalname")%></div>
</div></div>
</div>
<div class="col-md-6 col-sm-6 col-xs-12">
<div class="col-md-12" style="padding: 5px; background: #ccc;">
<div class="row">
<div class="col-md-6 col-sm-6 col-xs-12">Branch Name</div>
<div class="col-md-6 col-sm-6 col-xs-12"><%# Eval("branchname")%></div>
</div>
</div>

<div class="col-md-12" style="padding: 5px; background: #eee;">
<div class="row">
<div class="col-md-6 col-sm-6 col-xs-12">Doctor Name</div>
<div class="col-md-6 col-sm-6 col-xs-12"><%# Eval("doctorname")%></div>
</div></div>

<div class="col-md-12" style="padding: 5px; background: #ccc;">
<div class="row">
<div class="col-md-6 col-sm-6 col-xs-12">Country Name</div>
<div class="col-md-6 col-sm-6 col-xs-12"><%# Eval("countryname")%></div>
</div></div>

<div class="col-md-12" style="padding: 5px; background: #eee;">
<div class="row">
<div class="col-md-6 col-sm-6 col-xs-12">State Name</div>
<div class="col-md-6 col-sm-6 col-xs-12"><%# Eval("statename")%></div>
</div></div>

<div class="col-md-12" style="padding: 5px; background: #ccc;">
<div class="row">
<div class="col-md-6 col-sm-6 col-xs-12">City Name</div>
<div class="col-md-6 col-sm-6 col-xs-12"><%# Eval("cityname")%></div>
</div></div>

<div class="col-md-12" style="padding: 5px; background: #eee;">
<div class="row">
<div class="col-md-6 col-sm-6 col-xs-12">Type Name</div>
<div class="col-md-6 col-sm-6 col-xs-12"><%# Eval("typename")%></div>
</div></div>
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


     <div class="col-md-12" style="margin-bottom:8px;">
                                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-8" style="margin-bottom:15px;">
                                 <script type="text/javascript">
                                     $(function () {
                                         $('[id*=lbmedicine]').multiselect({
                                             includeSelectAllOption: true
                                         });
                                     });
    </script>
           <asp:ListBox ID="lbmedicine" runat="server" SelectionMode="Multiple" style="overflow-y:scroll; height:200px;">
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

      <div>

          <asp:TextBox ID="TxtDate" runat="server"></asp:TextBox>
      <asp:ImageButton id="Image1" runat="Server" ImageUrl="~/images/Calendar_scheduleHS.png"
           AlternateText="Click to show calendar" CausesValidation="False"></asp:ImageButton>
        <asp:RequiredFieldValidator ID="RFVDate" runat="server" 
            ControlToValidate="TxtDate" Display="None" ErrorMessage="Enter Start Date" 
            ValidationGroup="vgdoctoradd"></asp:RequiredFieldValidator>
        <BR /><cc1:calendarextender id="CalendarExtender1" runat="server" PopupButtonID="Image1" TargetControlID="TxtDate"></cc1:calendarextender>
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



</div>

<asp:GridView ID="GridView1" runat="server"></asp:GridView>

