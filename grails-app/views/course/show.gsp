
<%@ page import="com.rigelsolutions.domain.Course" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'course.label', default: 'Course')}"/>
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
				
					<g:if test="${courseInstance?.courseName}">
					<div class="control-group">					
						<label  id="courseName-label" class="control-label"><g:message code="course.courseName.label" default="Course Name" /></label>
						<div class="controls">
							
								<span class="input-xlarge uneditable-input" aria-labelledby="courseName-label"><g:fieldValue bean="${courseInstance}" field="courseName"/></span>
							
						</div>	
					</div>
					</g:if>
				
					<g:if test="${courseInstance?.institutionName}">
					<div class="control-group">					
						<label  id="institutionName-label" class="control-label"><g:message code="course.institutionName.label" default="Institution Name" /></label>
						<div class="controls">
							
								<span class="input-xlarge uneditable-input" aria-labelledby="institutionName-label"><g:fieldValue bean="${courseInstance}" field="institutionName"/></span>
							
						</div>	
					</div>
					</g:if>
				
					<g:if test="${courseInstance?.consultants}">
					<div class="control-group">					
						<label  id="consultants-label" class="control-label"><g:message code="course.consultants.label" default="Consultants" /></label>
						<div class="controls">
							
								<g:each in="${courseInstance.consultants}" var="c">
								<span class="input-xlarge uneditable-input" aria-labelledby="consultants-label"><g:link controller="consultant" action="show" id="${c.id}">${c?.name.encodeAsHTML()}</g:link></span>
								</g:each>
							
						</div>	
					</div>
					</g:if>
				
            </div>
                <g:form class="form-horizontal" action="delete">
					<div class="form-actions">
                    <fieldset>
                        <g:hiddenField name="id" value="${courseInstance?.id}"/>
                        <g:link class="btn btn-primary" action="edit" id="${courseInstance?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
						<button class="btn btn-danger" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" type="submit">${message(code: 'default.button.delete.label', default: 'Delete')}</button>
                    </fieldset>
					</div>
                </g:form>
            </div>
        </div>
</body>
</html>
