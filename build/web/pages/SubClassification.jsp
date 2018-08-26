<%-- 
    Document   : SubClassification
    Created on : Aug 4, 2018, 10:16:55 AM
    Author     : User
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Sub Classification</title>
    </head>
    <body><%@ include file="Dashboard.jsp"%>
        <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Sub Classification</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Add Sub Classification
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <form role="form" action="SubClassificationController" method="post">
                                            <div class="form-group">
                                                <label>Title</label>
                                                <input name="txtsubClassificationName" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Select Main classification </label>
                                                <select class="form-control" name="mID" id="main_classification">
                                                   <c:forEach var="item" items="${mainClassifications}">
                                                    <option value="${item.id}">${item.name}</option>
                                                   </c:forEach>
                                                </select>
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
                        </div>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
            
    </body>
</html>

