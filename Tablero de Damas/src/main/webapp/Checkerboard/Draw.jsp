<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tablero de damas</title>
<link rel="stylesheet" href="./drawStyle.css">
</head>
<body>

	<%
	String ancho = request.getParameter("width") != null ? request.getParameter("width"): "2";
	String alto = request.getParameter("height") != null ? request.getParameter("height"): "2";
	int width = Integer.parseInt(ancho);
	int height = Integer.parseInt(alto);
	%>
	
	
	<%!
		public String color(int c1, int c2){
		if(c1%2==0){
			return c2%2==0 ? "black":"red";
		}
		return c2%2==0 ? "red":"black";
	}
	%>
	
</body>
<div class="content">
		<h1>Checkerboard: <%=width%>w X <%=height%>h</h1>
		<% for(int fila=0; fila<height; fila++) {%>
			<div class="fila">
				<% for(int columna=0; columna<width ; columna++) {%>
					<div data="<%=columna%>" class="square <%=color(fila, columna)%>"></div>
				<% } %>	
			</div>
		<% } %>
</div>
</html>