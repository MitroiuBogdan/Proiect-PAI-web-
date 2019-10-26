<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>


<html>

<body>

	<h3>Add Producator</h3>


	<br>

	<form:form action="saveProducator" modelAttribute="new_producator"
		method="GET">
		
		<form:hidden path="id" />
	
		<table>
			<tbody>
				<tr>
					<td><label>Producator::</label></td>
					<td><form:input path="nume" /></td>

				</tr>



				<tr>
					<td><label></label></td>
					<td><input type="submit" value="Save" class="save" /></td>
				</tr>


			</tbody>
		</table>


	</form:form>


	



</body>

</html>