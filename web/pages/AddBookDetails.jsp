<%-- 
    Document   : MainClassification
    Created on : Aug 4, 2018, 10:02:46 AM
    Author     : User
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            window.onload = function () {
                for (y = 2000; y <= 2500; y++) {
                    var start = 1900;
                    var end = new Date().getFullYear();
                    var options = "";
                    for (var year = start; year <= end; year++) {
                        options += "<option>" + year + "</option>";
                    }
                    document.getElementById("YofPublish").innerHTML = options;
                }

                for (y = 2000; y <= 2500; y++) {
                    var start = 1900;
                    var end = new Date().getFullYear();
                    var options = "";
                    for (var year = start; year <= end; year++) {
                        options += "<option>" + year + "</option>";
                    }
                    document.getElementById("lastPrintYr").innerHTML = options;
                }
            }
            


        </script>
        <script type="text/javascript">
            function changeSubClassification(form) {
                form.action = "changeSubclassificationController";
                form.submit();
            }

        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Book Details</title>


    </head>
    <body>
        <div id="page-wrapper"><%@ include file="Dashboard.jsp"%>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Add Book Details</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Add Book Details
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                  
                                    <form role="form" action="AddBookController" method="post" >
                                        <div class="form-group">
                                            <label>BookID</label>
                                            <input name="bookID" class="form-control" value="${bookID}">
                                        </div>  
                                        <div class="form-group">
                                            <label>Title</label>
                                            <input name="title" class="form-control" value="${title}">
                                        </div>
                                        <div class="form-group">
                                            <label>Author</label>
                                            <input name="auth" class="form-control" value="${auth}">
                                        </div>                                            
                                        <div class="form-group">
                                            <label>Select Main classification </label>
                                            <select class="form-control" name="mainClassificationId" id="main_classification" onChange="changeSubClassification(this.form);">
                                                  <c:forEach var="item" items="${mainClassifications}">
                                                  <option value="${item.id}" <c:if test="${item.id eq mainClassificationId}" >Selected="true"</c:if>>${item.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>                                            
                                       <div class="form-group">
                                            <label>Select Sub classification </label>
                                            <select class="form-control" name="sID" id="sub_classification">
                                                <c:forEach var="sub" items="${subClassifications}">
                                                    <option value="${sub.id}"> ${sub.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>                                          
                                        <div class="form-group">
                                            <label>Year of publishing </label>
                                            <select id="YofPublish" name="YofPublish" class="form-control">
                                            </select>
                                        </div> 
                                        <div class="form-group">
                                            <label>Last printed Year</label>
                                            <select class="form-control" name="lastPrintYr" id="lastPrintYr" >
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>ISBN No</label>
                                            <input name="ISBNno" class="form-control">
                                        </div>                                            
                                        <div class="form-group">
                                            <label>No Of Pages</label>
                                            <input name="NoOfPages" class="form-control">
                                        </div> 
                                        <button type="submit" class="btn btn-default">Submit Button</button>
                                        <button type="reset" class="btn btn-default">Reset Button</button>
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->

                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>

    </body>
</html>
