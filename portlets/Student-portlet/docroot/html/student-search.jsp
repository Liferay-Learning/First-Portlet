<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />

<portlet:actionURL var="submitSearchKeyword" name="searchActionMethod"></portlet:actionURL>

<div id="search_heading" class="Search-heading">Search</div>

<form action="${submitSearchKeyword}" method="post">
<div id="search_box">
	<div id="search_box_edit" class="search-text-box">
		<input type="text" class="placeholder" id="search_text" name="search-text" value=""/>
		<span class="divider">|</span>
		<input type="Submit" class="search-icon" id="search_icon" value="Search" title="Click to search"/>
	</div>
</div>
</form>

<script type="text/javascript">

function clearPlaceHolder(obj){
	if(obj.value == 'Search Student'){
		obj.value="";
	}		
}

function validatePlaceHolder(obj){
	if(obj.value==""){
		obj.value= 'Search Student';
	}
}	

</script>
