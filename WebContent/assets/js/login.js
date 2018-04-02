/**
 * 
 */
var xhttp = new XMLHttpRequest();
function loginChecking(){
	alert("here");
	idstr =document.getElementById("id1").value;
	pwstr=document.getElementById("pw1").value;
	rBool = false;
	if(idstr != "" && pwstr != ""){
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				var re = this.responseText;
				if(re == "exist"){
					rBool = true;
				}else if(re == "noId"){
					rBool = false;
					document.getElementById("submitressult").value="아이디가 존재하지 않습니다.";
				}else if(re == "noPw"){
					rBool=false;
					document.getElementById("submitressult").value="비밀번호가 일치하지 않습니다.";
				}
			}
		};
		xhttp.open("POST", "../LoginCheck", true);
		xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		xhttp.send("id="+idstr+"&pw="+pwstr);
	}else if(idstr == ""){
		rBool=false;
		document.getElementById("submitressult").value="아이디를 입력해주세요.";
	}else if(pwstr ==""){
		rBool=false;
		document.getElementById("submitressult").value="비밀번호를 입력해주세요.";
	}
	return rBool;
}