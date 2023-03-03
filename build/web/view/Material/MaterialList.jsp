<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Materials</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"><!-- comment -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="css/style_banner.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-onix-digital.css">
        <link rel="stylesheet" href="assets/css/animated.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/scroll_to_top.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        
        <!--navbar doc-->
        <!--Boxicons--> 
        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
        <!-- My CSS -->
        <link rel="stylesheet" href="css/style_dashboard.css">

        <style>
            .toast {
                position: fixed;
                top: 0;
                right: 0;
                z-index: 999;
            }

            .toast.show {
                display: block;
                opacity: 1;
            }

            .toast.hide {
                display: none;
                opacity: 0;
            }

        </style>
    </head>
    <body>
            alo alo
        <%--<jsp:include page="header1.jsp"/>--%>
        <!-- SIDEBAR -->
        <jsp:include page="../navigation/sidebar.jsp"/>
        <input type="hidden" id ="status" value ="${requestScope.UpdateSuccess}">
        <div id="success-toast" class="toast hide">
            <div class="toast-header" style="background-color: greenyellow;">
                <strong class="mr-auto">Success</strong>
                <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
            </div>
            <div class="toast-body" style="backgr">
                You updated the successfully Material
            </div>
        </div>
        <input type="hidden" id ="status2" value ="${requestScope.AddSuccess}">

        <div id="success-toast2" class="toast hide">
            <div class="toast-header" style="background-color: greenyellow;">
                <strong class="mr-auto">Success</strong>
                <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
            </div>
            <div class="toast-body" style="backgr">
                You add the successfully Material
            </div>
        </div>
        <div class="main-image">
            <div class="heading_banner container">
                <h1><span style="color: white">Materials</span></h1>
                <a class="button banner_button" href="#">scroll down to see website content &nbsp;<i class="fa fa-hand-point-down"></i></a>
            </div>

        </div>

        <section class="ftco-section">
            <div class="container">
                <!--                <div class="row justify-content-center">
                                    <div class="col-md-6 text-center mb-5">
                                        <h2 class="heading-section">Subject Table</h2>
                                    </div>
                                </div>-->
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="text-center mb-4" style=" font-weight: bold;">FPTU Materials List</h1>
                        <div class="table-wrap">

                            <form method="get" action="list">
                                <table class="auto-style1" style="margin: 15px;">
                                    <tr>
                                        <!--                    <td class="auto-style2" style="text-align: right">
                                                                <label class="form-check-label" for="inlineFormCheck">
                                                                    Enter Material Description or Subject Code: 
                                                                </label>
                                                            </td>-->
                                        <td>
                                            <div class="form-inline">
                                                <div class="input-group">

                                                    <input  placeholder="Enter Material Description or Subject Code: " name="search"  type="text" id="txtKeyword" value="${requestScope.valueSearch}" class="form-control rounded mr-2" style="width:300px;font-size: inherit; margin: 0 10px;" />
                                                    <span class="input-group-btn">
                                                        <input type="submit"  value="Search" id="btnSearch" class="btn btn-success" style="width:100px;" />
                                                    </span>

                                                    <c:if test="${sessionScope.roleName == 'admin' or sessionScope.roleName == 'head_of_crdd'}">
                                                        <a style="margin-left: 700px" class="btn btn-primary" href="editMaterial?id=-1">Add new</a>
                                                    </c:if>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>

                                </table>
                            </form>
                            <div class="container-fluid">
                                <table class="table table-bordered" >
                                    <thead class="thead-primary">
                                        <tr>
                                            <th>Material Description</th>
                                            <th>Author</th>
                                            <th>Publisher</th>
                                            <th>Publisheh hate</th>
                                            <th>Edition</th>
                                            <th>ISBN</th>
                                            <th>IsMainMaterial</th>
                                            <th>IsHardCopy</th>
                                            <th>IsOnline</th>
                                            <!--<th>Note</th>-->

                                            <th>Subject Code</th>

                                            <c:if test="${sessionScope.roleName == 'admin' or sessionScope.roleName == 'head_of_crdd'}">
                                                <th>Status</th>
                                                <th>Edit</th>
                                                <th>Action</th>
                                                </c:if>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${requestScope.data}" var="i">

                                            <tr>
                                                <td>${i.material_description}</td>
                                                <td>${i.author}</td>
                                                <td>${i.publisher}</td>
                                                <td>${i.published_date}</td>
                                                <td>${i.edition}</td>
                                                <td>${i.isbn}</td>
                                                <td>

                                                    <c:if test = "${(i.is_main == 1)}">
                                                        <i class="material-icons">&#xe92f;</i>
                                                    </c:if>
                                                    <c:if test = "${(i.is_main == 0)}">
                                                        <i class="material-icons">&#xE5C9;</i>
                                                    </c:if>

                                                </td>
                                                <td>

                                                    <c:if test = "${(i.is_hard_copy == 1)}">
                                                        <i class="material-icons">&#xe92f;</i>
                                                    </c:if>
                                                    <c:if test = "${(i.is_hard_copy == 0)}">
                                                        <i class="material-icons">&#xE5C9;</i>
                                                    </c:if>
                                                </td>
                                                <td>
                                                    <c:if test = "${(i.is_online == 1)}">
                                                        <i class="material-icons">&#xe92f;</i>
                                                    </c:if>
                                                    <c:if test = "${(i.is_online == 0)}">
                                                        <i class="material-icons">&#xE5C9;</i>
                                                    </c:if>
                                                </td>

                                                <td>${i.subject_code.subject_Code}</td>
                                                <c:if test="${sessionScope.roleName == 'admin' or sessionScope.roleName == 'head_of_crdd'}">

                                                    <td>
                                                        <c:if test = "${(i.status == 1)}">
                                                            Active
                                                        </c:if>
                                                        <c:if test = "${(i.status == 0)}">
                                                            InActive
                                                        </c:if>
                                                    </td>
                                                   

                                                    <td><a href="editMaterial?id=${i.id}" class="btn btn-warning">Update</a></td>           
                                                    <td><button  onclick="cfDelete(${i.id})" class="btn btn-danger">Change Status</button></td>
                                                </c:if>

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
        <script >
            function cfDelete(x) {
                if (confirm("Are you sure to delete this record!")) {
                    window.location.href = 'deleteMaterial?id=' + x;
                }
            }
        </script>
        <c:if test="${param['index']==null }">   
            <c:set var = "index" scope = "page" value = "1"/>
        </c:if>
        <c:if test="${param['index']!=null}">
            <c:set var = "index" scope = "page" value = "${param['index']}"/>
        </c:if>
        <nav aria-label="...">
            <ul class="pagination">
                <li class="page-item <c:if test="${index==1}">disabled
                    </c:if>">
                    <c:if test ="${requestScope.check != 'search'}">
                    <a class="page-link" href="list?index=${index-1}" >Previous</a>
                    </c:if>
                    <c:if test ="${requestScope.check == 'search'}">
                        <%--<c:set var="s" value="${requestScope.valueSearch}"/>--%>
                        <a class="page-link" href="list?index=${index-1}&search=${requestScope.valueSearch}">Previous</a>
                    </c:if>
                </li>
                <li class="page-item active">
                    <a class="page-link" href="list?index=${index}">${index}</a>
                </li>
                <li class="page-item <c:if test="${index==numberPage+1}">disabled　
                    </c:if>">
                    <c:if test ="${requestScope.check != 'search'}">
                        <a class="page-link" href="list?index=${index+1}">Next</a>
                    </c:if>
                    <c:if test ="${requestScope.check == 'search'}">
                        <%--<c:set var="s" value="${requestScope.valueSearch}"/>--%>
                        <a class="page-link" href="list?index=${index+1}&search=${requestScope.valueSearch}">Next</a>
                    </c:if>
                </li>
            </ul>
        </nav>

        <jsp:include page="../navigation/footer1.jsp"/>
        <script type="text/javascript">
            function showToast() {
                const successToast = document.getElementById('success-toast');
                successToast.classList.remove('hide');
                successToast.classList.add('show');
                setTimeout(() => {
                    successToast.classList.remove('show');
                    successToast.classList.add('hide');
                }, 5000);
            }
            function showToast2() {
                const successToast = document.getElementById('success-toast2');
                successToast.classList.remove('hide');
                successToast.classList.add('show');
                setTimeout(() => {
                    successToast.classList.remove('show');
                    successToast.classList.add('hide');
                }, 5000);
            }

            var status = document.getElementById("status").value;
            var status2 = document.getElementById("status2").value;
            if (status === "success") {
                showToast();
                // sau khi dùng xong thì xóa session
              localStorage.removeItem("UpdateSuccess");
            }
            if (status2 === "success") {
                showToast2();
                localStorage.removeItem("AddSuccess");
            }
        </script>
        <script src="css/Admin_dashboard.js"></script>
    </body>
</html>

<script src="js/jquery.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/owl-carousel.js"></script>
<script src="assets/js/animation.js"></script>
<script src="assets/js/imagesloaded.js"></script>
<script src="assets/js/custom.js"></script>
<script src="assets/js/scroll_to_top.js"></script>