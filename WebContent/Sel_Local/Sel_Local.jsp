<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
	function gu_Selec()
	{	
   		var local_Selec=document.getElementById('local_Selec');
        if(local_Selec == 1){
        //서울지역
        gu_Selec.options[1]  = new Option("강남구");
        gu_Selec.options[2]  = new Option("강동구");
        gu_Selec.options[3]  = new Option("강북구");
        gu_Selec.options[4]  = new Option("강서구");
        gu_Selec.options[5]  = new Option("관악구");
        gu_Selec.options[6]  = new Option("광진구");
        gu_Selec.options[7]  = new Option("구로구");
        gu_Selec.options[8]  = new Option("금천구");
        gu_Selec.options[9]  = new Option("노원구");
        gu_Selec.options[10] = new Option("도봉구");
        gu_Selec.options[11] = new Option("동대문구");
        gu_Selec.options[12] = new Option("동작구");
        gu_Selec.options[13] = new Option("마포구");
        gu_Selec.options[14] = new Option("서대문구");
        gu_Selec.options[15] = new Option("서초구");
        gu_Selec.options[16] = new Option("성동구");
        gu_Selec.options[17] = new Option("성북구");
        gu_Selec.options[18] = new Option("송파구");
        gu_Selec.options[19] = new Option("양천구");
        gu_Selec.options[20] = new Option("영등포구");
        gu_Selec.options[21] = new Option("용산구");
        gu_Selec.options[22] = new Option("은평구");
        gu_Selec.options[23] = new Option("종로구");
        gu_Selec.options[24] = new Option("중구");
        gu_Selec.options[25] = new Option("중랑구");
        }   
    }
</script>

	<form>
	<select id="local_Selec" onChange="gu_Selec();" style = "width:100px">
			<option>시 선 택</option>
			<option value=1>서울시</option>
			<option value=2>경기도</option>
			<option value=3>인천광역시</option>
			<option value=4>강원도</option>
			<option value=5>충청남도</option>
			<option value=6>충청북도</option>
			<option value=7>대전광역시</option>
			<option value=8>대구광역시</option>
			<option value=9>광주광역시</option>
			<option value=10>전라남도</option>
			<option value=11>전라북도</option>
			<option value=12>경상남도</option>
			<option value=13>경상북도</option>
			<option value=14>제주도</option>
		</select>
		</form>
		<br><br>
		<form>
			<table>
			<tr>
				<td>
                    <select name="gu_Selec">
                      <option>구 선 택</option>
                    </select> 
				</td>
			</tr>
			</table>
		</form>