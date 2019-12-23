<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="register.ascx.vb" Inherits="betatesting.pms_register" %>
<div class="col-sm-12 col-xs-12 col-md-12">  
 <h2 class="title"><br><br>Register</h2> 
  </div>
  
 <div class="col-sm-12 col-xs-12 col-md-12"><asp:Label ID="LblMsg" runat="server" Text=""></asp:Label></div>
 
<div class="col-sm-12 col-xs-12 col-md-12">
    <asp:TextBox ID="txtEmailId" name="txtEmailId" runat="server" placeholder="Email Id" class="button-sign" >


    </asp:TextBox>
                 
        <asp:RegularExpressionValidator ID="REVEmailId" runat="server" 
                    ControlToValidate="txtEmailId" Display="None" 
                    ErrorMessage="Invalid Email ID" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vgpmsregister"> </asp:RegularExpressionValidator>

</div>    
    
    
 <div class="col-sm-12 col-xs-12 col-md-12">
  <asp:TextBox ID="txtfirstname" placeholder="First Name" runat="server" class="button-sign"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RFVName" runat="server" 
                        ControlToValidate="txtfirstname" ErrorMessage="Enter  First Name" 
                        Display="None" ValidationGroup="vgpmsregister" > </asp:RequiredFieldValidator>


</div>

<div class="col-sm-12 col-xs-12 col-md-12">
                      <asp:TextBox ID="txtlastname" placeholder="Last Name" runat="server" class="button-sign"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtlastname" ErrorMessage="Enter Last Name" 
                        Display="None" ValidationGroup="vgpmsregister" > </asp:RequiredFieldValidator>
   
</div>   
                  

 <div class="col-sm-12 col-xs-12 col-md-12">
<asp:TextBox ID="txtmobilenumber"  placeholder="MOBILE" runat="server" class="button-sign"></asp:TextBox>
<asp:RequiredFieldValidator ID="RFVTelephone" runat="server" Display="None"  
 ErrorMessage="Enter Telephone Number" ControlToValidate="txtmobilenumber" ValidationGroup="vgpmsregister" ></asp:RequiredFieldValidator>

</div> 


 <div class="col-sm-12 col-xs-12 col-md-12">
<asp:TextBox ID="txtempid"  placeholder="EMP CODE" runat="server" class="button-sign"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="None" 
     ErrorMessage="Enter Employee Code" ControlToValidate="txtempid" ValidationGroup="vgpmsregister" ></asp:RequiredFieldValidator>

</div> 



 <div class="col-sm-12 col-xs-12 col-md-12">
<asp:TextBox ID="txtpassword"  placeholder="Password" runat="server" class="button-sign" type="password"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="None"  
ErrorMessage="Enter Telephone Number" ControlToValidate="txtmobilenumber" ValidationGroup="vgpmsregister" ></asp:RequiredFieldValidator>

</div> 



 <div class="col-sm-12 col-xs-12 col-md-12">
<asp:TextBox ID="txtconfirmpassword"  placeholder="Confirm Password" runat="server" class="button-sign" type="password"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="None"  
    ErrorMessage="Enter Telephone Number" ControlToValidate="txtmobilenumber" ValidationGroup="vgpmsregister" ></asp:RequiredFieldValidator>

</div> 


  
 
 
 
 <div class="col-sm-12 col-xs-12 col-md-12">
     <asp:Button ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="vgpmsregister" class="btn btn-sign-in no-icon"/>
                    <asp:Button ID="BtnCancel" runat="server" Text="Cancel" class="btn btn-sign-in no-icon" Visible="false" /> 
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="vgpmsregister" />
     

  </div>