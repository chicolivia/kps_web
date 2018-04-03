/**
 * @Author Junmin Seong (chicolivia@gmail.com)
 */
function loginChecking(){
	idstr =document.getElementById("id1").value;
	pwstr=document.getElementById("pw1").value;
	if(idstr == "" || idstr.length == 0){
		document.getElementById("id1").focus();
		document.getElementById("submitresult").innerHTML="아이디를 입력해주세요.";
		return false;
	}else if(pwstr == "" || pwstr.length == 0){
		document.getElementById("pw1").focus();
		document.getElementById("submitresult").innerHTML="비밀번호를 입력해주세요.";
		return false;
	}else{
		return true;
	}
}