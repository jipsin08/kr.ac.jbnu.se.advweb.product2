<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Registration</title>

<script lang = "javascript">
$(document).ready(function(){
    // ��ǰ ��� ��ȿ���˻�
    $("#addBtn").click(function(){
        var productName = $("#productName").val();
        var productPrice = $("#productPrice").val();
        var productDesc = $("#productDesc").val();
        var productPhoto = $("#productPhoto").val();

        if(productName == "") {
            alert("��ǰ���� �Է����ּ���");
            productName.foucs();
        } else if (productPrice == "") {
            alert("��ǰ ������ �Է����ּ���");
            productPrice.focus();
        } else if (productDesc == "") {
            alert("��ǰ ������ �Է����ּ���");
            productDesc.focus();
        } else if (productPhoto == "") {
            alert("��ǰ ������ �Է����ּ���");
            productPhoto.focus();
        }
        // ��ǰ ���� ����
        document.form1.action = "${path}/shop/product/insert.do";
        document.form1.submit();
    });
    // ��ǰ ����̵�
    $("#listBtn").click(function(){
        location.href='${path}/shop/product/list.do';
    });
});

</script>
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


	<jsp:include page="_footer.jsp"></jsp:include>
	 <script src="http://code.jquery.com/jquery.js"></script>
    <script src="resource/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>