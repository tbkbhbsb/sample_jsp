<!DOCTYPE html>
<html>
<head>
<title>Search Form</title>
<link rel="stylesheet"
    href="${pageContext.request.contextPath}/resources/app/css/styles.css">
</head>
<body>
    <div id="wrapper">
        <p>Please input search criteria.</p>
    </div>

    <div>
         <!-- (1) -->
        <c:if test="${param.error}">
            <!-- (2) -->
            <t:messagesPanel messagesType="error"
                messagesAttributeName="SPRING_SECURITY_LAST_EXCEPTION" />
        </c:if>

        <!-- (3) -->
        <form:form action="${pageContext.request.contextPath}/searchResult"　method="post" modelAttribute="SaerchForm">
            <table>
                <tr>
                    <td><form:label path="SaerchForm.userId">ユーザID:</form:label></td>
                    <td><form:input path="SaerchForm.userId"/></td>
                    <td><form:errors path="SaerchForm.userId"/></td>
                </tr>
                <tr>
                    <td><form:label path="SaerchForm.name">ユーザ名:</form:label></td>
                    <td><form:input path="SaerchForm.name"/></td>
                    <td><form:errors path="SaerchForm.name" /></td>
                </tr>
                <tr>
                    <td><form:label path="SaerchForm.dateOfBirth">生年月日:</form:label></td>
                    <td><form:input path="SaerchForm.dateOfBirth"/></td>
                    <td><form:errors path="SaerchForm.dateOfBirth" /></td>
                </tr>
                <tr>
                    <td><form:label path="SaerchForm.address">住所:</form:label></td>
                    <td><form:input path="SaerchForm.address"/></td>
                    <td><form:errors path="SaerchForm.address" /></td>
                </tr>
                <tr>
                    <td><form:label path="SaerchForm.phoneNumber">住所:</form:label></td>
                    <td><form:input path="SaerchForm.phoneNumber"/></td>
                    <td><form:errors path="SaerchForm.phoneNumber"/></td>
                </tr>
                 <tr>
                    <td><form:label path="SaerchForm.authority">権限:</form:label></td>
                    <td>
                        <form:select path="SaerchForm.authority">
                            <form:option value="USER">USER</option>
                            <form:option value="ADMIN">ADMIN</option>
                        </form:select>
                    </td><!-- (5) -->
                    <td><form:errors path="SaerchForm.authority" /></td>

                </tr>
                 <tr>
                    <td><form:label path="SaerchForm.status">状態:</form:label></td>
                    <td>
                        <form:select path="SaerchForm.status">
                            <form:option value="ACTV">ACTV</option>
                            <form:option value="INIT">INIT</option>
                            <form:option value="RMVD">RMVD</option>
                        </form:select>
                    </td><!-- (5) -->
                    <td><form:errors path="SaerchForm.status"/></td>
                    <td><label for="status">状態:</label></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><button type="submit" name="Search" value="">検索</button></td>
                </tr>
            </table>
        </form:form>
    </div>


</body>
</html>