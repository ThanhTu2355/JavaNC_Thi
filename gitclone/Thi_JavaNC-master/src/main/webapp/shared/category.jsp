<%-- 
    Document   : Left
    Created on : Sep 28, 2023, 12:08:09 PM
    Author     : KHOACNTT
--%>

<%@page import="model.TheLoai"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.TheLoaiDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    TheLoaiDAO tlDAO = new TheLoaiDAO();
    ArrayList<TheLoai> dsTheLoai = tlDAO.getAll();
%>

<div class="card mb-3">
    <h3 class="card-header">Category</h3>  
    <ul class="list-group list-group-flush">    
        <%
                ArrayList<TheLoai> dstl = (ArrayList<TheLoai>)request.getAttribute("dsTheLoai");
                for(TheLoai tl: dsTheLoai)
                {
            %>
        <li class="list-group-item"> <a href="san-pham?maloai=<%=tl.getMaloai()%>">
                <%=tl.getTenloai()%></a> </li>
        <%}%>
    </ul>   
</div>
