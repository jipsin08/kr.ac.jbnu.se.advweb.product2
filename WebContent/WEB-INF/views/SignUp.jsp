<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>

<script lang = "javascript">
function check(){
	var password = document.getElementById('pw').value;
	if(password.length < 6 || password.length > 15){
		
		window.alert("비밀번호는 6글자 이상, 15글자 이하만 허용");
		document.getElementById('pw').value = document.getElementById('pwCheck').value ='';
	}
	
	if(document.getElementById('pw').value !='' && document.getElementById('pwCheck').value != ''){
		if(document.getElementById('pw').value == document.getElementById('pwCheck').value){
			document.getElementById('same').innerHTML='비밀번호 일치';
			document.getElementById('same').style.color='blue';
		}
		else{
			document.getElementById('same').innerHTML='비밀번호 불일치';
			document.getElementById('same').style.color='red';
		}	
	}	
}

function checkID()
{
	var str = document.getElementById('userName').value;
	$.get("${pageContext.request.contextPath}/CheckID", 
		{
			id : str
		}, function(data) {
		$('#checkid').html(data);
	});
}
	
	
	


	
</script>

</head>
<body>
<div id="userInfo">
	<form method="POST"
		action="${pageContext.request.contextPath}/SignUp">
   <table style="text-align:left;"> 
      <tr height="2" bgcolor="black"><td colspan="2"></td></tr>
      <tr>
         <th>*  이름</th>
         <td><input type="text" name="name" ></td>
      </tr>
      
      <tr><td colspan="2"> <hr> </td></tr>
      
       <tr>
         <th>*  아이디</th>
         <td>
         <input type="text" name="userName">
       	 <button type = "button" onclick= "checkID()">중복체크</button> <div id="checkid"></div>
         </td>
       </tr>
       
       <tr><td colspan="2"> <hr> </td></tr>
       
       <tr>
         <th>*  비밀번호</th>
         <td><input type="password" id="pw" onchange="check()" name ="password">
       </tr>
       
       <tr><td colspan="2"> <hr> </td></tr>
       
       <tr>
         <th>*  비밀번호 확인</th>
         <td><input type="password" id="pwCheck" onchange="check()">  <span id="same"></span>
         	 
         </td> 
       </tr>
       
       <tr><td colspan="2"> <hr> </td></tr>
       
       
       <tr>
          <th>*  비밀번호 힌트/답변</th>
          <td><select name='pwhint' size='1' class='select'>
          <option value=''>선택하세요</option>
          <option value='1'>졸업한 초등학교 이름은?</option>
          <option value='2'>제일 친한 친구의 핸드폰 번호는?</option>
          <option value='3'>아버지 성함은?</option>
          <option value='4'>어머니 성함은?</option>
          <option value='5'>어릴 적 내 별명은?</option>
          <option value='6'>가장 아끼는 물건은?</option>
          <option value='7'>좋아하는 동물은?</option>
          <option value='8'>좋아하는 색깔은?</option>
          <option value='9'>좋아하는 음식은?</option>
        </select>
        </tr>
        
        <tr><td colspan="2"> <hr> </td></tr>
        
        <tr>
           <th>*  답변</th>
           <td><input type='text' name='answer'></td>
        </tr>
        
        <tr><td colspan="2"> <hr> </td></tr>
        
         <tr>
           <th>*  주소</th>
           <td>
             <input type="text" name="address"size="46">
           </td>
         </tr>
         
         <tr><td colspan="2"> <hr> </td></tr>
         
        <tr>
          <th>*  핸드폰 번호</th>
           <td>
              <input type="text" name="phone" > -없이 입력
           </td>
          </tr>
          
          <tr><td colspan="2"> <hr> </td></tr>
          
         <tr>
           <th>*  학과</th>
           <td>
           <select name='department' id = 'department'>
                 <option value='select'>학과를 선택하세요</option>
                 <option value='Software'>소프트웨어 공학과</option>
                 <option value='Contextual'>문언정보학과</option>
           </select>
           
          </td>
        </tr>
       
        

           <tr height="2" bgcolor="black"><td colspan="2"></td></tr>
           <tr>
             <td colspan="2" align="left">
               <input type="submit" value="Sign Up" />
               <a href="javascript:void(0);" onclick="javascript:hideUserInfo();">Cancel</a>
            </td>
           </tr>
       </table>
   </form>
</div>  
<script lang="javascript">
	
	function hideUserInfo()
	{
		$('#userInfo').hide();
	}
</script>   
    
</body>
</html>