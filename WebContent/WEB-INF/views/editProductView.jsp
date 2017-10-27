<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Product</title>

<script lang="javascript">
$(document).ready(function(){
    // 상품 수정 버튼 클릭이벤트
    $("#editBtn").click(function(){
        var productName = $("#productName").val();
        var productPrice = $("#productPrice").val();
        var productDesc = $("#productDesc").val();
        // 상품 수정 폼 유효성 검사
        if(productName == "") {
            alert("상품명을 입력해주세요");
            productName.foucs();
        } else if (productPrice == "") {
            alert("상품 가격을 입력해주세요");
            productPrice.focus();
        } else if (productDesc == "") {
            alert("상품 설명을 입력해주세요");
            productDesc.focus();
        }
        document.form1.action = "${path}/shop/product/update.do";
        document.form1.submit();
    });
    // 상품 삭제 버튼 클릭이벤트
    $("#deleteBtn").click(function(){
        // 상품 삭제 확인
        if(confirm("상품을 삭제하시겠습니까?")){
            document.form1.action = "${path}/shop/product/delete.do";
            document.form1.submit();
        }
    });
    // 상품 목록 버튼 클리이벤트
    $("#listBtn").click(function(){
        location.href = "${path}/shop/product/list.do";
    });
});
</script>


</head>
<body>

	<jsp:include page="_header.jsp"></jsp:include>
	<jsp:include page="_menu.jsp"></jsp:include>

	<h3>Edit Product</h3>

	<p style="color: red;">${errorString}</p>

	<c:if test="${not empty product}">
		<form method="POST"
			action="${pageContext.request.contextPath}/editProduct">
			<input type="hidden" name="code" value="${product.code}" />
			<table border="0">
				<tr>
					<td>Code</td>
					<td style="color: red;">${product.code}</td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name" value="${product.name}" /></td>
				</tr>
				<tr>
					<td>Price</td>
					<td><input type="text" name="price" value="${product.price}" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Submit" /> <a
						href="${pageContext.request.contextPath}/productList">Cancel</a></td>
				</tr>
			</table>
		</form>
	</c:if>

	<jsp:include page="_footer.jsp"></jsp:include>

</body>
</html>