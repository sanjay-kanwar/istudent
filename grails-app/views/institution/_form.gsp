<%@ page import="com.rigelsolutions.domain.Institution" %>



	
<div class="control-group">
		<label class="control-label" for="name">
			<g:message code="institution.name.label" default="Name" />
			
		</label>
		<div class="controls">
			<g:textField name="name" value="${institutionInstance?.name}"/>
		</div>
</div>

	
<div class="control-group">
		<label class="control-label" for="addressLine1">
			<g:message code="institution.addressLine1.label" default="Address Line1" />
			
		</label>
		<div class="controls">
			<g:textField name="addressLine1" value="${institutionInstance?.addressLine1}"/>
		</div>
</div>

	
<div class="control-group">
		<label class="control-label" for="addressLine2">
			<g:message code="institution.addressLine2.label" default="Address Line2" />
			
		</label>
		<div class="controls">
			<g:textField name="addressLine2" value="${institutionInstance?.addressLine2}"/>
		</div>
</div>

	
<div class="control-group">
		<label class="control-label" for="contactNumber">
			<g:message code="institution.contactNumber.label" default="Contact Number" />
			
		</label>
		<div class="controls">
			<g:textField name="contactNumber" value="${institutionInstance?.contactNumber}"/>
		</div>
</div>

	
<div class="control-group">
		<label class="control-label" for="postCode">
			<g:message code="institution.postCode.label" default="Post Code" />
			
		</label>
		<div class="controls">
			<g:textField name="postCode" value="${institutionInstance?.postCode}"/>
		</div>
</div>

