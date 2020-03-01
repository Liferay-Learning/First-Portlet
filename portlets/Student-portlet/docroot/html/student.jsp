<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<portlet:defineObjects />

<portlet:actionURL var="calculateAction" name="calculateActionMethod">
</portlet:actionURL>

<div class="span12" id="emi_calculator">
<div class="span6" id="loan_input">
<form action="${calculateAction}" method="post" name="calculate">
<table class="left_table">
<tbody>
	<tr>
		<td><label for="<portlet:namespace/>loan_amount">Loan Amount</label></td>
		<td><input name="<portlet:namespace/>loanAmt" required type="number" id="<portlet:namespace/>loan_amount" min="0" value="<%=renderRequest.getParameter("loanAmt")%>"/></td>
	</tr>
	<tr>
		<td><label for="<portlet:namespace/>rate_percent">Rate of Interest</label></td>
		<td><input name="<portlet:namespace/>ratePer"  required type="number" id="<portlet:namespace/>rate_percent" step=".01" min="0" value="<%=renderRequest.getParameter("ratePer")%>"/></td>
	</tr>
	<tr>
		<td><label for="<portlet:namespace/>time_Month">Time in (Months)</label></td>
		<td><input name="<portlet:namespace/>timeVal" required type="number" id="<portlet:namespace/>time_Month" min="6" value="<%=renderRequest.getParameter("timeVal")%>"/></td>
	</tr>
	<tr>
		<td colspan="2"><input type="Submit" name="calculateBtn"  value="Calculate"/></td>
	</tr>
</tbody>
</table>
</form>
</div>
<div class="sapn6" id="calculated_value">
<table class="right_table">
	<tbody>
		<tr>
			<td>EMI Amount Payable: </td>
			<td><strong><%=renderRequest.getParameter("emi") %></strong></td>
		</tr>
		<tr>
			<td>Interest Paid: </td>
			<td><strong><%=renderRequest.getParameter("interest_paid") %></strong></td>
		</tr>
		<tr>
			<td>Total Amount Paid: </td>
			<td><strong><%=renderRequest.getParameter("total_amount") %></strong></td>
		</tr>
	</tbody>
</table>
</div>
</div>





