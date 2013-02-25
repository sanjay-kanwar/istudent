
<%@ page import="com.rigelsolutions.domain.Consultant" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'consultant.label', default: 'Consultant')}"/>
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
				
					<g:if test="${consultantInstance?.firstName}">
					<div class="control-group">					
						<label  id="firstName-label" class="control-label"><g:message code="consultant.firstName.label" default="First Name" /></label>
						<div class="controls">
							
								<span class="input-xlarge uneditable-input" aria-labelledby="firstName-label"><g:fieldValue bean="${consultantInstance}" field="firstName"/></span>
							
						</div>	
					</div>
					</g:if>
				
					<g:if test="${consultantInstance?.lastName}">
					<div class="control-group">					
						<label  id="lastName-label" class="control-label"><g:message code="consultant.lastName.label" default="Last Name" /></label>
						<div class="controls">
							
								<span class="input-xlarge uneditable-input" aria-labelledby="lastName-label"><g:fieldValue bean="${consultantInstance}" field="lastName"/></span>
							
						</div>	
					</div>
					</g:if>
				
					<g:if test="${consultantInstance?.addressLine1}">
					<div class="control-group">					
						<label  id="addressLine1-label" class="control-label"><g:message code="consultant.addressLine1.label" default="Address Line1" /></label>
						<div class="controls">
							
								<span class="input-xlarge uneditable-input" aria-labelledby="addressLine1-label"><g:fieldValue bean="${consultantInstance}" field="addressLine1"/></span>
							
						</div>	
					</div>
					</g:if>
				
					<g:if test="${consultantInstance?.addressLine2}">
					<div class="control-group">					
						<label  id="addressLine2-label" class="control-label"><g:message code="consultant.addressLine2.label" default="Address Line2" /></label>
						<div class="controls">
							
								<span class="input-xlarge uneditable-input" aria-labelledby="addressLine2-label"><g:fieldValue bean="${consultantInstance}" field="addressLine2"/></span>
							
						</div>	
					</div>
					</g:if>
				
					<g:if test="${consultantInstance?.mobileNumber}">
					<div class="control-group">					
						<label  id="mobileNumber-label" class="control-label"><g:message code="consultant.mobileNumber.label" default="Mobile Number" /></label>
						<div class="controls">
							
								<span class="input-xlarge uneditable-input" aria-labelledby="mobileNumber-label"><g:fieldValue bean="${consultantInstance}" field="mobileNumber"/></span>
							
						</div>	
					</div>
					</g:if>
				
					<g:if test="${consultantInstance?.phoneNumber}">
					<div class="control-group">					
						<label  id="phoneNumber-label" class="control-label"><g:message code="consultant.phoneNumber.label" default="Phone Number" /></label>
						<div class="controls">
							
								<span class="input-xlarge uneditable-input" aria-labelledby="phoneNumber-label"><g:fieldValue bean="${consultantInstance}" field="phoneNumber"/></span>
							
						</div>	
					</div>
					</g:if>
				
					<g:if test="${consultantInstance?.url}">
					<div class="control-group">					
						<label  id="url-label" class="control-label"><g:message code="consultant.url.label" default="Url" /></label>
						<div class="controls">
							
								<span class="input-xlarge uneditable-input" aria-labelledby="url-label"><g:fieldValue bean="${consultantInstance}" field="url"/></span>
							
						</div>	
					</div>
					</g:if>
				
					<g:if test="${consultantInstance?.courses}">
					<div class="control-group">					
						<label  id="courses-label" class="control-label"><g:message code="consultant.courses.label" default="Courses" /></label>
						<div class="controls">
							
								<g:each in="${consultantInstance.courses}" var="c">
								<span class="input-xlarge uneditable-input" aria-labelledby="courses-label"><g:link controller="course" action="show" id="${c.id}">${c?.name.encodeAsHTML()}</g:link></span>
								</g:each>
							
						</div>	
					</div>
					</g:if>
				
            </div>
                <g:form class="form-horizontal" action="delete">
					<div class="form-actions">
                    <fieldset>
                        <g:hiddenField name="id" value="${consultantInstance?.id}"/>
                        <g:link class="btn btn-primary" action="edit" id="${consultantInstance?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
						<button class="btn btn-danger" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" type="submit">${message(code: 'default.button.delete.label', default: 'Delete')}</button>
                    </fieldset>
					</div>
                </g:form>
            </div>
        </div>
</body>
</html>
