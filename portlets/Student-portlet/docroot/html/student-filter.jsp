<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />
<div id="search-filter-header"> <h2 class="results_filter_label">Filter results by</h2></div>

<div id="student-house-categories" class="filter_line">	
		<div id="student-house-categoryDownArrow" >
			<div class="student_filter">House</div>
				<div align="right" id="student-house-categoryImageDiv" class="student_filter_arrow"> 
					<img class="filter_drop_down" src="<%= renderRequest.getContextPath()%>/images/down-arrow.png"></div>
		</div>
		<div id="student-house-category" class="student_type_options">
			<input type="radio" name="selectedStudentHouse" class="selectedStudentHouseFilter_"   value="all"> All <br/>
			<input type="radio" name="selectedStudentHouse" class="selectedStudentHouseFilter_"   value="aravali"> Aravali <br/>
			<input type="radio" name="selectedStudentHouse" class="selectedStudentHouseFilter_"   value="nilgiri" > Nilgiri <br/>
			<input type="radio" name="selectedStudentHouse" class="selectedStudentHouseFilter_"   value="shivalik" > Shivalik<br/>
			<input type="radio" name="selectedStudentHouse" class="selectedStudentHouseFilter_"   value="udaygiri"> Udaygiri <br/>
		</div>
</div>

<div id="student-blood-categories" class="filter_line">	
		<div id="student-blood-categoryDownArrow" >
			<div class="student_filter">Blood Group</div>
				<div align="right" id="student-blood-categoryImageDiv" class="student_filter_arrow"> 
					<img class="filter_drop_down" src="<%= renderRequest.getContextPath()%>/images/down-arrow.png"></div>
		</div>
		<div id="student-blood-category" class="student_type_options">
			<input type="radio" name="selectedStudentBlood" class="selectedStudentBloodFilter_"   value="all"> All <br/>
			<input type="radio" name="selectedStudentBlood" class="selectedStudentBloodFilter_"   value="apositive" > A+ <br/>
			<input type="radio" name="selectedStudentBlood" class="selectedStudentBloodFilter_"   value="anegative" > A- <br/>
			<input type="radio" name="selectedStudentBlood" class="selectedStudentBloodFilter_"   value="bpositive" > B+ <br/>
			<input type="radio" name="selectedStudentBlood" class="selectedStudentBloodFilter_"   value="bnegative" > B- <br/>
			<input type="radio" name="selectedStudentBlood" class="selectedStudentBloodFilter_"   value="opositive" > O+ <br/>
			<input type="radio" name="selectedStudentBlood" class="selectedStudentBloodFilter_"   value="onegative" > O- <br/>
			<input type="radio" name="selectedStudentBlood" class="selectedStudentBloodFilter_"   value="abpositive" > AB+ <br/>
			<input type="radio" name="selectedStudentBlood" class="selectedStudentBloodFilter_"   value="abnegative" > AB- <br/>
		</div>
</div>

<div id="student-sports-categories" class="filter_line">	
		<div id="student-sports-categoryDownArrow" >
			<div class="student_filter">Sports</div>
				<div align="right" id="student-sports-categoryImageDiv" class="student_filter_arrow"> 
					<img class="filter_drop_down" src="<%= renderRequest.getContextPath()%>/images/down-arrow.png"></div>
		</div>
		<div id="student-sports-category" class="student_type_options">
			<select name ="selected_sports" size="1" class="dropdown_">
				<option value="all" selected>All</option>
				<option value="cricket">Cricket</option>
				<option value="Football">Football</option>
				<option value="kabaddi">Kabaddi</option>
				<option value="chess">Chess</option>
				<option value="carrom">Carrom</option>
				<option value="tableTennis">Table Tenis</option>
				<option value="badminton">Badminton</option>
				<option value="foosball">Foosball</option>
			</select>
		</div>
</div>


<script type="text/javascript">

$("#student-house-categoryDownArrow").click(function(){
	var loc = '<%= renderRequest.getContextPath()%>';
	var displayValue = $("#student-house-category").css('display');
	if(displayValue == 'none'){
		$(".student_type_options").hide();
		$("#student-house-category").show();
		
		$(".student_filter_arrow").html("<img src='"+loc+"/images/down-arrow.png'>");
		$("#student-house-categoryImageDiv").html("<img src='"+loc+"/images/up-arrow.png'>");		
	}else{
		$("#student-house-category").hide();
		$("#student-house-categoryImageDiv").html("<img src='"+loc+"/images/down-arrow.png'>");	
	}
});

$("#student-blood-categoryDownArrow").click(function(){
	var loc = '<%= renderRequest.getContextPath()%>';
	var displayValue = $("#student-blood-category").css('display');
	if(displayValue == 'none'){
		$(".student_type_options").hide();
		$("#student-blood-category").show();
		
		$(".student_filter_arrow").html("<img src='"+loc+"/images/down-arrow.png'>");
		$("#student-blood-categoryImageDiv").html("<img src='"+loc+"/images/up-arrow.png'>");		
	}else{
		$("#student-blood-category").hide();
		$("#student-blood-categoryImageDiv").html("<img src='"+loc+"/images/down-arrow.png'>");	
	}
});

$("#student-sports-categoryDownArrow").click(function(){
	var loc = '<%= renderRequest.getContextPath()%>';
	var displayValue = $("#student-sports-category").css('display');
	if(displayValue == 'none'){
		$(".student_type_options").hide();
		$("#student-sports-category").show();
		
		$(".student_filter_arrow").html("<img src='"+loc+"/images/down-arrow.png'>");
		$("#student-sports-categoryImageDiv").html("<img src='"+loc+"/images/up-arrow.png'>");		
	}else{
		$("#student-sports-category").hide();
		$("#student-sports-categoryImageDiv").html("<img src='"+loc+"/images/down-arrow.png'>");	
	}
});

</script>
	
