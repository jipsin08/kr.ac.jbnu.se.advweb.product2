<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3>Registration Page</h3>

<form id="form1" name="form1" enctype="multipart/form-data" method="post">
    <table border="1">
        <tr>
            <td>��ǰ��</td>
            <td><input type="text" name="productName" id="productName"></td>
        </tr>
        <tr>
            <td>����</td>
            <td><input type="text" name="productPrice" id="productPrice"></td>
        </tr>
        <tr>
            <td>��ǰ����</td>
            <td><textarea rows="5" cols="60" name="productDesc" id="productDesc"></textarea></td>
        </tr>
        <tr>
            <td>��ǰ�̹���</td>
            <td><input type="file" name="productPhoto" id="productPhoto"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="button" value="���" id="addBtn">
                <input type="button" value="���" id="listBtn">
            </td>
        </tr>
    </table>
</form>

</body>
</html>