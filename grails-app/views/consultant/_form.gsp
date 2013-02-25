<%@ page import="com.rigelsolutions.domain.Consultant" %>



	
<div class="control-group">
		<label class="control-label" for="firstName">
			<g:message code="consultant.firstName.label" default="First Name" />
			<span class="required-indicator">*</span>
		</label>
		<div class="controls">
			<g:textField name="firstName" required="" value="${consultantInstance?.firstName}"/>
		</div>
</div>

	
<div class="control-group">
		<label class="control-label" for="lastName">
			<g:message code="consultant.lastName.label" default="Last Name" />
			<span class="required-indicator">*</span>
		</label>
		<div class="controls">
			<g:textField name="lastName" required="" value="${consultantInstance?.lastName}"/>
		</div>
</div>

	
<div class="control-group">
		<label class="control-label" for="addressLine1">
			<g:message code="consultant.addressLine1.label" default="Address Line1" />
			
		</label>
		<div class="controls">
			<g:textField name="addressLine1" value="${consultantInstance?.addressLine1}"/>
		</div>
</div>

	
<div class="control-group">
		<label class="control-label" for="addressLine2">
			<g:message code="consultant.addressLine2.label" default="Address Line2" />
			
		</label>
		<div class="controls">
			<g:textField name="addressLine2" value="${consultantInstance?.addressLine2}"/>
		</div>
</div>

	
<div class="control-group">
		<label class="control-label" for="mobileNumber">
			<g:message code="consultant.mobileNumber.label" default="Mobile Number" />
			
		</label>
		<div class="controls">
			<g:textField name="mobileNumber" value="${consultantInstance?.mobileNumber}"/>
		</div>
</div>

	
<div class="control-group">
		<label class="control-label" for="phoneNumber">
			<g:message code="consultant.phoneNumber.label" default="Phone Number" />
			
		</label>
		<div class="controls">
			<g:textField name="phoneNumber" value="${consultantInstance?.phoneNumber}"/>
		</div>
</div>

	
<div class="control-group">
		<label class="control-label" for="url">
			<g:message code="consultant.url.label" default="Url" />
			
		</label>
		<div class="controls">
			<g:field type="url" name="url" value="${consultantInstance?.url}"/>
		</div>
</div>

	
<div class="control-group">
		<label class="control-label" for="courses">
			<g:message code="consultant.courses.label" default="Courses" />
			
		</label>
		<div class="controls">
			<g:select name="courses" from="${com.rigelsolutions.domain.Course.list()}" multiple="multiple" optionKey="id" size="5" value="${consultantInstance?.courses*.id}" class="many-to-many"/>
		</div>
</div>

