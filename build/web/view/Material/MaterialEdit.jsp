<%-- 
    Document   : CurriculumUpdate
    Created on : Jan 30, 2023, 4:18:17 PM
    Author     : Admin
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"><!-- comment -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

        <title>FPT Learning Materials System</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-onix-digital.css">
        <link rel="stylesheet" href="assets/css/animated.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/scroll_to_top.css">
    </head>
    <body>
        <jsp:include page="../navigation/header1.jsp"/>

        <div class="container-fluid" style="margin-top: 115px">
            <h1 style="text-align: center;">Edit Material</h1>
            <div style="display: flex; justify-content: center">
                <form action="editMaterial" method="post" style="padding: 5px; width: 50%">
                    <label style="font-weight: bold">Material Description *:</label>
                    <c:set var="c" value ="${requestScope.material}"/>
                    <textarea  placeholder="Input description of the material here" style="height: 250px" required  name="mdescription" class="form-control">${c.material_description}</textarea>

                    <c:if test="${requestScope.errorMdes != null}">
                        <div style="color: red; text-align: center; font-size: bolder">${requestScope.errorMdes}</div>

                    </c:if>

                    <label style="font-weight: bold">Author:</label>
                    <input placeholder="Input author of material" type="text" name="author" value="${c.author}" class="form-control">

                    <c:if test="${requestScope.errorAuthor != null}">
                        <div style="color: red; text-align: center; font-size: bolder">${requestScope.errorAuthor}</div>

                    </c:if>
                    <label style="font-weight: bold">Publisher :</label>
                    <input placeholder="Input name of individual/group published" type="text" name="publisher" value="${c.publisher}" class="form-control">
                    <label style="font-weight: bold">Published Date:</label>
                    <input placeholder="Input date of publishing"type="text" name="pDate" value="${c.published_date}" class="form-control">

                    <c:if test="${requestScope.errorYear != null}">
                        <div style="color: red; text-align: center; font-size: bolder">${requestScope.errorYear}</div>

                    </c:if>

                    <label style="font-weight: bold">EDITION :</label>
                    <input placeholder="Input the edition of material" type="text" name="edition" value="${c.edition}"  class="form-control">
                    <label style="font-weight: bold">ISBN :</label>
                    <input placeholder="Input The International Standard Book Number of material" type="text" name="isbn" value="${c.isbn}" class="form-control">


                    <label style="font-weight: bold">Is Main true :</label>
                    <!--                            True      <input type="radio" id="id" name="isMain" value="1">
                               false <input type="radio" id="id" name="isMain" value="0" ><br>-->

                    
                        <c:if test = "${(c.is_main == 1)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            True <input type="radio" id="id" name="isMain" value="1" checked>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="isMain" value="0" ><br>
                        </c:if>
                        <c:if test = "${(c.is_main == 0)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            True <input type="radio" id="id" name="isMain" value="1">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="isMain" value="0" checked><br>
                        </c:if>
                        <c:if test = "${(c.is_main != 1 and c.is_main != 0)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            True <input type="radio" id="id" name="isMain" value="1" checked>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="isMain" value="0" ><br>
                        </c:if>




                    <label style="font-weight: bold">Is Hard Copy:</label>

                   
                        <c:if test = "${(c.is_hard_copy == 1)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                          True <input type="radio" id="id" name="isHCopy" value="1" checked>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="isHCopy" value="0" ><br>
                        </c:if>
                        <c:if test = "${(c.is_hard_copy == 0)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            True <input type="radio" id="id" name="isHCopy" value="1">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="isHCopy" value="0" checked ><br>
                        </c:if>

                        <c:if test = "${(c.is_hard_copy != 1 and c.is_hard_copy != 0)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                           True <input type="radio" id="id" name="isHCopy" value="1" checked>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                           &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="isHCopy" value="0" ><br>
                        </c:if>

                

                    <label style="font-weight: bold">Is Online:</label>


                        
                        <c:if test = "${(c.is_online == 1)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                          True <input type="radio" id="id" name="isOnline" value="1" checked>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="isOnline" value="0" ><br>
                        </c:if>
                        <c:if test = "${(c.is_online == 0)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            True <input type="radio" id="id" name="isOnline" value="1">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="isOnline" value="0" checked><br>
                        </c:if>

                        <c:if test = "${(c.is_online != 1 and c.is_online != 0)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                           True <input type="radio" id="id" name="isOnline" value="1" checked>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                           &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="isOnline" value="0" ><br>
                        </c:if>

                 

                    <label style="font-weight: bold">Note:</label>
                    <textarea  placeholder="Input note" style="height: 250px"  name="note" class="form-control" id="editor2">${c.note}</textarea>

                    <c:if test="${requestScope.errorNote != null}">
                        <div style="color: red; text-align: center; font-size: bolder">${requestScope.errorNote}</div>
                    </c:if>

                    <label style="font-weight: bold">Subject Code *:</label>
                    <select name = "sjCode" class="form-control" required>
                        <c:forEach items="${requestScope.dataSubject}" var = "d">
                            <option value="${d.subject_Code}">${d.subject_Code}</option>
                        </c:forEach>
                    </select>
                    <label style="font-weight: bold">Status:</label>

                          
                        <c:if test = "${(c.status == 1)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                          True <input type="radio" id="id" name="status" value="1" checked>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                          &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="status" value="0" ><br>
                        </c:if>
                        <c:if test = "${(c.status == 0)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            True <input type="radio" id="id" name="status" value="1">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="status" value="0" checked ><br>
                        </c:if>

                        <c:if test = "${(c.status != 1 and c.status != 0)}">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                           True <input type="radio" id="id" name="status" value="1" checked>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                           &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            false <input type="radio" id="id" name="status" value="0" ><br>
                        </c:if>
            
                    <button style="margin: 10px" type="submit" class="btn btn-primary">Edit</button>
                </form>
            </div>
        </div>

        <script type="text/javascript" src="js/ckeditor/ckeditor.js"></script>

    </body>
    <script>

        var editor = CKEDITOR.replace('editor2');
    </script>
</html>
