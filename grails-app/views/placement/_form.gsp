<%@ page import="com.rigelsolutions.domain.Placement" %>



	
<div class="control-group">
		<label class="control-label" for="name">
			<g:message code="placement.name.label" default="Name" />
			
		</label>
		<div class="controls">
			<g:textField name="name" value="${placementInstance?.name}"/>
		</div>
</div>

	
<div class="control-group">
		<label class="control-label" for="addressLine1">
			<g:message code="placement.addressLine1.label" default="Address Line1" />
			
		</label>
		<div class="controls">
			<g:textField name="addressLine1" value="${placementInstance?.addressLine1}"/>
		</div>
</div>

	
<div class="control-group">
		<label class="control-label" for="addressLine2">
			<g:message code="placement.addressLine2.label" default="Address Line2" />
			
		</label>
		<div class="controls">
			<g:textField name="addressLine2" value="${placementInstance?.addressLine2}"/>
		</div>
</div>

	
<div class="control-group">
		<label class="control-label" for="contactNumber">
			<g:message code="placement.contactNumber.label" default="Contact Number" />
			
		</label>
		<div class="controls">
			<g:textField name="contactNumber" value="${placementInstance?.contactNumber}"/>
		</div>
</div>

	
<div class="control-group">
		<label class="control-label" for="url">
			<g:message code="placement.url.label" default="Url" />
			
		</label>
		<div class="controls">
			<g:textField name="url" value="${placementInstance?.url}"/>
		</div>
</div>

