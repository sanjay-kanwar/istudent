<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-responsive.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
    <script language="javascript" src="${resource(dir: 'js', file: 'jquery-1.7.1.min.js')}" type="text/javascript"></script>
    <script language="javascript" src="${resource(dir: 'js', file: 'bootstrap-dropdown.js')}" type="text/javascript"></script>
    <script language="javascript" src="${resource(dir: 'js', file: 'application.js')}" type="text/javascript"></script>
    <script language="javascript" src="${resource(dir: 'js', file: 'bootstrap-collapse.js')}" type="text/javascript"></script>
    <script language="javascript" src="${resource(dir: 'js', file: 'bootstrap-scrollspy.js')}" type="text/javascript"></script>
    <script language="javascript" src="${resource(dir: 'js', file: 'bootstrap-modal.js')}" type="text/javascript"></script>
    <g:layoutHead/>
    <r:layoutResources/>
    <style type="text/css">
    body {
        /*padding-top: 60px;*/
        padding-bottom: 40px;
        background:  url(../images/pattern.jpg) fixed;

    }
  .navbar navbar-fixed-top navbar-inner{
        background-color: red;
    }

    </style>
</head>

<body>

<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <div class="nav-collapse">
                <ul class="nav">
                    <li class="active" id="institution" ><g:link controller="institution" action="list">institution</g:link></li>
                    <li class="active" id="placement"><g:link controller="placement" action="list">Placement</g:link></li>
                    <li class="active" id="course" ><g:link controller="course" action="list">Course</g:link></li>
                    <li class="active" id="consultant" ><g:link controller="consultant" action="list">Consultant</g:link></li>


                </ul>
            </div>

            <div class="nav pull-right">
                <div class="nav-collapse">
                    <ul class="nav">
                        <li class="dropdown" id="admin" >
                            <a href="#"
                               class="dropdown-toggle"
                               data-toggle="dropdown">
                                Admin
                            </a>
                            <ul class="dropdown-menu">
%{--
                                <li><g:link controller="consultant" action="list" class="home-action-button">Consultant</g:link></li>
--}%
%{--
                                <li><g:link controller="course" action="list" class="home-action-button">Course</g:link></li>
--}%

                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div><!--/.fluid-container-->
<div class="container">
    <div class="content-body-outer">
        <div class="content-body">
            <div class="row-fluid">
                <g:layoutBody/>
             </div>
        </div>
    </div>
</div>
%{--
--}%
    </div><!--/span-->
<!--/row-->

<footer>
</footer>

<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
<g:javascript library="application"/>
<r:layoutResources/>
</body>
</html>