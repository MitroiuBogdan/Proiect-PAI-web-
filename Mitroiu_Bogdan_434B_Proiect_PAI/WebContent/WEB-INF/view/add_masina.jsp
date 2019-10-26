<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<body>

	<h3>Save Masina</h3>




	<form:form action="saveMasina" modelAttribute="new_masina"
		method="GET">
		<form:hidden path="id" />
		<form:hidden path="masina_id" />

		<table>
			<tbody>
				<tr>
					<td><label>Model nou:</label></td>
					<td><form:input path="model" /></td>

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