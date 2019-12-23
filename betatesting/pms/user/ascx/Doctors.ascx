<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="Doctors.ascx.vb" Inherits="betatesting.Doctors" %>



<asp:Repeater ID="rptdoctors" runat="server">


     <ItemTemplate>
	 <div class="col-md-3">
	 <div class="doc_card">
	<h3> <%# Eval("DocName")%>  </h3>
         <h5> <%# Eval("Qualification")%>  </h5>


        
     
         <div class="_btn"><a href='/pms/user/doctor-profile-<%# Eval("DocCode")%>' target="_blank">View Details</a></div>

         <div class="_btn"><a href='/pms/user/add-patient-doctor-<%# Eval("DocCode")%>' target="_blank">Add Patient</a></div>

         <div class="_btn"><a href='/pms/user/view-patients-doctor-<%# Eval("DocCode")%>' target="_blank">View Patient(S)</a></div>

    <%--       ,[Division]
      ,[RegionName]
      ,[EmpCode]
      ,[FsName]
      ,[FsCode]
      ,[FsHq]
      ,[DocCode]
      ,[DocName]
      ,[Qualification]
      ,[Grade]
      ,[Category]
      ,[MobileNo]
      ,[LandlineNo]
      ,[Subarea]
      ,[n_mcino]
      ,[ClinicOrHospitalName]
      ,[StreetName]
      ,[LandMark]
      ,[City]
      ,[State]
      ,[PIN]
      ,[C_HOUSE_NAME]
      ,[StreetName1]
      ,[Area1]
      ,[LandMark1]
      ,[City1]
      ,[State1]
      ,[PIN1]
      ,[ACTIVE]
      ,[CreatedOn]--%>




	 </div>
      </div>   
    </ItemTemplate>
</asp:Repeater>
