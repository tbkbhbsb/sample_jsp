<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>検索結果</title>
<link rel="stylesheet"
    href="${pageContext.request.contextPath}/resources/app/css/styles.css">
</head>
<body>
    <h3>検索結果</h3>
    <hr />
    <div id="resultList">
<!--         <ul> -->
            <!-- (3) -->
            <form:form modelAttribute="saerchResult">
                <table>
                <c:forEach items="${results}" var="result">
                    <tr>
                        <td><form:radiobuttons path="choice" ></form></td>
                        <td>${f:h(result.userId)}</td>
                        <td>${f:h(result.name)}</td>
                        <td>${f:h(result.dateOfBirth)}</td>
                        <td>${f:h(result.phoneNumber)}</td>
                        <td>${f:h(result.authority)}</td>
                        <td>${f:h(result.status)}</td>
                        <!-- <c:choice>
                            <c:when test="${result.status == 'RMVD'}">
                        </c:choice> -->
                    </tr>
                    </c:forEach>
                </table>
                <input type="submit" name="update" value="update" /> <!-- (2) -->
                <input type="submit" name="delete" value="delete" /> <!-- (3) -->
            </form>
        <!-- </ul> -->
    </div>

<!-- <form:form>
    <input type="submit" name="" value="Back" />
    <input type="submit" name="redo" value="Register" />
</form:form> -->

</body>
</html>