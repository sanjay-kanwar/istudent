
<%@ page import="com.rigelsolutions.domain.Course" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'course.label', default: 'Course')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>
<body>
<div class="row-fluid">
	<div class="span12">
            <h1><g:message code="default.list.label" args="[entityName]"/></h1>
		<hr />

            <g:link class="btn list-button btn-success" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link>
		<div id="list-course" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
        <table class="table table-striped table-bordered table-condensed">
				<thead>
				<tr>

					<g:sortableColumn property="courseName" title="${message(code: 'course.courseName.label', default: 'Course Name')}" id= "courseName"/>

					<g:sortableColumn property="institutionName" title="${message(code: 'course.institutionName.label', default: 'Institution Name')}" id = "institutionName"/>
				</tr>
				</thead>
				<tbody>
                <div id="list">
				<g:each in="${courseInstanceList}" status="i" var="courseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}" data-filter="true">

						<td><g:link action="show" id="${courseInstance.id}">${courseInstance.courseName}</g:link></td>
						<td>${courseInstance.institutionName}</td>

					</tr>
				</g:each>
                </div>
				</tbody>
			</table>
       </div>

        <div class="pagination">
				<g:customPaginate total="${courseInstanceTotal}"/>
			</div>
		</div>
	</div>
</div>


</body>
</html>
