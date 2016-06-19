<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Menu</title>
<link rel="stylesheet"
    href="${pageContext.request.contextPath}/resources/app/css/styles.css">
</head>

<!-- (1) -->
<sec:authentication property="principal.user" var="user" />

<body>
    <div id="wrapper">
        <h3>This is ${f:h(user.Name)} menu</h3>
        <p>The time on the server is ${serverTime}.</p>
        <!-- (2) -->
        <p>Please select your operation.</p>
    </div>

        <div id="content">
            <table>
                <tr>
                    <td>
                        <form:form action="おした時の動作を書く">
                            <button type="submit">ユーザ登録</button>
                        </form>
                    </td>

                    <td>
                        <form:form action="おした時の動作を書く">
                            <button type="submit">ユーザ検索</button>
                        </form>
                    </td>
                </tr>

                <tr>
                    <td>
                        <form:form action="おした時の動作を書く">
                            <button type="submit">一括ユーザ登録</button>
                        </form>
                    </td>
                    <td>
                        <form:form action="おした時の動作を書く">
                            <button type="submit">一括ユーザ登録結果</button>
                        </form>
                    </td>
                </tr>
            </table>
        </div>

        <!-- <ul>
            <li><a href="${pageContext.request.contextPath}/account">view account</a></li>
        </ul> -->

</body>
</html>