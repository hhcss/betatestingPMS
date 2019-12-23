<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/user-inner.master" CodeBehind="doctor-patient-details.aspx.vb" Inherits="betatesting.doctor_patient_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="lblpatientid" runat="server" Text="" Visible="false" ></asp:Label>
    <asp:Repeater ID="rptpatient" runat="server">
          <ItemTemplate>
         <%# Eval("FirstName")%>  </br>
          <%# Eval("LastName")%>  </br>
                </ItemTemplate>
    </asp:Repeater>


   <div class="col-md-12 overflow">


        
    <div>

        Attender's Details
    </div>


    <asp:TextBox ID="txtfirstname" runat="server" placeholder="First Name"></asp:TextBox>

     <asp:TextBox ID="txtlastname" runat="server"  placeholder="Last Name"></asp:TextBox>

     <asp:TextBox ID="txtemailid" runat="server"  placeholder="Email Id"></asp:TextBox>

     <asp:TextBox ID="txtphonenumber" runat="server"  placeholder="Phone Number"></asp:TextBox>

     <asp:TextBox ID="txtrelation" runat="server"  placeholder="Relation To Patient"></asp:TextBox>


    <asp:Button ID="btnattender" runat="server" Text="Save" />




   <asp:GridView ID="gvcity" runat="server"  ForeColor="Black" BorderStyle="Solid" 
                                BorderColor="#404040" AutoGenerateColumns="false"  DataKeyNames="id" >
                                <RowStyle CssClass="GridRowStyle" />
                                <AlternatingRowStyle CssClass="GridAlternateRowStyle" />
                                <HeaderStyle CssClass="GridHeaderStyle" />
            <Columns>
             <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LnkBtnUpdate" runat="server" 
                                CommandName="Update" Text="Update" onclick="LnkBtnUpdate_Click" 
                                ValidationGroup="VGEdit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                CommandName="Edit" Text="Edit"></asp:LinkButton>
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

                <asp:TemplateField HeaderText="Email Id" SortExpression="CITYNAME">
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





              
                 <asp:TemplateField ShowHeader="False">
<ItemTemplate>
                 <asp:Label ID="lblattenderid" runat="server" Text='<%# Bind("id")%>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>
               
                </Columns>
            </asp:GridView>
</div>

</asp:Content>
