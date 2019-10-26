<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>Modele</title>
	

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h3>Producator=${producator.nume}</h3>
		</div>
	</div>
	
	
	
		
			
		
			<table>
				<tr>
				
					<th>ID</th>
					<th>Nume</th>
					<th>Masina_id</th>	
					<th>Action</th>
				</tr>
					
			
				<c:forEach var="tempMasina" items="${masini}">
					<c:url var="updateMasina" value="/updateMasina">
						<c:param name="Masina_id" value="${tempMasina.id}" />
					</c:url>
					
					<c:url var="deleteMasina" value="/DeleteMasina">
						<c:param name="Masina_id" value="${tempMasina.id}" />
					</c:url>
						
					<tr>
						<td>| ${tempMasina.id}   |</td>
						<td> ${tempMasina.model} </td>
						<td> ${tempMasina.masina_id} </td>
						<td>|<a href="${updateMasina}">Update</a>
							/<a href="${deleteMasina}"
							   onclick="if (!(confirm('Are you sure you want to delete this Masina?'))) return false">Delete</a>
						|</td>
					</tr>
				
				</c:forEach>
						
			</table>
				
		
	
	
	<br><br>
	<c:url var="updateLink" value="/addMasina">
		   <c:param name="ProducatorId" value="${producator.id}" />
	</c:url>
	<h3><a href="${updateLink}">Adauga masina noua</h3>
	<hr>
	<br>
	<c:url var="back" value="/back"></c:url>
	<h2><a href="${back}">Back</h2>
	</body>
	