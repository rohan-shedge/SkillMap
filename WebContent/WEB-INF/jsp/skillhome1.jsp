<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Skill Map</title>
</head>
<body style="height: 563px; " bgcolor="skyblue">
  	
   
<table border="1" cellpadding="1" cellspacing="1" width="100%" style="height: 23px; ">
<tr>
<th rowspan="7" >


	<table border="1" width="100%" >
	
	<tr>
	<td align="center" rowspan="5"> User Details </td>
	</tr>
<tr><td colspan="3"><center>${userme.name}</td></tr>

<tr>
		<td>${userme.empId}</td>
		<td>${userme.role}</td>

</tr>
<tr>
    <td>${userme.location}</td>
	<td>${userme.team}</td>
</tr>

<tr>
    <td>${userme.reelease}</td>
	<td>${userme.coreTrack}</td>
</tr>
</table>

</th>
<tr>
<td align="center" rowspan="7">  Average  </td>

</tr>
<tr>
<td>Domain</td>
<td>111 </td>
</tr>
<tr>
<td>Process</td>
<td>111</td>
</tr>
<tr>
<td>Telenet Knowledge </td>
<td>111</td>
</tr>
<tr>
<td>Tool Technology Avg</td>
<td>111</td>
</tr>
</table>

<!-- Main Table(You can define padding accordingly) -->
<table width="100%" border="1" cellspacing="0" cellpadding="5">
<tr>
<td width="33%">
 
<!-- Table on left side -->
<table width="90%" border="1" cellspacing="0" cellpadding="1">
<tr><td colspan="3"><center>Domain MCSI</td></tr>
<tr>
<td>EmpId</td>
<td>${userme.McsiDomain.empId}</td>



</tr>
<tr>
<td>SOIdbOrderProductsPromotions</td>
<td>${userme.McsiDomain.soidbOrderProductsPromotions}</td>

</tr>
<tr>
<td>OrderIntakeInstallOrders</td>
<td>${userme.McsiDomain.orderIntakeInstallOrders}</td>

</tr>
<tr>
<td>OrderIntakeChangeOrders</td>
<td>${userme.McsiDomain.orderIntakeChangeOrders}</td>

</tr>
<tr>
<td>MISC Cdm Services</td>
<td>${userme.McsiDomain.miscCdmServices}</td>

</tr>
<tr>
<td>RcoAddProduct</td>
<td>${userme.McsiDomain.rcoAddProduct}</td>

</tr>
<tr>
<td>RcoChangeProduct</td>
<td>${userme.McsiDomain.rcoChangeProduct}</td>

</tr>
<tr>
<td>RcoAddLogistic</td>
<td>${userme.McsiDomain.rcoAddLogistic}</td>

</tr>
<tr>
<td>rcoSwapLogistic</td>
<td>${userme.McsiDomain.rcoSwapLogistic}</td>

</tr>
<tr>
<td>RcoAddBundle</td>
<td>${userme.McsiDomain.rcoAddBundle}</td>

</tr>
<tr>
<td>RcoBreakBundle</td>
<td>${userme.McsiDomain.rcoBreakBundle}</td>

</tr>
<tr>
<td>RcoMoveProduct</td>
<td>${userme.McsiDomain.rcoMoveProduct}</td>

</tr>
<tr>
<td>RcoTransferProduct</td>
<td>${userme.McsiDomain.rcoTransferProduct}</td>

</tr>
<tr>
<td>RcoChangeAccountLevelPromotions</td>
<td>${userme.McsiDomain.rcoChangeAccountLevelPromotions}</td>

</tr>
<tr>
<td>ForwardSyncAddProduct</td>
<td>${userme.McsiDomain.forwardSyncAddProduct}</td>

</tr>
<tr>
<td>ForwardSyncChangeProduct</td>
<td>${userme.McsiDomain.forwardSyncChangeProduct}</td>

</tr>
<tr>
<td>ForwardSyncAddLogistic</td>
<td>${userme.McsiDomain.forwardSyncAddLogistic}</td>

</tr>
<tr>
<td>ForwardSyncSwapLogistic</td>
<td>${userme.McsiDomain.forwardSyncSwapLogistic}</td>

</tr>
<tr>
<td>ForwardSyncAddBundle</td>
<td>${userme.McsiDomain.forwardSyncAddBundle}</td>

</tr>
<tr>
<td>ForwardSyncBreakBundle</td>
<td>${userme.McsiDomain.forwardSyncBreakBundle}</td>

</tr>
<tr>
<td>ForwardSyncChangeAccountLevelPromotions</td>
<td>${userme.McsiDomain.forwardSyncChangeAccountLevelPromotions}</td>

</tr>
<tr>
<td>ReverseSyncChangeFetchCCNCreation</td>
<td>${userme.McsiDomain.reverseSyncChangeFetchCCNCreation}</td>

</tr>
<tr>
<td>ReverseSyncOrderProcessing</td>
<td>${userme.McsiDomain.reverseSyncOrderProcessing}</td>

</tr>
<tr>
<td>ReverseSyncProductProcessing</td>
<td>${userme.McsiDomain.reverseSyncProductProcessing}</td>

</tr>
<tr>
<td>ReverseSyncPromotionProcessing</td>
<td>${userme.McsiDomain.reverseSyncPromotionProcessing}</td>

</tr>
<tr>
<td>Customer Context</td>
<td>${userme.McsiDomain.customerContext}</td>

</tr>
<tr>
<td>EPC Integration</td>
<td>${userme.McsiDomain.epcIntegration}</td>

</tr>
<tr>
<td>quotationComponent</td>
<td>${userme.McsiDomain.quotationComponent}</td>

</tr>
<tr>
<td>order Intake Agora2.0</td>
<td>${userme.McsiDomain.orderIntakeAgora2}</td>

</tr>
<tr>
<td>Order Intake Agora 1.0</td>
<td>${userme.McsiDomain.orderIntakeAgora1}</td>

</tr>
<tr>
<td>Database Knowledge</td>
<td>${userme.McsiDomain.databaseKnowledge}</td>

</tr>

</table>
<!-- END -->

</td>
<td width="33%">
 
<!-- Table center  -->
<table width="100%" border="1" cellspacing="0" cellpadding="1">
<tr><td colspan="3"><center>Process</td></tr>
<tr>
<td>Emp Id</td>
<td>${userme.Process.empId}</td>

</tr>
<tr>
<td>Incident Tracking</td>
<td>${userme.Process.empId}</td>

</tr>
<tr>
<td>NFP </td>
<td>${userme.Process.NFP }</td>

</tr>
<tr>
<td>Recon</td>
<td>${userme.Process.Recon}</td>

</tr>
<tr>
<td>Patch</td>
<td>${userme.Process.Patch}</td>

</tr>
<tr>
<td>DRx Estimation</td>
<td>${userme.Process.DRxEstimation}</td>

</tr>
<tr>
<td>Internal Review</td>
<td>${userme.Process.InternalReview}</td>

</tr>
<tr>
<td>Tech Review</td>
<td>${userme.Process.TechReview}</td>

</tr>
<tr>
<td>SDDG Review</td>
<td>${userme.Process.SDDGReview}</td>

</tr>
<tr>
<td>RPM Review</td>
<td>${userme.Process.RPMReview}</td>

</tr>
<tr>
<td>Production Issues</td>
<td>${userme.Process.ProductionIssues}</td>

</tr>
<tr>
<td>CR Process</td>
<td>${userme.Process.CRProcess}</td>

</tr>
<tr>
<td>Sharepoint</td>
<td>${userme.Process.Sharepoint}</td>

</tr>
<tr>
<td>MiTime int</td>
<td>${userme.Process.MiTimeint}</td>

</tr>
<tr>
<td>IPM PLUS</td>
<td>${userme.Process.IPMPLUS}</td>

</tr>
<tr>
<td> CM </td>
<td>${userme.Process.CM}</td>

</tr>
<tr>
<td>DP</td>
<td>${userme.Process.DP}</td>

</tr>
<tr>
<td>KM</td>
<td>${userme.Process.KM}</td>

</tr>
<tr>
<td>Resource Allocation</td>
<td>${userme.Process.ResourceAllocation}</td>

</tr>
<tr>
<td>Billing</td>
<td>${userme.Process.Billing}</td>

</tr>
<tr>
<td>PCB</td>
<td>${userme.Process.PCB}</td>

</tr>

</table>
<!-- END -->

</td>
<td width="33%">
 
<!-- Table on right side -->
<table width="100%" border="1" cellspacing="0" cellpadding="1">
<tr><td colspan="3"><center>Telenet Knoweledge</td></tr>

<tr>
<td>EmpId </td>
<td>${userme.TelenetKnowledge.EmpId}</td>
</tr>
<tr>
<td>CS Domain </td>
<td>${userme.TelenetKnowledge.CS_Domain}</td>
</tr>
<tr>
<td>O2B OASIS </td>
<td>${userme.TelenetKnowledge.O2B_OASIS}</td>
</tr>
<tr>
<td> O2B TINA </td>
<td>${userme.TelenetKnowledge.O2B_TINA}</td>
</tr>
<tr>
<td>O2B AGORA</td>
<td>${userme.TelenetKnowledge.O2B_AGORA}</td>
</tr>
<tr>
<td>B2C Domain</td>
<td>${userme.TelenetKnowledge.B2C_Domain}</td>
</tr>
<tr>
<td>MS EPC </td>
<td>${userme.TelenetKnowledge.MS_EPC}</td>
</tr>
<tr>
<td>MS CDM</td>
<td>${userme.TelenetKnowledge.MS_CDM}</td>
</tr>
<tr>
<td>Network Domain</td>
<td>${userme.TelenetKnowledge.Network_Domain}</td>
</tr>
<tr>
<td>RM EVER</td>
<td>${userme.TelenetKnowledge.RM_EVER}</td>
</tr>
<tr>
<td>SAS</td>
<td>${userme.TelenetKnowledge.SAS}</td>
</tr>

</table> 

</tr>
</table>
 
<!-- END OF MAIN TABLE -->
 </body>
</html>