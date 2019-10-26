<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>Locatii</title>
	

</head>

<body>

	
			<h3>Producator=${producator.nume}</h3>
			<hr>
	
	
	
		
			
		
			<table>
				<tr>
				
					<th>ID</th>
					<th>Nume</th>
					<th>Locatie_id</th>	
					<th>Action</th>
				</tr>
				
			
				<c:forEach var="tempLocatii" items="${locatii}">
					<c:url var="updateLocatii" value="/LocatiiUpdate">
						<c:param name="Locatie_id" value="${tempLocatii.id}" />
					</c:url>
					
					<c:url var="deleteLocatii" value="/DeleteLocatii">
						<c:param name="Locatie_id" value="${tempLocatii.id}" />
					</c:url>
								
					<tr>
						<td>| ${tempLocatii.id} |</td>
						<td> ${tempLocatii.locatie} </td>
						<td> ${tempLocatii.locatie_id} </td>
						<td>|<a href="${updateLocatii}">Update</a>
							/<a href="${deleteLocatii}"
							   onclick="if (!(confirm('Are you sure you want to delete this Locatie_fabrica?'))) return false">Delete</a>
						|</td>
					</tr>
				
				</c:forEach>
						
			</table>
				
		
	
	
	<br><br>
	<c:url var="updateLink" value="/addLocatie">
		   <c:param name="ProducatorId" value="${producator.id}" />
	</c:url>
	<h3><a href="${updateLink}">Adauga locatie noua</h3>
	<hr>
	<br>
	<c:url var="back" value="/back"></c:url>
	<h2><a href="${back}">Back</h2>
	</body>			   
			
	

</body>
