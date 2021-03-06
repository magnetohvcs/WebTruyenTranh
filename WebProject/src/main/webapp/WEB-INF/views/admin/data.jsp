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
	 <link rel="stylesheet"
    href="${pageContext.servletContext.contextPath}/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet"
    href="${pageContext.servletContext.contextPath}/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet"
    href="${pageContext.servletContext.contextPath}/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
<link rel="stylesheet"
    href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/plugins/fontawesome-free/css/all.min.css">
  
  
  <!-- DataTables -->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  
  
</head>

<body class="hold-transition sidebar-mini">
    <div class="wrapper">
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="${pageContext.servletContext.contextPath}/index.html" class="nav-link">Home</a>
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
                             <a href="${pageContext.servletContext.contextPath}/admin/create.html" class="nav-link">
                               <i class="far fa-circle nav-icon"></i>
                                   <p>Th??m Truy???n</p>
                                </a>
                                </li>
                                <li class="nav-item">
                                    <a href="${pageContext.servletContext.contextPath}/admin/data.html" class="nav-link active">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>D??? Li???u</p>
                                    </a>
                             </li>
                               <li class="nav-item">
                                   <a href="${pageContext.servletContext.contextPath}/admin/profile.html" class="nav-link ">
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
                        <div class="col-sm-6">
                            <h1>T??c Gi??? & Th??? Lo???i & Tr???ng Th??i</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Trang Ch???</a></li>
                                <li class="breadcrumb-item active">T??c Gi??? & Th??? Lo???i & Tr???ng Th??i</li>
                            </ol>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>

            <section class="content">
                <div class="container-fluid">
                   <div class="row">
                    <!-- Author -->
                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-header">
                                    <h3 class="card-title" style="padding-right: 20px;">T??c Gi???</h3>
                                   <a href="#addAuthor" class="btn btn-sm btn-primary"  data-toggle="modal"><i class="fa fa-plus" aria-hidden="true"> </i> Th??m T??c Gi???</a>     
                                </div>
                                <div class="card-body p-0">
                                    <table id="tableAuthor" class="table table-sm">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>T??n</th>
                                                <th>Ch???nh s???a</th>
                                                <th>X??a</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="iterator" items="${Authors}">
                                                <tr>
                                                    <td>${iterator.getId()}</td>
                                                    <td>${iterator.getName()}</td>
                                                    <td>
                                                        <a href="#editAuthor" class="btn btn-info btn-sm" data-toggle="modal" onclick="editAuthor(this)">
                                                        	<i class="fas fa-pencil-alt"> </i>
                                                        </a>
                                                    </td>
                                                    <td>
                                                        <a href="#delAuthor"  class="btn btn-danger btn-sm" data-toggle="modal" onclick="delAuthor(this)"> 
                                                         	<i class="fas fa-trash"></i>
							                              </a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table> 
                                </div>
                            </div>
                        </div>
                         <!--end Author -->
                        <!-- /.col -->
                        
                         <!-- category -->
                        <div class="col-md-6" >
                            <div class="card">
                                <div class="card-header">
                                    <h3 class="card-title" style="padding-right: 20px;">Th??? Lo???i</h3>
                                    <a href="#addCategory" class="btn btn-sm btn-primary"   data-toggle="modal"><i class="fa fa-plus" aria-hidden="true"> </i> Th??m Th??? Lo???i</a>     
                                    
                                </div>
                                <div class="card-body p-0">
                                  <table id="tableCategory" class="table table-sm">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Th??? Lo???i</th>
                                                <th>Ch???nh S???a</th>
                                                <th>X??a</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                               				  <c:forEach var="iterator" items="${Categories}">
                                                <tr>
                                                    <td>${iterator.getId()}</td>
                                                    <td >${iterator.getName()}</td>
                                                    <td>
                                                        <a href="#editCategory" class="btn btn-info btn-sm" data-toggle="modal" onclick="editCategory(this)">
                                                        	<i class="fas fa-pencil-alt"> </i>
                                                        </a>
                                                    </td>
                                                    <td>
                                                        <a href="#delCategory" class="btn btn-danger btn-sm"  data-toggle="modal" onclick="delCategory(this)">
                                                        	<i class="fas fa-trash"></i>
                                                        </a>
                                                    </td>
                                                </tr>
                                            </c:forEach>          
                                        </tbody>
                                    </table> 
                                </div>
                            </div>
                        </div>
                           <!-- end category -->
                     </div>
                     
                     <div class="row">
	                     <div class="col">
	                            <div class="card">
	                                <div class="card-header">
	                                    <h3 class="card-title" style="padding-right: 20px;">Truy???n</h3>
	                                </div>
	                                <div class="card-body p-0">
	                                    <table id="tableStory" class="table table-sm  ">
	                                        <thead>
	                                            <tr>
	                                                <th>#</th>
	                                                <th>H??nh ???nh</th>
	                                                <th>T??n</th>
	                                                <th>T??c Gi???</th>
	                                                <th>Th??? Lo???i</th>
	                                                <th>N???i Dung</th>
	                                                <th>C??c Ch????ng</th>
	                                                <th>Tr???ng Th??i</th>
	                                                <th>Th??m Ch????ng</th>
	                                                <th>Ch???nh s???a</th>
	                                              	<th>X??a</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody>
	                                            <c:forEach var="iterator" items="${Stories}">
	                                                <tr>
	                                                    <td>${iterator.getId()}</td>
	                                                    <td><a href="./view.html?id=${iterator.getId()}" class="edit" ><img width="100" class="rounded mx-auto d-block"  src="data:image/jpg;base64,${iterator.getImage()}"/></a> </td>
	                                                    <td width="200">${iterator.getName()}</td>
	                                                    <td>${iterator.getNameAuthor()}</td>
	                                                    <td>${iterator.listCategory("<br>")}</td>
	                                                 	<td width="200" >${iterator.getDescription256()}</td>
	                                                 	<td>${iterator.getlistChaperstr()}</td>
	                                                    <td>${iterator.getStatus()}</td>
	                                                     <td>
	                                                        <a href="./newChap.html?id=${iterator.getId()}" class="btn btn-primary btn-sm" ><i class="fas fa-plus"> </i></a>
	                                                    </td>
	                                                    <td>
	                                                        <a href="./edit-story.html?id=${iterator.getId()}" class="btn btn-info btn-sm" ><i class="fas fa-pencil-alt" aria-hidden="true"></i></a>
	                                                    </td>
	                                                    <td>
	                                                       <a href="#delStory" class="btn btn-danger btn-sm"  data-toggle="modal" onclick="delStory(this)">
                                                        		<i class="fas fa-trash"></i>
                                                        	</a>
                                                        </td>
	                                                </tr>
	                                            </c:forEach>
	                                        </tbody>
	                                    </table> 
	                                </div>
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

 
  <!-- DataTables  & Plugins -->
  <script src="${pageContext.servletContext.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
  <script   src="${pageContext.servletContext.contextPath}/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
  <script  src="${pageContext.servletContext.contextPath}/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
  <script   src="${pageContext.servletContext.contextPath}/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
  <script  src="${pageContext.servletContext.contextPath}/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/plugins/jszip/jszip.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/plugins/pdfmake/pdfmake.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/plugins/pdfmake/vfs_fonts.js"></script>
  <script src="${pageContext.servletContext.contextPath}/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/plugins/datatables-buttons/js/buttons.print.min.js"></script>
  <script src="${pageContext.servletContext.contextPath}/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
  <!-- AdminLTE App -->
 
  <!-- AdminLTE for demo purposes -->

	
<!-- Add author -->
 <div class="modal fade" id="addAuthor" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Th??m t??c gi???</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
          
                  <form:form modelAttribute="author" action="data-addAuthor.html">
                        <form:input path="id" type="hidden" />
                        <div class="form-group">
                            <label for="author-name" class="col-form-label">T??n t??c gi???</label>
                            <form:input path="name" type="text" class="form-control" id="author-name" placeholder="T??n t??c gi???" />
                        </div>
                        
                        <div class="modal-footer">
                            <button class="btn btn-secondary" data-dismiss="modal">????ng</button>
                            <button type="submit" class="btn btn-primary">L??u</button>
                        </div>
                    </form:form> 
                </div>
            </div>
        </div>
    </div>
<!-- ENd add author -->

<!-- Add Category -->
<div class="modal fade" id="addCategory" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Th??m th??? lo???i</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
          
                  <form:form modelAttribute="category" action="data-addCategory.html">
                        <form:input path="id" type="hidden" />
                        <div class="form-group">
                            <label for="category-name" class="col-form-label">Th??? lo???i</label>
                            <form:input path="name" type="text" class="form-control" id="category-name" placeholder="T??n th??? lo???i" />
                        </div>
                        
                        <div class="modal-footer">
                            <button class="btn btn-secondary" data-dismiss="modal">????ng</button>
                            <button type="submit" class="btn btn-primary">L??u</button>
                        </div>
                    </form:form> 
                </div>
            </div>
        </div>
    </div>
<!-- End Add Category -->

<!-- Edit Category -->
<div class="modal fade" id="editCategory" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Ch???nh s???a Th??? lo???i</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
          
                  <form:form modelAttribute="category" action="data-editCategory.html">
                        
                        <div class="form-group">
                            <label id="edit-category-id-label" class="col-form-label">#</label>
                            <form:input path="id" id="edit-category-id" type="hidden" />
                        </div>
                        <div class="form-group">
                            <label for="edit-category-name" class="col-form-label">Th??? lo???i</label>
                            <form:input path="name" type="text" class="form-control" id="edit-category-name" placeholder="Th??? lo???i" />
                        </div>
                        
                        <div class="modal-footer">
                            <button class="btn btn-secondary" data-dismiss="modal">????ng</button>
                            <button type="submit" class="btn btn-primary">L??u</button>
                        </div>
                    </form:form> 
                </div>
            </div>
        </div>
    </div>
<!-- End Edit Category -->

<!-- delete story -->
<div class="modal fade" id="delStory" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">B???n C?? Mu???n X??a Truy???n n??y kh??ng?</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
          
                  <form:form modelAttribute="story" action="delete-story.html">
                        
                        <div class="form-group">
                           <label id="del-story-name-label" class="col-form-label">T??n truy???n</label>
                            <form:input path="id" id="del-story-id" type="hidden" />
                        </div>
                        <div class="form-group">
                            
                            <img style="max-width:450px;" id="del-story-img" />
                        </div>
                        
                        <div class="modal-footer">
                            <button class="btn btn-secondary" data-dismiss="modal">????ng</button>
                            <button type="submit" class="btn btn-primary">L??u</button>
                        </div>
                    </form:form> 
                </div>
            </div>
        </div>
    </div>
<!-- end delete story -->

<!-- Delete Category -->
<div class="modal fade" id="delCategory" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">B???n C?? Mu???n X??a Th??? lo???i n??y kh??ng?</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
          
                  <form:form modelAttribute="category" action="data-delCategory.html">
                        
                        <div class="form-group">
                            <label id="del-category-id-label" class="col-form-label">#</label>
                            <form:input path="id" id="del-category-id" type="hidden" />
                        </div>
                        <div class="form-group">
                            <label id="del-category-name-label" class="col-form-label">T??c gi???</label>
                            <form:input path="name" type="hidden" class="form-control" id="del-category-name" />
                        </div>
                        
                        <div class="modal-footer">
                            <button class="btn btn-secondary" data-dismiss="modal">????ng</button>
                            <button type="submit" class="btn btn-primary">L??u</button>
                        </div>
                    </form:form> 
                </div>
            </div>
        </div>
    </div>
<!-- End Delete Category -->

<!-- Edit author -->
 <div class="modal fade" id="editAuthor" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Ch???nh S???a Th??ng Tin T??c Gi???</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
          
                  <form:form modelAttribute="author" action="data-editAuthor.html">
                        
                        <div class="form-group">
                            <label id="edit-author-id-label" class="col-form-label">#</label>
                            <form:input path="id" id="edit-author-id" type="hidden" />
                        </div>
                        <div class="form-group">
                            <label for="edit-author-name" class="col-form-label">T??n t??c gi???</label>
                            <form:input path="name" type="text" class="form-control" id="edit-author-name" placeholder="T??n t??c gi???" />
                        </div>
                        
                        <div class="modal-footer">
                            <button class="btn btn-secondary" data-dismiss="modal">????ng</button>
                            <button type="submit" class="btn btn-primary">L??u</button>
                        </div>
                    </form:form> 
                </div>
            </div>
        </div>
    </div>
<!-- ENd edit author -->


<!-- del author -->
 <div class="modal fade" id="delAuthor" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">B???n C?? Mu???n X??a T??c Gi???</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
          
                  <form:form modelAttribute="author" action="data-delAuthor.html">
                        
                        <div class="form-group">
                            <label id="del-author-id-label" class="col-form-label">#</label>
                            <form:input path="id" id="del-author-id" type="hidden" />
                        </div>
                        <div class="form-group">
                            <label id="del-author-name-label" class="col-form-label">T??c gi???</label>
                            <form:input path="name" type="hidden" class="form-control" id="del-author-name" />
                        </div>
                        
                        <div class="modal-footer">
                            <button class="btn btn-secondary" data-dismiss="modal">????ng</button>
                            <button type="submit" class="btn btn-primary">L??u</button>
                        </div>
                    </form:form> 
                </div>
            </div>
        </div>
    </div>
<!-- ENd del author -->

  <script>
  
  		function delStory(id){
  			var root = id.parentNode.parentNode;
  		  $("#del-story-id").val(root.getElementsByTagName("td")[0].textContent);
          $("#del-story-name-label").text(root.getElementsByTagName("td")[2].textContent);
          $("#del-story-img").attr("src", root.getElementsByTagName("img")[0].src);
  		}
  
        // edit author
        function editAuthor(id) {
            var root = id.parentNode.parentNode;
            $("#edit-author-id-label").text("T??c Gi??? #" + root.getElementsByTagName("td")[0].textContent);
            $("#edit-author-id").val(root.getElementsByTagName("td")[0].textContent);
            $("#edit-author-name").val(root.getElementsByTagName("td")[1].textContent);
          
        }
        
        function delAuthor(id){
        	 var root = id.parentNode.parentNode;
             $("#del-author-id-label").text("S??? Th??? T??? : \t" + root.getElementsByTagName("td")[0].textContent);
             $("#del-author-id").val(root.getElementsByTagName("td")[0].textContent);
             $("#del-author-name-label").text("T??n : \t"+root.getElementsByTagName("td")[1].textContent)
             $("#del-author-name").val(root.getElementsByTagName("td")[1].textContent);
           
        }
        
        function editCategory(id) {
            var root = id.parentNode.parentNode;
            $("#edit-category-id-label").text("Th??? lo???i #" + root.getElementsByTagName("td")[0].textContent);
            $("#edit-category-id").val(root.getElementsByTagName("td")[0].textContent);
            $("#edit-category-name").val(root.getElementsByTagName("td")[1].textContent);
          
        }
        
        function delCategory(id) {
       	 	var root = id.parentNode.parentNode;
            $("#del-category-id-label").text("S??? Th??? T??? : \t" + root.getElementsByTagName("td")[0].textContent);
            $("#del-category-id").val(root.getElementsByTagName("td")[0].textContent);
            $("#del-category-name-label").text("T??n : \t"+root.getElementsByTagName("td")[1].textContent)
            $("#del-category-name").val(root.getElementsByTagName("td")[1].textContent);
       }
      
    </script>
  <script>
  $(function () {
	  $("#tableStory").DataTable({
	        "responsive": true, "lengthChange": false, "autoWidth": false
	      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
	  $("#tableCategory").DataTable({
	        "responsive": true, "lengthChange": false, "autoWidth": false
	      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
	  $("#tableAuthor").DataTable({
	        "responsive": true, "lengthChange": false, "autoWidth": false
	      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
  });
  
  
  
</script>
</body>

</html>