
<%@ page import="com.rigelsolutions.domain.Institution" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'institution.label', default: 'Institution')}"/>
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
				
					<g:if test="${institutionInstance?.name}">
					<div class="control-group">					
						<label  id="name-label" class="control-label"><g:message code="institution.name.label" default="Name" /></label>
						<div class="controls">
							
								<span class="input-xlarge uneditable-input" aria-labelledby="name-label"><g:fieldValue bean="${institutionInstance}" field="name"/></span>
							
						</div>	
					</div>
					</g:if>
				
					<g:if test="${institutionInstance?.addressLine1}">
					<div class="control-group">					
						<label  id="addressLine1-label" class="control-label"><g:message code="institution.addressLine1.label" default="Address Line1" /></label>
						<div class="controls">
							
								<span class="input-xlarge uneditable-input" aria-labelledby="addressLine1-label"><g:fieldValue bean="${institutionInstance}" field="addressLine1"/></span>
							
						</div>	
					</div>
					</g:if>
				
					<g:if test="${institutionInstance?.addressLine2}">
					<div class="control-group">					
						<label  id="addressLine2-label" class="control-label"><g:message code="institution.addressLine2.label" default="Address Line2" /></label>
						<div class="controls">
							
								<span class="input-xlarge uneditable-input" aria-labelledby="addressLine2-label"><g:fieldValue bean="${institutionInstance}" field="addressLine2"/></span>
							
						</div>	
					</div>
					</g:if>
				
					<g:if test="${institutionInstance?.contactNumber}">
					<div class="control-group">					
						<label  id="contactNumber-label" class="control-label"><g:message code="institution.contactNumber.label" default="Contact Number" /></label>
						<div class="controls">
							
								<span class="input-xlarge uneditable-input" aria-labelledby="contactNumber-label"><g:fieldValue bean="${institutionInstance}" field="contactNumber"/></span>
							
						</div>	
					</div>
					</g:if>
				
					<g:if test="${institutionInstance?.postCode}">
					<div class="control-group">					
						<label  id="postCode-label" class="control-label"><g:message code="institution.postCode.label" default="Post Code" /></label>
						<div class="controls">
							
								<span class="input-xlarge uneditable-input" aria-labelledby="postCode-label"><g:fieldValue bean="${institutionInstance}" field="postCode"/></span>
							
						</div>	
					</div>
					</g:if>
				
            </div>
                <g:form class="form-horizontal" action="delete">
					<div class="form-actions">
                    <fieldset>
                        <g:hiddenField name="id" value="${institutionInstance?.id}"/>
                        <g:link class="btn btn-primary" action="edit" id="${institutionInstance?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
						<button class="btn btn-danger" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" type="submit">${message(code: 'default.button.delete.label', default: 'Delete')}</button>
                    </fieldset>
					</div>
                </g:form>
            </div>
        </div>
</body>
</html>
