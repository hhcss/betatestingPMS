<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="forgot-password.ascx.vb" Inherits="betatesting.pms_forgot_password" %>
 <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
          
    <asp:Panel ID="Panel1" runat="server">
      
    <div class="col-sm-12 col-xs-12 col-md-12">
      <h2 class="title"><br><br> Forgot Password ? Help</h2>
    </div>
    
    <div class="col-sm-12 col-xs-12 col-md-12">
    
    Don’t worry!<strong> Just enter the email id with which you registered on Kimshospitals.com, then click Submit.</strong><br /><br />
Your password will be sent to the email id entered below. So please enter the correct email id
   
    </div>
  
    <div class="col-sm-12 col-xs-12 col-md-12">
        <asp:TextBox ID="txtempid" placeholder="Enter Your Employee Id" runat="server"></asp:TextBox>
            		
            	
        
        	<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="VG"
            ControlToValidate="TxtEmailId" Display="None" ErrorMessage="Email Id Required!"></asp:RequiredFieldValidator>
            
            <br>
        <asp:Button ID="btnsave" runat="server" Text="SUBMIT"  ValidationGroup="VG" class="btn btn-sign-in no-icon" />
        
        	
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            		ShowMessageBox="True" ShowSummary="False" />
                          
              </div>     

    <div class="col-sm-12 col-xs-12 col-md-12">
                <p>Has your e-mail address changed? If you've forgotten your password and no longer use the e-mail address associated with your futurebazaar.com account, 
you may click on create a new futurebazaar.com account link below.   </p>
 

                    
            </div>


    <div class="col-sm-12 col-xs-12 col-md-12">
              
                   <p> <asp:HyperLink ID="HyperLink1" runat="server" CssClass="lnkfont" 
                        NavigateUrl="~/privilege-card/register/">Create a new KIMS Privilege Account</asp:HyperLink></p>
             
            </div>

    </asp:Panel>

       


 <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#6D7192" Text="We have emailed your password to the email id you provided.
" Visible="False">



 </asp:Label>
   
