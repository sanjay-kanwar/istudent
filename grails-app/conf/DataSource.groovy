dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    username = "dev"
    password = "dev123"
	url="jdbc:mysql://localhost:3306/istudent_dev"
	dbCreate="update"
	dialect="org.hibernate.dialect.MySQL5InnoDBDialect"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:mysql://localhost:3306/student_dev"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://localhost:3306/student_tst"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://localhost:3306/student_tst"
            pooled = true
   
        }
    }
}
