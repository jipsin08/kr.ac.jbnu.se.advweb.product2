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
            <td>상품명</td>
            <td><input type="text" name="productName" id="productName"></td>
        </tr>
        <tr>
            <td>가격</td>
            <td><input type="text" name="productPrice" id="productPrice"></td>
        </tr>
        <tr>
            <td>상품설명</td>
            <td><textarea rows="5" cols="60" name="productDesc" id="productDesc"></textarea></td>
        </tr>
        <tr>
            <td>상품이미지</td>
            <td><input type="file" name="productPhoto" id="productPhoto"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="button" value="등록" id="addBtn">
                <input type="button" value="목록" id="listBtn">
            </td>
        </tr>
    </table>
</form>

</body>
</html>