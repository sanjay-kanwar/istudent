<%@ page import="com.rigelsolutions.domain.Placement" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'placement.label', default: 'Placement')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="edit-placement" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link>
			<hr />
			<g:if test="${flash.message}">
			<div class="alert alert-info" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${placementInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${placementInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form class="form-horizontal" method="post" >
				<g:hiddenField name="id" value="${placementInstance?.id}" />
				<g:hiddenField name="version" value="${placementInstance?.version}" />
				<fieldset>
					<g:render template="form"/>
				</fieldset>
				<div class="form-actions">
				<fieldset>
					<g:actionSubmit class="btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
				</div>
			</g:form>
		</div>
	</body>
</html>
