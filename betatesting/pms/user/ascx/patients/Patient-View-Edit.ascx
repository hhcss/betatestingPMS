<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="Patient-View-Edit.ascx.vb" Inherits="betatesting.Patient_View_Edit" %>
<asp:GridView ID="GridView1" runat="server"  ForeColor="Black" BorderStyle="Solid" 
                                BorderColor="#404040" AutoGenerateColumns="False" DataKeyNames="Id" 
                                AllowPaging="True" PageSize="1000">
                                <RowStyle CssClass="GridRowStyle" />
                                <AlternatingRowStyle CssClass="GridAlternateRowStyle" />
                                <HeaderStyle CssClass="GridHeaderStyle" />
        <Columns>
              <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/ADMIN-pms/NADMIN/CMS/Patients/patientdetails.aspx?patientid={0}"
                Text="View Details" />
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/ADMIN-pms/NADMIN/CMS/Patients/manage_patients.aspx?patientid={0}"
                Text="Edit" />
              <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/ADMIN-pms/NADMIN/CMS/Patients/procedure.aspx?patientid={0}"
                Text="View Procedures" />
              <asp:TemplateField ShowHeader="False" HeaderText="ModifyStatus">
                        <ItemTemplate>
                            <asp:LinkButton ID="LnkBtnActiveStatus" runat="server" CausesValidation="false" 
                                CommandName="CmdActive" Text='<%# Eval("Status") %>' ></asp:LinkButton>
                            <asp:LinkButton ID="LnkBtnDelete" runat="server" CausesValidation="false" 
                                    CommandName="CmdDelete" CommandArgument='<%# Eval("Id") %>'
                                    onclientclick="return confirm('Are You Sure You Want To Delete');" 
                                    Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>

            <asp:BoundField DataField="Status" HeaderText="ActiveStatus" />
            <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" SortExpression="Id" Visible="False" />
            <asp:BoundField DataField="firstname" HeaderText="PatientName" SortExpression="NAME" />
             

            

        </Columns>
      </asp:GridView>