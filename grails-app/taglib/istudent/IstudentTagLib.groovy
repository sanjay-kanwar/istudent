package istudent

class IstudentTagLib {
    def redirectMainPage = {
        response.sendRedirect("${request.contextPath}/course/list")
    }

}
