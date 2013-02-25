
<%@ page import="com.rigelsolutions.domain.Consultant" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'consultant.label', default: 'Consultant')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="row-fluid">
	<div class="span12">
		<h1><g:message code="default.list.label" args="[entityName]"/></h1>
		<hr />
		<g:link class="btn list-button btn-success" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link>
		<div id="list-consultant" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped table-bordered table-condensed">
				<thead>
				<tr>
					<th>ID</th>
					
					<g:sortableColumn property="firstName" title="${message(code: 'consultant.firstName.label', default: 'First Name')}"/>
					
					<g:sortableColumn property="lastName" title="${message(code: 'consultant.lastName.label', default: 'Last Name')}"/>
					
					<g:sortableColumn property="addressLine1" title="${message(code: 'consultant.addressLine1.label', default: 'Address Line1')}"/>
					
					<g:sortableColumn property="addressLine2" title="${message(code: 'consultant.addressLine2.label', default: 'Address Line2')}"/>
					
					<g:sortableColumn property="mobileNumber" title="${message(code: 'consultant.mobileNumber.label', default: 'Mobile Number')}"/>
					
					<g:sortableColumn property="phoneNumber" title="${message(code: 'consultant.phoneNumber.label', default: 'Phone Number')}"/>

                    <g:sortableColumn property="url" title="${message(code: 'consultant.url.label', default: 'URL')}"/>


                    <th></th>
				</tr>
				</thead>
				<tbody>
				<g:each in="${consultantInstanceList}" status="i" var="consultantInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="show" id="${consultantInstance.id}">${consultantInstance.id}</g:link></td>
						<td>${consultantInstance.firstName}</td>
						
						<td>${consultantInstance.lastName}</td>
						
						<td>${consultantInstance.addressLine1}</td>
						
						<td>${consultantInstance.addressLine2}</td>
						
						<td>${consultantInstance.mobileNumber}</td>
						
						<td>${consultantInstance.phoneNumber}</td>

                        <td>${consultantInstance.url}</td>


                        <td>
                            <div class="btn-group">
                                <a class="btn" href="#">Action</a>
                                <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                                    <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><g:link action="show" id="${consultantInstance?.id}"><g:message code="default.button.details.label" default="Details"/></g:link></li>
                                    <li><g:link action="edit" id="${consultantInstance?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link></li>
                                    <li><g:link action="edit" id="${consultantInstance?.id}"><g:message code="default.button.delete.label" default="Delete"/></g:link></li>
                                </ul>
                            </div>
                        </td>
					</tr>
				</g:each>
				</tbody>
			</table>

			<div class="pagination">
				<g:customPaginate total="${consultantInstanceTotal}"/>
			</div>
		</div>
	</div>
</div>
    

</body>
</html>
