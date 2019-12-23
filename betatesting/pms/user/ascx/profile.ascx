<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="profile.ascx.vb" Inherits="betatesting.profile" %>
<asp:Label ID="lblempid" runat="server" Text="" Visible="false"></asp:Label>
<asp:Label ID="lblstatus" runat="server" Text="" Visible="false"></asp:Label>

<asp:Repeater ID="rpthhc" runat="server">
    <ItemTemplate>

       <div>

           Fs Code : <%# Eval("FSCODE")%>
      


        </div>
        <div>
       Employee Name :  <%# Eval("NAMEPREFIX")%> . <%# Eval("EmpName")%>

        </div>    
        </br>
       
        <div>
       Employee Code :  <%# Eval("empcode")%>  

        </div>    
        </br>
        <div>
    Designation :     <%# Eval("NTYPE")%>   

        </div>    
        </br>

         <div>
     Mobile :     <%# Eval("MobileNo")%>   

        </div>    
        </br>
      
      
        <div>
         Area :  <%# Eval("city")%>   

        </div>    
        </br>
        <div>




         Region :  <%# Eval("state")%> 

        </div>    
        </br>
        <div>
        Zone :   <%# Eval("zone")%>  

        </div>    
        </br>
        <div>
          Division : <%# Eval("Division")%>   

        </div>    
        </br>
        
        <div>


      F2 :   <%# Eval("f2")%>   

        </div>    
        </br>
        <div>
      F3:  <%# Eval("f3")%>  

        </div>    
        </br>
        <div>
     F4:   <%# Eval("f4")%>

        </div>    
        </br>
        <div>
      F5:  <%# Eval("f5")%>  

        </div>    
        </br>
        <div>
      F6:  <%# Eval("f6")%>  

        </div>    
        </br>
        <div>
       F7: <%# Eval("f7")%>  

        </div>    
        </br>
        <div>
      F8:  <%# Eval("f8")%>  

        </div>    
        </br>
        <div>
      F9:  <%# Eval("f9")%>  

        </div>    
        </br>
        <div>
      F10:  <%# Eval("f10")%>  

        </div>    
        </br>
        <div>
     F11:   <%# Eval("f11")%> 

        </div>    
        </br>
        <div>
      F12:  <%# Eval("f12")%>  

        </div>    
        </br>
        <div>
      F13:  <%# Eval("f13")%> 

        </div>    
        </br>
        <div>
      F14:  <%# Eval("f14")%>  

        </div>    
        </br>
        <div>
     F15:   <%# Eval("f15")%>  

        </div>    
        </br>
        <div>
       
        
     
    </ItemTemplate>
</asp:Repeater>
 


<asp:Repeater ID="rptpms" runat="server">


     <ItemTemplate>
         <%# Eval("Firstname")%>  </br>
          <%# Eval("Lastname")%>  </br>
          <%# Eval("Mobile")%>  </br>
         <%# Eval("empid")%>  </br>
        
          <%# Eval("OfficialEmailId")%>  </br>
     

    </ItemTemplate>
</asp:Repeater>
