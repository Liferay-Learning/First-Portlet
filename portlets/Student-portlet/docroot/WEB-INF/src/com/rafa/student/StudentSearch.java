package com.rafa.student;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.ProcessAction;

import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;

/**
 * Portlet implementation class StudentSearch
 */
public class StudentSearch extends MVCPortlet {
	
	@ProcessAction(name="searchActionMethod")
	public void searchStudent(ActionRequest request, ActionResponse response){
		String keyword = ParamUtil.getString(request, "search-text");
		System.out.println("Search Keyword is:>>>>>>>>>>>>"+keyword);
	}

 

}
