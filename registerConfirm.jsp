<h1>登録情報確認</h1>
<form:form modelAttribute="registerForm"
    action="${pageContext.request.contextPath}/user/registerConfirm">

<form:label path="userId">ユーザID:</form:label>
        ${f:h(registerForm.userId)}
        <form:hidden path="userId" />

    <br>
        <form:label path="Name">ユーザ名:</form:label>
        ${f:h(registerForm.Name}
        <form:hidden path="Name" />
    <br>
        <form:label path="dateOfBirth">生年月日:</form:label>
        ${f:h(registerForm.dateOfBirth)}
        <form:hidden path="dateOfBirth" />
    <br>
        <form:label path="address">住所:</form:label>
        ${f:h(registerForm.address)}
        <form:hidden path="address" />
    <br>
        <form:label path="phoneNumber">電話番号:</form:label>
        ${f:h(registerForm.phoneNumber)}
        <form:hidden path="phoneNumber" />
    <br>
        <form:label path="authority">権限:</form:label>
        ${f:h(registerForm.authority)}
        <form:hidden path="authority" />
    <br>

    <input type="submit" name="redo" value="Back" /> <!-- (2) -->
    <input type="submit" value="Register" /> <!-- (3) -->
</form:form>