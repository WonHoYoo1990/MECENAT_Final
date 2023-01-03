/**
 *
 */
var validUtil = {
	/**
     * 이름 검사
     * @param
     * @return
     * @throws Exception
     */
    checkCustName: function(ele1, title){
    	var title = title || title + "";
        if (ele1.value.length == 0) {
        	alert(title + "을 입력하세요.");
            ele1.value = "";
            ele1.focus();
            return false;
        }
        else
            if (ele1.value == '') {
	            alert(title + "을 입력하세요.");
                ele1.value = "";
                ele1.focus();
                return false;
            }
            else
                if (ele1.value.indexOf(" ") != -1) {
                	alert(title + "에 공백을 입력할 수 없습니다.");
                    ele1.value = "";
                    ele1.focus();
                    return false;
                }
        name = ele1.value.split(" ").join("");

        l = name.length;
        t8 = -1;

        for (i = 0; i < l; i++) {
            if (name.charCodeAt(i) == 34)
                t8 = 1;
        }
        var special_char;
        var name_error = 0;
        for (i = 0; i < l; i++) {// 2Bytes 캐릭터값이 0FFF 이상인것중 알파벳외
            if (!(((name.charCodeAt(i) >= 65) && (name.charCodeAt(i) <= 90))
            		|| ((name.charCodeAt(i) >= 97) && (name.charCodeAt(i) <= 122))
            		|| ((name.charCodeAt(i) >= 44032) && (name.charCodeAt(i) <= 55203)))) {
                name_error = 1;
            }
        }

        for (var i = 0; i < ele1.value.length; i++) {
            var ch = ele1.value.charAt(i);
            if ((ch >= "0" && "9" >= ch)) {
            	alert(title + "에 숫자가 들어갈 수 없습니다.");
                ele1.focus();
                return false;
            }
        }
        if (name_error == 1) {
       		alert(title + "은 한글 또는 영어로만 입력이 가능합니다.");
            ele1.focus();
            return false;
        }
        special_char = "　！＇，．／：；？＾＿｀｜￣、。·‥…¨〃―∥＼∼´～ˇ˘˝˚˙¸˛¡¿ː＂（）［］｛｝‘’“”〔〕〈〉《》「」『』【】＋－＜＝＞±×÷≠≤≥∞∴♂♀∠⊥⌒∂∇≡≒≪≫√∽∝∵∫∬∈∋⊆⊇⊂⊃∪∩∧∨￢⇒⇔∀∃∮∑∏＄％￦Ｆ′″℃￠￡￥¤℉‰?㎕㎖㎗ℓ㎘㏄㎣㎤㎥㎦㎙㎚㎛㎜㎝㎞㎟㎠㎡㎢㏊㎍㎎㎏㏏㎈㎉㏈㎧㎨㎰㎱㎲㎳㎴㎵㎶㎷㎸㎹㎀㎁㎂㎃㎄㎺㎻㎼㎽㎾㎿㎐㎑㎒㎓㎔Ω㏀㏁㎊㎋㎌㏖㏅㎭㎮㎯㏛㎩㎪㎫㎬㏝㏐㏓㏃㏉㏜㏆＃＆＊＠§※☆★○●◎◇◆□■△▲▽▼→←↑↓↔〓◁◀▷▶♤♠♡♥♧♣⊙◈▣◐◑▒▤▥▨▧▦▩♨☏☎☜☞¶†‡↕↗↙↖↘♭♩♪♬㉿㈜№㏇™㏂㏘℡?ªº─│┌┐┘└├┬┤┴┼━┃┏┓┛┗┣┳┫┻╋┠┯┨┷┿┝┰┥┸╂┒┑┚┙┖┕┎┍┞┟┡┢┦┧┩┪┭┮┱┲┵┶┹┺┽┾╀╁╃╄╅╆╇╈╉╊㉠㉡㉢㉣㉤㉥㉦㉧㉨㉩㉪㉫㉬㉭㉮㉯㉰㉱㉲㉳㉴㉵㉶㉷㉸㉹㉺㉻㈀㈁㈂㈃㈄㈅㈆㈇㈈㈉㈊㈋㈌㈍㈎㈏㈐㈑㈒㈓㈔㈕㈖㈗㈘㈙㈚㈛ⓐⓑⓒⓓⓔⓕⓖⓗⓘⓙⓚⓛⓜⓝⓞⓟⓠⓡⓢⓣⓤⓥⓦⓧⓨⓩ①②③④⑤⑥⑦⑧⑨⑩⑪⑫⑬⑭⑮⒜⒝⒞⒟⒠⒡⒢⒣⒤⒥⒦⒧⒨⒩⒪⒫⒬⒭⒮⒯⒰⒱⒲⒳⒴⒵⑴⑵⑶⑷⑸⑹⑺⑻⑼⑽⑾⑿⒀⒁⒂０１２３４５６７８９ⅰⅱⅲⅳⅴⅵⅶⅷⅸⅹⅠⅡⅢⅣⅤⅥⅦⅧⅨⅩ½⅓⅔¼¾⅛⅜⅝⅞¹²³⁴ⁿ₁₂₃₄ㄱㄲㄳㄴㄵㄶㄷㄸㄹㄺㄻㄼㄽㄾㄿㅀㅁㅂㅃㅄㅅㅆㅇㅈㅉㅊㅋㅌㅍㅎㅏㅐㅑㅒㅓㅔㅕㅖㅗㅘㅙㅚㅛㅜㅝㅞㅟㅠㅡㅢㅣㅥㅦㅧㅨㅩㅪㅫㅬㅭㅮㅯㅰㅱㅲㅳㅴㅵㅶㅷㅸㅹㅺㅻㅼㅽㅾㅿㆀㆁㆂㆃㆄㆅㆆㆇㆈㆉㆊㆋㆌㆍㆎΑΒΓΔΕΖΗΘΙΚΛΜΝΞΟΠΡΣΤΥΦΧΨΩαβγδεζηθικλμνξοπρστυφχψω";
        for (i = 0; i < special_char.length; i++) {
            t1 = name.indexOf(special_char.charAt(i));

            if (t1 != -1) {
            	alert(title + "은 한글 또는 영어로만 입력이 가능합니다.");
                ele1.focus();
                return false;
            }
        }

		return true;
	},
	 /**
     * 아이디 체크
     * @param
     * @return
     * @throws Exception
     */
    checkId: function(ele){
        var canFocus = 1;
        if (ele.value.length < 4 || ele.value.length > 40) {
            alert("아이디는 4자이상 40자 이내로 구성하십시요.");
            return false;
        }

        if (ele.value.indexOf(" ") != -1) {
            alert('ID에는 공백을 입력할 수 없습니다.');
            ele.focus();
            return false;
        }

        for (var i = 0; i < ele.value.length; i++) {
            var ch = ele.value.charAt(i);/*
            if (i == 0 && !(ch >= "a" && "z" >= ch)) {
                alert("아이디는 반드시 영문자로 시작하여야 합니다.");
                return false;
            }
            */
            if (!((ch >= "0" && "9" >= ch) || (ch >= "a" && "z" >= ch) || ch == "-" || ch == "_")) {
            	alert("아이디에는 특수문자 -,_만 사용 가능합니다.");
                if (canFocus)
                    ele.focus();
                return false;
            }
        }
        return true;
    },
	/**
     * 아이디 체크(아이디비번찾기 에서는 대문자는 입력 가능하도록 함수 추가함. 20180319)
	 * 아이디 체크(아이디비번찾기 에서는 "@", "." 가능하도록 추가함. 이용태 20190527)
     * @param
     * @return
     * @throws Exception
     */
    checkId2: function(ele){
        var canFocus = 1;
        if (ele.value.length < 4 || ele.value.length > 40) {
            alert("아이디는 4자이상 40자 이내로 구성하십시요.");
            return false;
        }

        if (ele.value.indexOf(" ") != -1) {
            alert('ID에는 공백을 입력할 수 없습니다.');
            ele.focus();
            return false;
        }

        for (var i = 0; i < ele.value.length; i++) {
            var ch = ele.value.charAt(i);/*
            if (i == 0 && !(ch >= "a" && "z" >= ch)) {
                alert("아이디는 반드시 영문자로 시작하여야 합니다.");
                return false;
            }
            */
            if (!((ch >= "0" && "9" >= ch) || (ch >= "a" && "z" >= ch) || (ch >= "A" && "Z" >= ch) || ch == "-" || ch == "_" || ch == "@" || ch == ".")) {
            	alert("아이디에는 특수문자 -,_,@,.만 사용 가능합니다.");
                if (canFocus)
                    ele.focus();
                return false;
            }
        }
        return true;
    },
    /**
     * 비밀번호 체크
     * @param ele
     */
    checkPw: function(ele, min, max, clean, focus) {

    	var password = ele.value;

    	//길이 체크
		if(password.length < min){
			alert("비밀번호는 " + min + "자 이상으로 입력해 주세요.");
			if (clean) ele.value = '';
			if (focus) ele.focus();
			return false;
		}
		if(password.length > max){
			alert("비밀번호는 " + max +"자 이상으로 입력해 주세요.");
			if (clean) ele.value = '';
			if (focus) ele.focus();
			return false;
		}

		var Set_Num = "0123456789";
		var Set_Alpha1 = "abcdefghijklmnopqrstuvwxyz";
		var Set_Alpha2 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		var Set_Other = "`~!@#$%^&*()-_=+|]}[{'\";:/?.>,<";
		var str1 = password;
	    var varDigit = 0;
	    var varAlpha = 0;
	    var varSpecial = 0;
	    for(var i=0; i < str1.length; i++) {
	    	if(Set_Num.indexOf(str1.charAt(i)) > -1){
	    		varDigit = 1;
	    	}else if(Set_Alpha1.indexOf(str1.charAt(i)) > -1){
	    		varAlpha = 1;
	    	}else if(Set_Alpha2.indexOf(str1.charAt(i)) > -1){
	    		varAlpha = 1;
	    	}else if(Set_Other.indexOf(str1.charAt(i)) > -1){
	    		varSpecial = 1;
	    	}else{
	    		if(" " == str1.charAt(i)){
	    			alert("비밀번호에는 공백을 사용할 수 없습니다.");
	    			if (clean) ele.value = '';
	    			if (focus) ele.focus();
	    			return false;
				}else{
					alert("사용 불가한 문자[" + str1.charAt(i) + "]가 포함되어있습니다.");
	    			if (clean) ele.value = '';
	    			if (focus) ele.focus();
	    			return false;
				}
	    	}
	   	}
	    if((varDigit + varAlpha + varSpecial) < 3){
	    	alert("비밀번호는 영문,숫자,특수문자 모두 포함되어야 합니다.");
			if (clean) ele.value = '';
			if (focus) ele.focus();
			return false;
	        //return "비밀번호는 영문,숫자,특수문자 모두 포함되어야 합니다.";
	    }
	    return true;
    },
    // 사업자 번호
    checkCorpNo: function(vencod){
        var sum = 0;
        var getlist = new Array(10);
        var chkvalue = new Array("1", "3", "7", "1", "3", "7", "1", "3", "5");
        for (var i = 0; i < 10; i++) {
            getlist[i] = vencod.substring(i, i + 1);
        }
        for (var i = 0; i < 9; i++) {
            sum += getlist[i] * chkvalue[i];
        }
        sum = sum + parseInt((getlist[8] * 5) / 10);
        sidliy = sum % 10;
        sidchk = 0;
        if (sidliy != 0) {
            sidchk = 10 - sidliy;
        } else {
            sidchk = 0;
        }
        if (sidchk != getlist[9]) {
        	alert("사업자 등록번호가 잘못되었습니다.");
			vencod.focus();
            return false;
        }
        return true;
    },
	//국내/해외 phone 번호 체크
    checkPhoneNumEle: function(ele1, ele2, ele3, eleTitle){
    	if (validUtil.isEmpty(ele1, (eleTitle ? eleTitle : "휴대폰") + " 번호를 입력해 주세요.", true)) return false;
    	if (validUtil.isEmpty(ele2, (eleTitle ? eleTitle : "휴대폰") + " 번호를 입력해 주세요.", true)) return false;
    	if (validUtil.isEmpty(ele3, (eleTitle ? eleTitle : "휴대폰") + " 번호를 입력해 주세요.", true)) return false;
        if (!validUtil.isNumerics(ele1, (eleTitle ? eleTitle : "휴대폰") + " 번호는 숫자만 입력해주세요.", true, true)) return false;
        if (!validUtil.isNumerics(ele2, (eleTitle ? eleTitle : "휴대폰") + " 번호는 숫자만 입력해주세요.", true, true)) return false;
        if (!validUtil.isNumerics(ele3, (eleTitle ? eleTitle : "휴대폰") + " 번호는 숫자만 입력해주세요.", true, true)) return false;
       if (!validUtil.checkPhoneNum2(ele1.value + "-" + ele2.value + "-" + ele3.value, eleTitle)) return false;

        return true;
    },
    checkPhoneNum: function(ele1, ele2, ele3, eleTitle){
    	if (validUtil.isEmpty(ele1, (eleTitle ? eleTitle : "휴대폰") + " 번호를 입력해 주세요.", true)) return false;
    	if (validUtil.isEmpty(ele2, (eleTitle ? eleTitle : "휴대폰") + " 번호를 입력해 주세요.", true)) return false;
    	if (validUtil.isEmpty(ele3, (eleTitle ? eleTitle : "휴대폰") + " 번호를 입력해 주세요.", true)) return false;
        if (!validUtil.isNumerics(ele1, (eleTitle ? eleTitle : "휴대폰") + " 번호는 숫자만 입력해주세요.", true, true)) return false;
        if (!validUtil.isNumerics(ele2, (eleTitle ? eleTitle : "휴대폰") + " 번호는 숫자만 입력해주세요.", true, true)) return false;
        if (!validUtil.isNumerics(ele3, (eleTitle ? eleTitle : "휴대폰") + " 번호는 숫자만 입력해주세요.", true, true)) return false;
       if (!validUtil.checkPhoneNum2(ele1.value + "-" + ele2.value + "-" + ele3.value, eleTitle)) return false;

        return true;
    },
    checkPhoneNum2: function(tel, eleTitle) {

    	var telRegex = /^(([0-9]{2,3}-[0-9]{3,4}-[0-9]{4}))$/;

    	if (!telRegex.test(tel)) {
				console.log(eleTitle);
			alert((eleTitle ? eleTitle : "휴대폰") + " 형식을 다시 확인해주세요.");
			return false;
		}
		return true;
    },
	// 국내 번호 체크
	checkPhoneFullNum: function(ele1, eleTitle) {

		if (validUtil.isEmpty(ele1, (eleTitle ? eleTitle : "휴대폰") + " 번호를 입력해 주세요.", true)) return false;

		var reg_phone = /\d{3}-\d{4}-\d{4}|\d{11}/;
		if (!reg_phone.test(ele1.value)) {
			alert((eleTitle ? eleTitle : "휴대폰") + "번호 형식이 적합하지 않습니다. 숫자 11자리 또는 [010-1111-1111] 형식만 사용 가능합니다.");
			ele1.value = "";
			ele1.focus();
			return false;
		}

		return true;
	},
		checkEmailEle : function(ele1, ele2) {
    	if (validUtil.isEmpty(ele1, "이메일을 입력해 주세요.", true)) return false;
    	if (validUtil.isEmpty(ele2, "이메일을 입력해 주세요.", true)) return false;
    	if (!validUtil.checkEmailEleFull(ele1.value + "@" + ele2.value)) return false;
    	return true;
    },
	checkEmailEleFull : function(str) {

		var isEmail = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

		if (!isEmail.test(str)) {
			alert("입력한 이메일이 형식에 맞지 않습니다. 예) email@domain.co.kr");
			return false;
		}
		return true;
	},
		/**
     *  이메일 체크
     * @param
     * @return
     * @throws Exception
     */
    checkEmail: function(str){
        var email = str.value;

        if(email.length == 0){
        	alert("이메일을 입력해주세요.");
        	str.focus();
        	return false;
        }

		var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	    if (!re.test(email)) {
            alert("입력한 이메일이 형식에 맞지 않습니다. 예) email@domain.co.kr");
            str.focus();
			return false;
		}

        return true;
    },
    // 이메일 아이디 체크
    checkEmailId : function(str) {
    	var email = str.value;
    	if(email == undefined || email == null || email == ''){
        	alert('이메일 주소를 입력하세요.');
        	str.focus();
        	return false;
        }
        var reg_email = /^[-A-Za-z0-9_]+[-A-Za-z0-9_.]*$/;
        if (!reg_email.test(str.value)) {
            alert("이메일 주소의 형식이 적합하지 않습니다. 영어, 숫자, '-', '_', '.'만 사용 가능 합니다.");
            str.value = "";
            str.focus();
            return false;
        }
        return true;
    },
    // 이메일 도메인 체크
    checkEmailDomain: function(str){
    	var email = str.value;
    	if(email == undefined || email == null || email == ''){
        	alert('이메일 주소를 입력해주세요.');
        	str.focus();
        	return false;
        }
        var reg_email = /^[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[.]{1}[A-Za-z]{2,5}$/;
        if (!reg_email.test(str.value)) {
            alert("이메일 주소의 형식이 적합하지 않습니다. 영어, 숫자, '-', '_', '.'만 사용 가능 합니다.");
            str.value = "";
            str.focus();
            return false;
        }
        return true;
    },
    // 아이피 ip4 체크
    checkIP: function(ele1, ele2, ele3, ele4) {

    	if (validUtil.isEmpty(ele1, "IP를 입력해 주세요.", true)) return false;
    	if (validUtil.isEmpty(ele2, "IP를 입력해 주세요.", true)) return false;
    	if (validUtil.isEmpty(ele3, "IP를 입력해 주세요.", true)) return false;
    	if (validUtil.isEmpty(ele4, "IP를 입력해 주세요.", true)) return false;
    	if (!validUtil.isNumerics(ele1, "IP는 숫자만 입력해주세요.", true, true)) return false;
    	if (!validUtil.isNumerics(ele2, "IP는 숫자만 입력해주세요.", true, true)) return false;
    	if (!validUtil.isNumerics(ele3, "IP는 숫자만 입력해주세요.", true, true)) return false;
    	if (!validUtil.isNumerics(ele4, "IP는 숫자만 입력해주세요.", true, true)) return false;
    	if (!validUtil.isAllowNumberRange(ele1, 0, 255, "IP", true, true)) return false;
    	if (!validUtil.isAllowNumberRange(ele2, 0, 255, "IP", true, true)) return false;
    	if (!validUtil.isAllowNumberRange(ele3, 0, 255, "IP", true, true)) return false;
    	if (!validUtil.isAllowNumberRange(ele4, 0, 255, "IP", true, true)) return false;

        return true;
    },
    checkMacAddress: function(ele1, ele2, ele3, ele4, ele5, ele6) {

    },
    /**
     * 사이즈 반환
     * @param ele1
     * @param minSize
     * @param maxSize
     * @returns {Number}
     */
    getSize: function(ele1){
    	var iCount = 0; // 길이
    	var sVal = new String(object.value); //값
    	var iLen = sVal.length; //현재 길이

    	var oChar;
    	for ( i=0; i<iLen; i++ ) {
    		oChar = sVal.charAt(i);
    		if (escape(oChar).length > 4) {
    			iCount += 2;

    		} else {
    			iCount += 1;

    		}
    	}
    	return iCount;
    },
    /**
     * 숫자 범위 체크
     * @param ele
     * @param min
     * @param max
     * @param eleTitle
     * @param focus
     * @param clean
     */
    isAllowNumberRange: function(ele, min, max, eleTitle, focus, clean) {
    	var val = ele.value;
    	if (!validUtil.isNumerics(ele)) {
    		if (eleTitle) {
    			alert(eleTitle + "항목 형식이 맞지 않습니다.");
    		} else {
    			alert("숫자 형식이 아닙니다.");
    		}
    		if (clean) ele.value = '';
			if (focus) ele.focus();
    		return false;
    	}

    	if (min) {
    		if (val < min) {
    			if (eleTitle) alert(eleTitle + "항목은 " + min + " 이상이어야 합니다.");
    			if (clean) ele.value = '';
    			if (focus) ele.focus();
    			return false;
    		}
    	}

    	if (max) {
    		if (val > max) {
    			if (eleTitle) alert(eleTitle + "항목은 " + max + " 이하여야 합니다.");
    			if (clean) ele.value = '';
    			if (focus) ele.focus();
    			return false;
    		}
    	}
    	return true;
    },
    /**
     * 길이 체크
     * @param ele
     * @param min
     * @param max
     */
    isAllowLength: function(ele, min, max, eleTitle, focus, clean) {
    	var eleLen = validUtil.getSize(ele);

    	if (min) {
    		if (eleLen < min) {
    			if (eleTitle) alert(eleTitle + "항목은 " + min + "자 이상이어야 합니다.");
    			if (clean) ele.value = '';
    			if (focus) ele.focus();
    			return false;
    		}
    	}

    	if (max) {
    		if (eleLen > max) {
    			if (eleTitle) alert(eleTitle + "항목은 " + max + "자 이하여야 합니다.");
    			if (clean) ele.value = '';
    			if (focus) ele.focus();
    			return false;
    		}
    	}

    	return true;
    },
    /**
     * 빈값 체크
     * @param ele
     */
    isEmpty: function(ele, msg, focus) {
    	if (ele.value.length == 0) {
    		if (msg) alert(msg);
    		if (focus) ele.focus();
    		return true;
    	}
    	return false;
    },
    /**
     * 숫자 체크
     * @param str : 문자열
     * @return boolean : 숫자가 아닌 경우 false 반환
     * @throws Exception
     */
    isNumerics: function(ele, msg, focus, clean){
    	var checkStr = ele.value;
        var checkOK = "0123456789";
        var isnumeric = false;

        for (i = 0;  i < checkStr.length;  i++) {
        	ch = checkStr.charAt(i);
        	isnumeric = false;
        	for (j = 0;  j < checkOK.length;  j++) {
        		if (ch == checkOK.charAt(j)) {
        			isnumeric = true;
        		}
        	}

			if ( isnumeric == false ) {
				if (msg) alert(msg);
				if (clean) ele.value = '';
	    		if (focus) ele.focus();
				return false;
			}
        }
        return true;
    }
}