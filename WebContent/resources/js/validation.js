function CheckAddProduct(){
	var productId = document.getElementById("productId");
	var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	var unitsInStock = document.getElementById("unitsInStock");
	
	//상품 아이디 체크
	if(!check(/^P[0-9]{4,11}$/, productId,"[상품코드]\nP와 숫자를 조합하여 5~12자까지 입력하세요\n 첫 글자는 반드시 P로 시작하세요."))
		return false;
		
	//상품명 체크
	if(name.value.length <4 || name.value.length>12){
		alert("[상품명]\n최소 4자에서 최대 12자까지 입력하세요");
		name.select();
		name.focus();
		return false;
	}
	
	//상품가격 체크
	if(unitPrice.value.length == 0 || isNaN(unitPrice.value)){
		alert("[상품가격]\n숫자만 입력하세요");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}
	
	if(unitPrice.value <0){
		alert("[상품가격]\n음수는 입력할 수 없습니다");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}else if(!check(/^\d+(?:[.]?[\d]?[\d])?$/,unitPrice,"[상품가격]\n소수점 둘째 자리까지만 입력하세요")){
		return false;
	}
	
	//재고 수 체크
	if(isNaN(unitsInStock.value)){
		alert("[재고 수]\n숫자만 입력하세요");
		unitsInStock.select();
		unitsInStock.focus();
		return false;
	}
	
	function check(regExp, e, msg){
		if(regExp,test(e.value)){
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}
	
	document.newProduct.submit();	
}