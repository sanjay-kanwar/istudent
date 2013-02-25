<%@ page import="com.rigelsolutions.domain.Placement" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'placement.label', default: 'Placement')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="row-fluid">
		<div class="span12">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:link action="list"><g:message code="default.list.label" args="[entityName]" /></g:link>
			<hr />
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${placementInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${placementInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form class="form-horizontal" action="save" >
				<fieldset>
					<g:render template="form"/>
				</fieldset>
				<div class="form-actions">
					<fieldset>
						<g:submitButton name="create" class="btn btn-success" value="${message(code: 'default.button.create.label', default: 'Create')}" />
					</fieldset>
				</dvi>
			</g:form>
		</div>
	</div>
	</body>
</html>
