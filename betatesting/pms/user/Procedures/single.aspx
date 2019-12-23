<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/user-inner.master" CodeBehind="single.aspx.vb" Inherits="betatesting._single" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="lblid" runat="server" Text="" Visible="false"></asp:Label>

    <asp:Label ID="lblpatientid" runat="server" Text="" Visible="false"></asp:Label>
    
<div class="col-md-12"><center><h3>procedures Tracking</h3></center></div>


<div class="col-md-12 overflow" runat="server" >

<div class="col-md-12 form-border"> 

<div class="col-md-12 margin-padding">

<div class="form-bg">
<h3>Attender's Details</h3>
</div>
</div>

<div class="col-md-12 margin-padding"> 



<div class="col-md-4 text-bg-b">
<div class="col-md-12 text-bg1">
<p><asp:TextBox ID="txtfirstname" runat="server" placeholder="Enter First Name" class="form-control2"></asp:TextBox></p>
</div>
</div>


<div class="col-md-4 text-bg-b">
<div class="col-md-12 text-bg1">
<p><asp:TextBox ID="txtlastname" runat="server"  placeholder="Enter Last Name" class="form-control2"></asp:TextBox></p>
</div>
</div>


<div class="col-md-4 text-bg-b">
<div class="col-md-12 text-bg1">
<p><asp:TextBox ID="txtemailid" runat="server"  placeholder="Enter Email Id" class="form-control2"></asp:TextBox></p>
</div>
</div>


<div class="col-md-4 text-bg-b">
<div class="col-md-12 text-bg1">
<p><asp:TextBox ID="txtphonenumber" runat="server"  placeholder="Enter Phone Number" class="form-control2"></asp:TextBox></asp:TextBox></p>
</div>
</div>



<div class="col-md-4 text-bg-b">
<div class="col-md-12 text-bg1">
<p><asp:TextBox ID="txtrelation" runat="server"  placeholder="Enter Relation To Patient" class="form-control2"></asp:TextBox></p>
</div>
</div>

<div class="col-md-12 margin-padding">
  <center><asp:Button ID="btnattender" runat="server" Text="Save" Cssclass="submit-btn"/></center>
</div>



<asp:GridView ID="gvcity" runat="server"  ForeColor="Black" BorderStyle="Solid" 
                                BorderColor="#404040" AutoGenerateColumns="false"  DataKeyNames="id" >
                                <RowStyle CssClass="GridRowStyle" />
                                <AlternatingRowStyle CssClass="GridAlternateRowStyle" />
                                <HeaderStyle CssClass="GridHeaderStyle" />
            <Columns>

<asp:TemplateField ShowHeader="True" HeaderText="Id">
<ItemTemplate>
<asp:Label ID="lblattenderid" runat="server" Text='<%# Bind("id")%>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>


                <asp:TemplateField HeaderText="First Name" SortExpression="CITYNAME">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtfirstname" runat="server" CausesValidation="True" Text='<%# Bind("FirstName")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVCity1" runat="server" 
                                ControlToValidate="txtfirstname" Display="None" ErrorMessage="Enter First Name" 
                                ValidationGroup="VGEdit"></asp:RequiredFieldValidator>
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="VGEdit" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblCity1" runat="server" Text='<%# Bind("FirstName")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>


                <asp:TemplateField HeaderText="Last Name" SortExpression="CITYNAME">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtlastname" runat="server" CausesValidation="True" Text='<%# Bind("LastName")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVCity2" runat="server" 
                                ControlToValidate="txtlastname" Display="None" ErrorMessage="Enter Last Name" 
                                ValidationGroup="VGEdit"></asp:RequiredFieldValidator>
                            <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="VGEdit" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblCity2" runat="server" Text='<%# Bind("LastName")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                <asp:TemplateField HeaderText="Email" SortExpression="CITYNAME">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtemailid" runat="server" CausesValidation="True" Text='<%# Bind("EmailID")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVCity3" runat="server" 
                                ControlToValidate="txtfirstname" Display="None" ErrorMessage="Enter Email Id" 
                                ValidationGroup="VGEdit"></asp:RequiredFieldValidator>
                            <asp:ValidationSummary ID="ValidationSummary3" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="VGEdit" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblCity3" runat="server" Text='<%# Bind("EmailID")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone Number" SortExpression="CITYNAME">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtmblnumber" runat="server" CausesValidation="True" Text='<%# Bind("Telephone")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVCity4" runat="server" 
                                ControlToValidate="txtmblnumber" Display="None" ErrorMessage="Enter Mobile Number" 
                                ValidationGroup="VGEdit"></asp:RequiredFieldValidator>
                            <asp:ValidationSummary ID="ValidationSummary4" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="VGEdit" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblCity4" runat="server" Text='<%# Bind("Telephone")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>


         <asp:TemplateField HeaderText="Relation" SortExpression="CITYNAME">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtrelation" runat="server" CausesValidation="True" Text='<%# Bind("Adress")%>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFVCity5" runat="server" 
                                ControlToValidate="txtrelation" Display="None" ErrorMessage="Enter Relation" 
                                ValidationGroup="VGEdit"></asp:RequiredFieldValidator>
                            <asp:ValidationSummary ID="ValidationSummary5" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="VGEdit" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="LblCity5" runat="server" Text='<%# Bind("Adress")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>



             <asp:TemplateField ShowHeader="True" HeaderText="Edit">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LnkBtnUpdate" runat="server" 
                                CommandName="Update" Text="Update" onclick="LnkBtnUpdate_Click" 
                                ValidationGroup="VGEdit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                CommandName="Edit" Text="Edit" ></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>

              

               
                </Columns>
            </asp:GridView>



</div>
</div>

     

  


   
</div>







<!-- Primary Enquiry Details -->



    



     
    

    

<asp:Repeater ID="rptleads" runat="server">

        <ItemTemplate>

<div class="col-md-12 form-border"> 

<div class="col-md-12 margin-padding">
<div class="form-bg">
<h3>Appointment  Details</h3>
</div>
</div>


<div class="col-md-4 margin-padding"> 



<div class="col-md-12 text-bg-b">
<div class="col-md-12 text-bg">
<p>Name</p>
</div>
<div class="col-md-12 text-bg1">
<p><%# Eval("FirstName")%> <%# Eval("LastName")%></p>
</div>
</div>


<div class="col-md-12 text-bg-b">
<div class="col-md-12 text-bg">
<p>Doctor Name</p>
</div>
<div class="col-md-12 text-bg1">
<p><%# Eval("DocName")%>   <%# Eval("Qualification")%></p>
</div>
</div>





<div class="col-md-12 text-bg-b">
<div class="col-md-12 text-bg">
<p>Medicine</p>
</div>
<div class="col-md-12 text-bg1">
<p><%# Eval("medicinename")%></p>
</div>
</div>



</div>



<div class="col-md-4 margin-padding"> 


<div class="col-md-12 text-bg-b">
<div class="col-md-12 text-bg">
<p>Cycle No.</p>
</div>
<div class="col-md-12 text-bg1">
<p><%# Eval("cycle")%></p>
</div>
</div>


<div class="col-md-12 text-bg-b">
<div class="col-md-12 text-bg">
<p>Follow Up Date</p>
</div>
<div class="col-md-12 text-bg1">
<p><%# Eval("followup")%></p>
</div>
</div>


<div class="col-md-12 text-bg-b">
<div class="col-md-12 text-bg">
<p>Department</p>
</div>
<div class="col-md-12 text-bg1">
<p><%# Eval("Category")%></p>
</div>
</div>



</div>



<div class="col-md-4 margin-padding"> 



<div class="col-md-12 text-bg-b">
<div class="col-md-12 text-bg">
<p>Phone Number</p>
</div>
<div class="col-md-12 text-bg1">
<p><%# Eval("Telephone")%></p>
</div>
</div>


<div class="col-md-12 text-bg-b">
<div class="col-md-12 text-bg">
<p>Received Time</p>
</div>
<div class="col-md-12 text-bg1">
<p><%# Eval("startDate")%></p>
</div>
</div>



<div class="col-md-12 text-bg-b">
<div class="col-md-12 text-bg">
<p>Response Time TAT</p>
</div>
<div class="col-md-12 text-bg1">
<p></p>
</div>
</div>






</div>









</div>
        </ItemTemplate>
    </asp:Repeater>


<!-- Status Details-->

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>



<div class="col-md-12 form-border"> 

<div class="col-md-12 margin-padding">
<div class="form-bg">
<h3>Status Details</h3>
</div>
</div>


<div class="col-md-12">
 <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
</div>


<div class="col-md-12 margin-padding"> 


<div class="col-md-6 text-bg-b">
<div class="col-md-12 text-bg3">
<p>
             
              <asp:DropDownList ID="DDLstatus" CssClass="form-control2" runat="server"   AutoPostBack="true"   >
            <asp:ListItem Value="0">Select Status</asp:ListItem>
        </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RFVDoctor" runat="server" 
                  ErrorMessage="Please Select Status" ControlToValidate="DDLstatus" Display="None" 
                  InitialValue="0" ValidationGroup="Appointmentinner"></asp:RequiredFieldValidator>
</p>
</div>
</div>




<div class="col-md-6 text-bg-b">
<div class="col-md-12 text-bg3">
<p>
               <asp:DropDownList ID="ddltype" runat="server" CssClass="form-control2"   AutoPostBack="true"  onchange="showImage();" >
            <asp:ListItem Value="0">Status Type</asp:ListItem>
        </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                  ErrorMessage="Please Select Status" ControlToValidate="DDLstatus" Display="None" 
                  InitialValue="0" ValidationGroup="Appointmentinner"></asp:RequiredFieldValidator>
</p>
</div>
</div>




<div class="col-md-6 text-bg-b">
<div class="col-md-12 text-bg3">
<p>
<div id="sel1">
   <asp:DropDownList ID="ddlrating" runat="server" CssClass="form-control2"   AutoPostBack="true"  onchange="showImage();"  Visible="false" >
            <asp:ListItem Value="0">Select Rating</asp:ListItem>
                    <asp:ListItem Value="1">1</asp:ListItem>
                     <asp:ListItem Value="2">2</asp:ListItem>
                     <asp:ListItem Value="3">3</asp:ListItem>
                     <asp:ListItem Value="4">4</asp:ListItem>
                     <asp:ListItem Value="5">5</asp:ListItem>
                     

        </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                  ErrorMessage="Please Select Status" ControlToValidate="DDLstatus" Display="None" 
                  InitialValue="0" ValidationGroup="Appointmentinner"></asp:RequiredFieldValidator>
  </div>
</p>
</div>
</div>



<div class="col-md-6 text-bg-b">
<div class="col-md-12 text-bg2">
<p>
              <div id="omegatext" style="z-index:2;position:relative">
          
          <asp:TextBox id="txtdate" CssClass="form-control2" placeholder="Click to show calendar" runat="server"></asp:TextBox><asp:ImageButton id="ImgBtnFromDate" runat="Server" ImageUrl="~/images/Calendar_scheduleHS.png" AlternateText="Click to show calendar" CausesValidation="False"></asp:ImageButton><BR />
                        <cc1:CalendarExtender id="CEFromDate" runat="server" PopupButtonID="ImgBtnFromDate" TargetControlID="txtdate"></cc1:CalendarExtender>
                   
          
          </div>
</p>
</div>
</div>




<div class="col-md-12 text-bg-b">
<div class="col-md-12 text-bg2">
<p>
              <asp:TextBox ID="txtDescription" runat="server" placeholder="Please Enter Description" CssClass="form-control2"  TextMode="MultiLine" Rows="4" Columns="50"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RFVName" runat="server" 
                  ControlToValidate="txtDescription" Display="None" ErrorMessage="Please Enter Description" 
                  ValidationGroup="Appointmentinner"></asp:RequiredFieldValidator>
</p>
</div>
</div>


</div>

<div >
<h4 class="text-center"><br><asp:Label ID="LblMsg" runat="server" Text=""></asp:Label></h4>


     <asp:Button ID="btnconversation" runat="server" CssClass="submit-btn" Text="Submit"  ValidationGroup="Appointmentinner" />
    <asp:ValidationSummary ID="ValidationSummary2" runat="server" 
                          ShowMessageBox="True" ShowSummary="False" ValidationGroup="Appointmentinner" />
</div>

<div class="col-md-12">

<center> 
<center> 

             
      <%--   <asp:ImageButton ID="ImgBtnSubmit" runat="server" ImageUrl="~/images/btn_submit.jpg" ValidationGroup="Appointmentinner" />--%>
                      

</div>











<div > 

	   <asp:Repeater ID="rptconversation" runat="server">
			<itemtemplate>

<div > 


<div class="col-md-12 text-bg-b">
<div class="col-md-12 text-bg">
<p>STATUS</p>
</div>
<div >
<p><%# Eval("patientSTATUS")%></p>
</div>
</div>


<div >
<div >
<p>SUB-STATUS</p>
</div>
<div >
<p><%# Eval("patientSTATUSselection")%></p>
</div>
</div>


</div>

<div > 


<div >
<div >
<p>ENTRY DATE / TIME</p>
</div>
<div >
<p><%# Eval("createdon")%></p>
</div>
</div>


<div >
<div >
<p>TRACKING DATE</p>
</div>
<div >
<p><%# Eval("followupDate")%></p>
</div>
</div>


</div>

<div >


<div >
<div >
<p>MESSAGE</p>
</div>
<div >
<p><%# Eval("STATUS")%></p>
</div>
</div>



</div>

<div ><p><br></p></div>

              </itemtemplate> 
    </asp:Repeater>
	
<asp:Label ID="filename" runat="server" Text="" Visible="False"></asp:Label>
<asp:Label ID="fileId" runat="server" Text="" Visible="False"></asp:Label>
<asp:Label ID="LblGridDataSource" runat="server" Text="" Visible="False"></asp:Label>	
	
	

</div>


</div>



</ContentTemplate>
    </asp:UpdatePanel>






</asp:Content>
