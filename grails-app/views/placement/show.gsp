
<%@ page import="com.rigelsolutions.domain.Placement" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'placement.label', default: 'Placement')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
    <div class="row-fluid">
        <div class="span12">
            <h1><g:message code="default.show.label" args="[entityName]"/></h1>
            <g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link>
			<hr />
            <g:if test="${flash.message}">
                <div class="alert alert-info" role="status">${flash.message}</div>
            </g:if>
            <div class="form-horizontal">
				
					<g:if test="${placementInstance?.name}">
					<div class="control-group">					
						<label  id="name-label" class="control-label"><g:message code="placement.name.label" default="Name" /></label>
						<div class="controls">
							
								<span class="input-xlarge uneditable-input" aria-labelledby="name-label"><g:fieldValue bean="${placementInstance}" field="name"/></span>
							
						</div>	
					</div>
					</g:if>
				
					<g:if test="${placementInstance?.addressLine1}">
					<div class="control-group">					
						<label  id="addressLine1-label" class="control-label"><g:message code="placement.addressLine1.label" default="Address Line1" /></label>
						<div class="controls">
							
								<span class="input-xlarge uneditable-input" aria-labelledby="addressLine1-label"><g:fieldValue bean="${placementInstance}" field="addressLine1"/></span>
							
						</div>	
					</div>
					</g:if>
				
					<g:if test="${placementInstance?.addressLine2}">
					<div class="control-group">					
						<label  id="addressLine2-label" class="control-label"><g:message code="placement.addressLine2.label" default="Address Line2" /></label>
						<div class="controls">
							
								<span class="input-xlarge uneditable-input" aria-labelledby="addressLine2-label"><g:fieldValue bean="${placementInstance}" field="addressLine2"/></span>
							
						</div>	
					</div>
					</g:if>
				
					<g:if test="${placementInstance?.contactNumber}">
					<div class="control-group">					
						<label  id="contactNumber-label" class="control-label"><g:message code="placement.contactNumber.label" default="Contact Number" /></label>
						<div class="controls">
							
								<span class="input-xlarge uneditable-input" aria-labelledby="contactNumber-label"><g:fieldValue bean="${placementInstance}" field="contactNumber"/></span>
							
						</div>	
					</div>
					</g:if>
				
					<g:if test="${placementInstance?.url}">
					<div class="control-group">					
						<label  id="url-label" class="control-label"><g:message code="placement.url.label" default="Url" /></label>
						<div class="controls">
							
								<span class="input-xlarge uneditable-input" aria-labelledby="url-label"><g:fieldValue bean="${placementInstance}" field="url"/></span>
							
						</div>	
					</div>
					</g:if>
				
					<g:if test="${placementInstance?.courses}">
					<div class="control-group">					
						<label  id="courses-label" class="control-label"><g:message code="placement.courses.label" default="Courses" /></label>
						<div class="controls">
							
								<g:each in="${placementInstance.courses}" var="c">
								<span class="input-xlarge uneditable-input" aria-labelledby="courses-label"><g:link controller="course" action="show" id="${c.id}">${c?.name.encodeAsHTML()}</g:link></span>
								</g:each>
							
						</div>	
					</div>
					</g:if>
				
            </div>
                <g:form class="form-horizontal" action="delete">
					<div class="form-actions">
                    <fieldset>
                        <g:hiddenField name="id" value="${placementInstance?.id}"/>
                        <g:link class="btn btn-primary" action="edit" id="${placementInstance?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
						<button class="btn btn-danger" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" type="submit">${message(code: 'default.button.delete.label', default: 'Delete')}</button>
                    </fieldset>
					</div>
                </g:form>
            </div>
        </div>
</body>
</html>
