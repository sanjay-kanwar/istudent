package com.rigelsolutions.domain

class Consultant {
	
	String firstName
	String lastName
	String addressLine1
	String addressLine2
	String mobileNumber
	String phoneNumber
	String url
	

	static hasMany = [courses:Course]
	
    static constraints = {
		 firstName(blank:false)
		 lastName(blank: false)
		 addressLine1()
		 addressLine2()
		 mobileNumber()
		 phoneNumber()
		 url(url:true)
    }
}
