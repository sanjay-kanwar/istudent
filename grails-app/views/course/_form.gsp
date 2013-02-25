<%@ page import="com.rigelsolutions.domain.Course" %>



	
<div class="control-group">
		<label class="control-label" for="courseName">
			<g:message code="course.courseName.label" default="Course Name" />
			
		</label>
		<div class="controls">
			<g:textField name="courseName" value="${courseInstance?.courseName}"/>
		</div>
</div>

	
<div class="control-group">
		<label class="control-label" for="institutionName">
			<g:message code="course.institutionName.label" default="Institution Name" />
			
		</label>
		<div class="controls">
			<g:textField name="institutionName" value="${courseInstance?.institutionName}"/>
		</div>
</div>

	
<div class="control-group">
		<label class="control-label" for="consultants">
			<g:message code="course.consultants.label" default="Consultants" />
			
		</label>
		<div class="controls">
			
		</div>
</div>

