package com.rigelsolutions.domain

import org.springframework.dao.DataIntegrityViolationException

class ConsultantController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [consultantInstanceList: Consultant.list(params), consultantInstanceTotal: Consultant.count()]
    }

    def create() {
        [consultantInstance: new Consultant(params)]
    }

    def save() {
        def consultantInstance = new Consultant(params)
        if (!consultantInstance.save(flush: true)) {
            render(view: "create", model: [consultantInstance: consultantInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'consultant.label', default: 'Consultant'), consultantInstance.id])
        redirect(action: "show", id: consultantInstance.id)
    }

    def show() {
        def consultantInstance = Consultant.get(params.id)
        if (!consultantInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'consultant.label', default: 'Consultant'), params.id])
            redirect(action: "list")
            return
        }

        [consultantInstance: consultantInstance]
    }

    def edit() {
        def consultantInstance = Consultant.get(params.id)
        if (!consultantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'consultant.label', default: 'Consultant'), params.id])
            redirect(action: "list")
            return
        }

        [consultantInstance: consultantInstance]
    }

    def update() {
        def consultantInstance = Consultant.get(params.id)
        if (!consultantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'consultant.label', default: 'Consultant'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (consultantInstance.version > version) {
                consultantInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'consultant.label', default: 'Consultant')] as Object[],
                          "Another user has updated this Consultant while you were editing")
                render(view: "edit", model: [consultantInstance: consultantInstance])
                return
            }
        }

        consultantInstance.properties = params

        if (!consultantInstance.save(flush: true)) {
            render(view: "edit", model: [consultantInstance: consultantInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'consultant.label', default: 'Consultant'), consultantInstance.id])
        redirect(action: "show", id: consultantInstance.id)
    }

    def delete() {
        def consultantInstance = Consultant.get(params.id)
        if (!consultantInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'consultant.label', default: 'Consultant'), params.id])
            redirect(action: "list")
            return
        }

        try {
            consultantInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'consultant.label', default: 'Consultant'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'consultant.label', default: 'Consultant'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
