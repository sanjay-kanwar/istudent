<% import grails.persistence.Event %>
<%=packageName%>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="row-fluid">
	<div class="span12">
		<h1><g:message code="default.list.label" args="[entityName]"/></h1>
		<hr />
		<g:link class="btn list-button btn-success" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link>
		<div id="list-${domainClass.propertyName}" class="content scaffold-list" role="main">
			<g:if test="\${flash.message}">
				<div class="message" role="status">\${flash.message}</div>
			</g:if>
			<table class="table table-striped table-bordered table-condensed">
				<thead>
				<tr>
					<th>ID</th>
					<% excludedProps = Event.allEvents.toList() << 'id' << 'version'
					allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
					props = domainClass.properties.findAll { allowedNames.contains(it.name) && !excludedProps.contains(it.name) && it.type != null && !Collection.isAssignableFrom(it.type) }
					Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
					props.eachWithIndex { p, i ->
						if (i < 6) {
							if (p.isAssociation()) { %>
					<th><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}"/></th>
					<% } else { %>
					<g:sortableColumn property="${p.name}" title="\${message(code: '${domainClass.propertyName}.${p.name}.label', default: '${p.naturalName}')}"/>
					<% }
					}
					} %>
                    <th></th>
				</tr>
				</thead>
				<tbody>
				<g:each in="\${${propertyName}List}" status="i" var="${propertyName}">
					<tr class="\${(i % 2) == 0 ? 'even' : 'odd'}">
						<% props.eachWithIndex { p, i ->
							if (i == 0) { %>
						<td><g:link action="show" id="\${${propertyName}.id}">\${${propertyName}.id}</g:link></td>
						<td>\${${propertyName}.name}</td>
						<% } else if (i < 6) {
							if (p.type == Boolean || p.type == boolean) { %>
						<td><g:formatBoolean boolean="\${${propertyName}.${p.name}}"/></td>
						<% } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
						<td><g:formatDate date="\${${propertyName}.${p.name}}"/></td>
						<% } else if (p.type == Integer || p.type == Long) { %>
						<td>\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</td>
						<% } else { %>
						<td>\${${propertyName}.name}</td>
						<% }
						}
						} %>
                        <td>
                            <div class="btn-group">
                                <a class="btn" href="#">Action</a>
                                <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                                    <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><g:link action="show" id="\${${propertyName}?.id}"><g:message code="default.button.details.label" default="Details"/></g:link></li>
                                    <li><g:link action="edit" id="\${${propertyName}?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link></li>
                                    <li><g:link action="edit" id="\${${propertyName}?.id}"><g:message code="default.button.delete.label" default="Delete"/></g:link></li>
                                </ul>
                            </div>
                        </td>
					</tr>
				</g:each>
				</tbody>
			</table>

			<div class="pagination">
				<g:customPaginate total="\${${propertyName}Total}"/>
			</div>
		</div>
	</div>
</div>
    

</body>
</html>
