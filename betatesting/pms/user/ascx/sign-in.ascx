<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="sign-in.ascx.vb" Inherits="betatesting.pms_sign_in" %>
  <asp:Label ID="LblMsg" runat="server" Font-Bold="True" 
        Font-Size="Medium">



         </asp:Label>


<asp:TextBox ID="txtempid" runat="server" placeholder="Enter Employee Id" CssClass="form-control"></asp:TextBox>

 <asp:TextBox ID="txtpassword" type="password" runat="server" placeholder="Enter password" CssClass="form-control"></asp:TextBox>


<asp:Button ID="btnsubmit" runat="server" Text="SIGN IN" style="background-color: #03abd4; color:#fff;width: 100px; height: 35px; font-family: 'allerregular'; margin-right:5px; border:1px solid #ccc;" />
<asp:Button ID="btncancel" runat="server" Text="Cancel" style="background-color: #03abd4; color:#fff;width: 100px; height: 35px; font-family: 'allerregular'; margin-right:5px; border:1px solid #ccc;" />
  
      	
    