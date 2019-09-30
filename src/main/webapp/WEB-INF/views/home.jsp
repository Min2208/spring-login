<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h3>Home</h3>
<form:form action="login" method="post" >
    <fieldset>
        <legend>Login</legend>
        <table>
            <tr>
                <td><label>Account</label></td>
                <td><input type="text" name="account"></td>
            </tr>
            <tr>
                <td><label>Password</label></td>
                <td><input type="password" name="password"></td>
            </tr>
            <tr><td><input type="submit" value="login"></td></tr>
<%--            <tr>--%>
<%--                <td><form:label path="account">Account:</form:label></td>--%>
<%--                <td><form:input path="account"  /></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td><form:label path="password">Password:</form:label></td>--%>
<%--                <td><form:input path="password"/></td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td></td>--%>
<%--                <td><form:button>Login</form:button></td>--%>
<%--            </tr>--%>
        </table>
    </fieldset>
</form:form>
</body>
</html>