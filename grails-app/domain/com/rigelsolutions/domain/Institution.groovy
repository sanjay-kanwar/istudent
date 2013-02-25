package com.rigelsolutions.domain

class Institution {


	String name
	String addressLine1
	String addressLine2
	String contactNumber
	String postCode

    static constraints = {
		name()
		addressLine1()
		addressLine2()
		contactNumber()
		postCode()
    }
}
