
<%@ page import="com.rigelsolutions.domain.Placement" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'placement.label', default: 'Placement')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="row-fluid">
	<div class="span12">
		<h1><g:message code="default.list.label" args="[entityName]"/></h1>
		<hr />
		<g:link class="btn list-button btn-success" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link>
		<div id="list-placement" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped table-bordered table-condensed">
				<thead>
				<tr>
					<th>ID</th>
					
					<g:sortableColumn property="name" title="${message(code: 'placement.name.label', default: 'Name')}"/>
					
					<g:sortableColumn property="addressLine1" title="${message(code: 'placement.addressLine1.label', default: 'Address Line1')}"/>
					
					<g:sortableColumn property="addressLine2" title="${message(code: 'placement.addressLine2.label', default: 'Address Line2')}"/>
					
					<g:sortableColumn property="contactNumber" title="${message(code: 'placement.contactNumber.label', default: 'Contact Number')}"/>
					
					<g:sortableColumn property="url" title="${message(code: 'placement.url.label', default: 'Url')}"/>
					
                    <th></th>
				</tr>
				</thead>
				<tbody>
				<g:each in="${placementInstanceList}" status="i" var="placementInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="show" id="${placementInstance.id}">${placementInstance.id}</g:link></td>
						<td>${placementInstance.name}</td>
						
						<td>${placementInstance.name}</td>
						
						<td>${placementInstance.name}</td>
						
						<td>${placementInstance.name}</td>
						
						<td>${placementInstance.name}</td>
						
                        <td>
                            <div class="btn-group">
                                <a class="btn" href="#">Action</a>
                                <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                                    <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><g:link action="show" id="${placementInstance?.id}"><g:message code="default.button.details.label" default="Details"/></g:link></li>
                                    <li><g:link action="edit" id="${placementInstance?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link></li>
                                    <li><g:link action="edit" id="${placementInstance?.id}"><g:message code="default.button.delete.label" default="Delete"/></g:link></li>
                                </ul>
                            </div>
                        </td>
					</tr>
				</g:each>
				</tbody>
			</table>

			<div class="pagination">
				<g:customPaginate total="${placementInstanceTotal}"/>
			</div>
		</div>
	</div>
</div>
    

</body>
</html>
