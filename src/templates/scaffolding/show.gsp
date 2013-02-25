<% import grails.persistence.Event %>
<%=packageName%>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
    <div class="row-fluid">
        <div class="span12">
            <h1><g:message code="default.show.label" args="[entityName]"/></h1>
            <g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link>
			<hr />
            <g:if test="\${flash.message}">
                <div class="alert alert-info" role="status">\${flash.message}</div>
            </g:if>
            <div class="form-horizontal">
				<%  excludedProps = Event.allEvents.toList() << 'id' << 'version'
					allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
					props = domainClass.properties.findAll { allowedNames.contains(it.name) && !excludedProps.contains(it.name) }
					Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
					props.each { p -> %>
					<g:if test="\${${propertyName}?.${p.name}}">
					<div class="control-group">					
						<label  id="${p.name}-label" class="control-label"><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" /></label>
						<div class="controls">
							<%  if (p.isEnum()) { %>
								<span class="input-xlarge uneditable-input" aria-labelledby="${p.name}-label"><g:fieldValue bean="\${${propertyName}}" field="${p.name}"/></span>
							<%  } else if (p.oneToMany || p.manyToMany) { %>
								<g:each in="\${${propertyName}.${p.name}}" var="${p.name[0]}">
								<span class="input-xlarge uneditable-input" aria-labelledby="${p.name}-label"><g:link controller="${p.referencedDomainClass?.propertyName}" action="show" id="\${${p.name[0]}.id}">\${${p.name[0]}?.name.encodeAsHTML()}</g:link></span>
								</g:each>
							<%  } else if (p.manyToOne || p.oneToOne) { %>
								<span class="input-xlarge uneditable-input" aria-labelledby="${p.name}-label"><g:link controller="${p.referencedDomainClass?.propertyName}" action="show" id="\${${propertyName}?.${p.name}?.id}">\${${propertyName}?.${p.name}?.name.encodeAsHTML()}</g:link></span>
							<%  } else if (p.type == Boolean || p.type == boolean) { %>
								<span class="input-xlarge uneditable-input" aria-labelledby="${p.name}-label"><g:formatBoolean boolean="\${${propertyName}?.${p.name}}" /></span>
							<%  } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
								<span class="input-xlarge uneditable-input" aria-labelledby="${p.name}-label"><g:formatDate date="\${${propertyName}?.${p.name}}" /></span>
							<%  } else if(!p.type.isArray()) { %>
								<span class="input-xlarge uneditable-input" aria-labelledby="${p.name}-label"><g:fieldValue bean="\${${propertyName}}" field="${p.name}"/></span>
							<%  } %>
						</div>	
					</div>
					</g:if>
				<%  } %>
            </div>
                <g:form class="form-horizontal" action="delete">
					<div class="form-actions">
                    <fieldset>
                        <g:hiddenField name="id" value="\${${propertyName}?.id}"/>
                        <g:link class="btn btn-primary" action="edit" id="\${${propertyName}?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
						<button class="btn btn-danger" onclick="return confirm('\${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" type="submit">\${message(code: 'default.button.delete.label', default: 'Delete')}</button>
                    </fieldset>
					</div>
                </g:form>
            </div>
        </div>
</body>
</html>
