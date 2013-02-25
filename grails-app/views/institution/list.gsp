
<%@ page import="com.rigelsolutions.domain.Institution" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'institution.label', default: 'Institution')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="row-fluid">
	<div class="span12">
		<h1><g:message code="default.list.label" args="[entityName]"/></h1>
		<hr />
		<g:link class="btn list-button btn-success" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link>
		<div id="list-institution" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped table-bordered table-condensed">
				<thead>
				<tr>
					<th>ID</th>
					
					<g:sortableColumn property="name" title="${message(code: 'institution.name.label', default: 'Name')}"/>
					
					<g:sortableColumn property="addressLine1" title="${message(code: 'institution.addressLine1.label', default: 'Address Line1')}"/>
					
					<g:sortableColumn property="addressLine2" title="${message(code: 'institution.addressLine2.label', default: 'Address Line2')}"/>
					
					<g:sortableColumn property="contactNumber" title="${message(code: 'institution.contactNumber.label', default: 'Contact Number')}"/>
					
					<g:sortableColumn property="postCode" title="${message(code: 'institution.postCode.label', default: 'Post Code')}"/>
					
                    <th></th>
				</tr>
				</thead>
				<tbody>
				<g:each in="${institutionInstanceList}" status="i" var="institutionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="show" id="${institutionInstance.id}">${institutionInstance.id}</g:link></td>
						<td>${institutionInstance.name}</td>
						
						<td>${institutionInstance.name}</td>
						
						<td>${institutionInstance.name}</td>
						
						<td>${institutionInstance.name}</td>
						
						<td>${institutionInstance.name}</td>
						
                        <td>
                            <div class="btn-group">
                                <a class="btn" href="#">Action</a>
                                <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                                    <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><g:link action="show" id="${institutionInstance?.id}"><g:message code="default.button.details.label" default="Details"/></g:link></li>
                                    <li><g:link action="edit" id="${institutionInstance?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link></li>
                                    <li><g:link action="edit" id="${institutionInstance?.id}"><g:message code="default.button.delete.label" default="Delete"/></g:link></li>
                                </ul>
                            </div>
                        </td>
					</tr>
				</g:each>
				</tbody>
			</table>

			<div class="pagination">
				<g:customPaginate total="${institutionInstanceTotal}"/>
			</div>
		</div>
	</div>
</div>
    

</body>
</html>
