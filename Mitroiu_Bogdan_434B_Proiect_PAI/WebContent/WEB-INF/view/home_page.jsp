<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>Producatori</title>
	

</head>

<body>

	
			<h2>Producatori</h2>
	<br>
	<input type="button" value="Add Producator"
				   onclick="window.location.href='showAddProducator'; return false;"
				   class="add-button"/>
			
		
		
			<table>
				<tr>
					<th>ID</th>
					<th>Nume</th>
					<th>Locatii</th>
					<th>Model</th>
					<th>Action</th>
					
				</tr>
				
			
				<c:forEach var="tempProducatori" items="${producatori}">
					<c:url var="updateLink" value="/showLocatii">
					<c:param name="ProducatorId" value="${tempProducatori.id}" />
					</c:url>
					
					<c:url var="updateProducatori" value="/UpdateProducatori">
					<c:param name="producator_id" value="${tempProducatori.id}" />
					</c:url>
					
					<c:url var="deleteProducatori" value="/DeleteProducatori">
						<c:param name="producator_id" value="${tempProducatori.id}" />
					</c:url>
					
					<c:url var="updateMasini" value="/showMasini">
					<c:param name="producator_id" value="${tempProducatori.id}" />
					</c:url>
					
						
					<tr>
						<td>| ${tempProducatori.id} |</td>
						<td> ${tempProducatori.nume} </td>
						<td>|<a href="${updateLink}">Locatii</a>|</td>
						<td>|<a href="${updateMasini}">Model</a>|</td>
						<td>|<a href="${updateProducatori}">Update</a>
						/<a href="${deleteProducatori}" onclick="if (!(confirm('Are you sure you want to delete this Producator+Locatii_Fabrica?'))) return false">Delete</a></td>
					</tr>
				
				</c:forEach>
						
			</table>
				
	

</body>

</html>









