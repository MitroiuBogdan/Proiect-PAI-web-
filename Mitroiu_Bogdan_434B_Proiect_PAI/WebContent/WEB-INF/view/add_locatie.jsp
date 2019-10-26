<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<body>

	<h3>Save Locatie</h3>




	<form:form action="saveLocatie" modelAttribute="new_locatie"
		method="GET">
		<form:hidden path="id" />
		<form:hidden path="locatie_id" />

		<table>
			<tbody>
				<tr>
					<td><label>Locatie noua:</label></td>
					<td><form:input path="locatie" /></td>

				</tr>



				<tr>
					<td><label></label></td>
					<td><input type="submit" value="Save" class="save" /></td>
				</tr>


			</tbody>
		</table>


	</form:form>

	<div style=""></div>







</body>






</html>