package com.rafa.student;

import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;
import javax.portlet.ProcessAction;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;
import javax.servlet.http.HttpServletRequest;

import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.util.PortalUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;

public class Student extends MVCPortlet {
	
	private static Log _log = LogFactoryUtil.getLog(Student.class.getName());
	
	double emi_amount =0;
	double interest_paid = 0;
	double total_paid_amount = 0;
	
	
	@Override
    public void doView(RenderRequest renderRequest,
                    RenderResponse renderResponse) throws IOException, PortletException {
		
/*		renderRequest.setAttribute("emi", String.valueOf(String.format("%.2f", emi_amount)));
		renderRequest.setAttribute("interest_paid", String.valueOf(String.format("%.2f", interest_paid)));
		renderRequest.setAttribute("total_amount", String.valueOf(String.format("%.2f", total_paid_amount)));*/
		
		renderRequest.getAttribute("emi");
		renderRequest.getAttribute("interest_paid");
		renderRequest.getAttribute("total_amount");
		
		 
		super.render(renderRequest, renderResponse);
	}
	
	
	@ProcessAction(name="calculateActionMethod")
	public void calculateActionMethod(ActionRequest actionRequest, ActionResponse actionResponse){
		
		int loanAmount = ParamUtil.getInteger(actionRequest, "loanAmt");
		float rate = ParamUtil.getFloat(actionRequest, "ratePer");
		int time = ParamUtil.getInteger(actionRequest, "timeVal");
		
		rate = rate/(12*100);
		emi_amount = (loanAmount*rate*Math.pow(1+rate, time))/(Math.pow(1+rate, time)-1);
		total_paid_amount = (emi_amount*time);
		interest_paid = total_paid_amount-loanAmount;
		
		_log.info("Loan Amount:>>>>>>>>"+loanAmount);
		_log.info("Rate of Interest:>>>>>>>>"+rate);
		_log.info("Time in months:>>>>>>>>>>>"+time);
		_log.info("EMI Amount is:>>>>>>>>>>>>"+emi_amount);
		_log.info("Total Interest Paid:>>>>>>>>"+interest_paid);
		_log.info("Total Amount Paid:>>>>>>>>>>"+total_paid_amount);
		
		PortalUtil.copyRequestParameters(actionRequest, actionResponse);
		/*actionResponse.setRenderParameter("emi", String.valueOf(String.format("%.2f", emi_amount)));
		actionResponse.setRenderParameter("interest_paid", String.valueOf(String.format("%.2f", interest_paid)));
		actionResponse.setRenderParameter("total_amount", String.valueOf(String.format("%.2f", total_paid_amount)));*/
		
		actionRequest.setAttribute("emi", String.valueOf(String.format("%.2f", emi_amount)));
		actionRequest.setAttribute("interest_paid", String.valueOf(String.format("%.2f", interest_paid)));
		actionRequest.setAttribute("total_amount", String.valueOf(String.format("%.2f", total_paid_amount)));
	}
	
	@ProcessAction(name="greetingActionMethod")
	public void greetingMethod(ActionRequest greetingRequest, ActionResponse greetingResponse){
		String name = ParamUtil.getString(greetingRequest, "search-text");
		greetingResponse.setRenderParameter("jspPage", "/html/greeting.jsp");
		PortalUtil.copyRequestParameters(greetingRequest, greetingResponse);
		//greetingResponse.setRenderParameter("name", name);
		_log.info("Name Entered:>>>>>>>>>>>>>>>>"+name);
		
	}
	
	
	
	
	

}
