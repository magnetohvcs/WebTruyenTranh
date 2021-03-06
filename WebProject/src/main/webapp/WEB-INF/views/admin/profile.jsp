<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Managa Toon | Admin</title> 
         <link rel="icon" type="image/png" href="${pageContext.servletContext.contextPath}/dist/img/icon-128.png"/>
    <link rel="stylesheet"  href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback"> 
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/plugins/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/dist/css/adminlte.min.css">
    <link rel="stylesheet"  href="${pageContext.servletContext.contextPath}/assets/bootstrap-toggle-master/css/bootstrap-toggle.css">	
</head>

<body class="hold-transition sidebar-mini">
    <div class="wrapper">
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                </li>
               
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                        <i class="fas fa-expand-arrows-alt"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
                        <i class="fas fa-th-large"></i>
                    </a>
                </li>
            </ul>
        </nav>
        <aside class="main-sidebar sidebar-white-primary elevation-4">
            <div  class="brand-link" style="height: 70px;">
         <a href="${pageContext.servletContext.contextPath}/index.html">
                	<img style="transform: translateY(20px); " src="${pageContext.servletContext.contextPath}/dist/img/logo.svg" class="brand-image img-circle elevation-3" >
                </a>  </div>
            <div class="sidebar">
           
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"   data-accordion="false">
               
                        <li class="nav-item">
                                    <a href="${pageContext.servletContext.contextPath}/admin/create.html" class="nav-link ">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Th??m Truy???n</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                   <a href="${pageContext.servletContext.contextPath}/admin/data.html" class="nav-link ">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>D??? Li???u</p>
                                  </a>
                           </li>
                           <li class="nav-item">
                                   <a href="${pageContext.servletContext.contextPath}/admin/profile.html" class="nav-link active">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Trang c?? nh??n</p>
                                  </a>
                           </li>
                        
                    </ul>
                </nav>
            </div>
        </aside>
        <div class="content-wrapper">
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        
                        <div  style="float:right;">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Trang Ch???</a></li>
                                <li class="breadcrumb-item active">Trang c?? nh??n</li>
                            </ol>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>

            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-9" style="transform: translateX(10%);">
                            <div class="card"  >
                                <div class="card-header">
                                    <h2 class="card-title"> ?????i m???t kh???u </h2>
                                </div>
                                <form  style="margin-left: 10%;" method="POST" action="profile.html" >
                                     
                                    <div class="row g-2 align-items-center" style="margin-top: 2%; margin-bottom:2%;">
                                        <div class="col-md-2">
                                            <label  class="form-label">M???t kh???u c??</label>
                                        </div>
                                        <div class="col-md-6">
                                            <input name="password" type="password" class="form-control" >
                                        </div>
                                     </div>
                                     
                                      <div class="row g-2 align-items-center" style="margin-top: 2%; margin-bottom:2%;">
                                         <div class="col-md-2">
                                            <label  class="form-label">M???t kh???u m???i</label>
                                        </div>
                                        <div class="col-md-6">
                                            <input name="newpassword" type="password" class="form-control" >
                                        </div>  </div>
                                   <div class="row g-2 align-items-center" style="margin-top: 2%; margin-bottom:2%;">      
                                         <div class="col-md-2">
                                            <label  class="form-label">X??c nh???n m???t kh???u</label>
                                        </div>
                                        <div class="col-md-6">
                                            <input name="confirmpassword" type="password" class="form-control" >
                                        </div>  </div>
                                  
                                   
									<div class="row" style="margin-top: 2%; margin-bottom:2%;">
                                       <button type="submit" class="btn btn-primary mb-3" style="margin-left:30%;width: 20%;font-size: medium;">C???p nh???t</button>
                                    </div>
									
                                </form>
                            </div>
                        </div>
                     </div>
                     
                     
                      <div class="row">
                        <div class="col-md-9" style="transform: translateX(10%);">
                            <div class="card"  >
                                <div class="card-header">
                                    <h2 class="card-title"> ?????i email </h2>
                                </div>
                                <form  style="margin-left: 10%;" method="POST" action="profile-email.html" >
                                     
                                    <div class="row g-2 align-items-center" style="margin-top: 2%; margin-bottom:2%;">
                                        <div class="col-md-2">
                                            <label  class="form-label">Email c??</label>
                                        </div>
                                        <div class="col-md-6">
                                            <input name="email" type="email" class="form-control" >
                                        </div>
                                     </div>
                                     
                                      <div class="row g-2 align-items-center" style="margin-top: 2%; margin-bottom:2%;">
	                                         <div class="col-md-2">
	                                            <label  class="form-label">Email m???i</label>
	                                        </div>
	                                        <div class="col-md-6">
	                                            <input name="newemail" type="email" class="form-control" >
	                                        </div>  
                                        </div>
                                   		
                                   	<div class="row g-2 align-items-center" style="margin-top: 2%; margin-bottom:2%;">
                                        <div class="col-md-2">
                                            <label  class="form-label">M???t kh???u</label>
                                        </div>
                                        <div class="col-md-6">
                                            <input name="password" type="password" class="form-control" >
                                        </div>
                                     </div>
                                  
                                   
									<div class="row" style="margin-top: 2%; margin-bottom:2%;">
                                       <button type="submit" class="btn btn-primary mb-3" style="margin-left:30%;width: 20%;font-size: medium;">C???p nh???t</button>
                                    </div>
									
                                </form>
                            </div>
                        </div>
                     </div>
                     
                   </div>
            </section>
        </div>
        <footer class="main-footer">
            
        </footer>
        <aside class="control-sidebar control-sidebar-dark">
        </aside>
    </div>
    <script src="${pageContext.servletContext.contextPath}/plugins/jquery/jquery.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/dist/js/adminlte.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/dist/js/demo.js"></script>		
    <script src="${pageContext.servletContext.contextPath}/assets/bootstrap-toggle-master/js/bootstrap-toggle.js"></script>
	
	
	<script>
  			var obj = JSON.parse('${message}');
  			
  			 $(document).Toasts('create', {
                 class: 'bg-info',
                 title: 'Th??ng b??o',
                 subtitle: '',
                 body: ''+ obj.message
               });
  </script>
</body>

</html>