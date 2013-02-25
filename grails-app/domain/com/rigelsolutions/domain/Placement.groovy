package com.rigelsolutions.domain

class Placement {
	
	String name
	String addressLine1
	String addressLine2
	String contactNumber
	String url
	

	static belongsTo = Course
	
	static hasMany = [courses:Course]
	
	
    static constraints = {
    
		 name()
		 addressLine1()
		 addressLine2()
		 contactNumber()
		 url()
		
		}
}
