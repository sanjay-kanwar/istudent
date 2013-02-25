package com.rigelsolutions.domain

class Course {

	
static searchable = true
	String courseName
	String institutionName
	
	static belongsTo = Consultant
	
	static hasMany = [consultants:Consultant]
	
    static constraints = {
		courseName()
		institutionName()
    }
}
