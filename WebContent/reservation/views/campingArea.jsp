<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CampUS reservation</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<style>
	div{
		box-sizing: border-box;
	}
	#wrapper{
		width: 1250px;
		height: 1350px;
		margin: 0px auto;
	}
	#header{
		width: 1250px;
		height: 100px;
		margin: 0px auto;
		
	}
	#body{
		width: 1250px;
		height: 1000px;
		margin: 0px auto;
		
	}
	#footer{
		width: 1250px;
		height: 100px;
		margin: 0px auto;
    }
	#upSideArea{
		width: 1250px;
		height: 300px;
		margin: 0px auto;
    }
	#downSideArea{
		width: 1250px;
		height: 900px;
		margin: 0px auto;
    }
	#campingArea{
		width: 950px;
		height: 900px;
		margin: 0px auto;
        float: left;
    }
	#campingInfo{
		width: 300px;
		height: 900px;
		margin: 0px auto;
        float: left;
    }
	#campingTitle{
		width: 950px;
		height: 50px;
		margin: 0px auto;
        float: left;
    }
	#campingAreaList{
		width: 950px;
		height: 700px;
		margin: 0px auto;
        float: left;
        z-index: 0;
        

    }
	#reservationSelect{
		width: 300px;
		height: 200px;
        float: left;
        
    }
	#campingdetail{
		width: 300px;
		height: 700px;
        float: left;
    }
    .title{
    	width: 920px;
		height: 45px;
		margin: 0px auto;
        float: left;
        text-align: center;
     	background-color: #1AAB8A;
    }
    #serachPanel{
    	width: 300px;
		height: 150px;
		margin: 0px auto;
        float: left;
        text-align : center;
    }
	#reservationClick{
	background:#1AAB8A;
	color:#fff;
	border:1px solid white;
	position:relative;
	width: 300px;
	height:50px;
	font-size:1.6em;
	padding:0 2em;
	cursor:pointer;
	transition:800ms ease all;
	outline:none;
	}
	#reservationClick:hover{
	  background:#fff;
	  color:#1AAB8A;
	}
	#reservationClick:before,#reservationClick:after{
	  content:'';
	  position:absolute;
	  top:0;
	  right:0;
	  height:2px;
	  width:0;
	  background: #1AAB8A;
	  transition:400ms ease all;
	}
	#reservationClick:after{
	  right:inherit;
	  top:inherit;
	  left:0;
	  bottom:0;
	}
	#reservationClick:hover:before,#reservationClick:hover:after{
	  width:100%;
	  transition:800ms ease all;
	}
	#detailArea{
	width : 300px;
	height : 700px;
	float: left;
	border: 1px solid black;	
	}
    .btn btn-success btn-sm{
    width : 20px;
    height : 20px;
    }
    #likeBtnImg{
    width : 20px;
    height : 20px;
    }
    .prevnextIcon{
	width:20px;
	height:20px;	
}

</style>
  <script type="text/javascript">
	 $(function() {
		  $( "#from" ).datepicker({
		         changeMonth: true, 
		         changeYear: true,
		         nextText: '다음 달',
		         prevText: '이전 달',
		         dateFormat: 'yy-mm-dd',
		         monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		         monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		         dayNames: ['일', '월', '화', '수', '목', '금', '토'],
		         dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
		         dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],

		         
		  });
		  $( "#to" ).datepicker({
		         changeMonth: true, 
		         changeYear: true,
		         nextText: '다음 달',
		         prevText: '이전 달',
		         dateFormat: 'yy-mm-dd',
			     monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			     monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			     dayNames: ['일', '월', '화', '수', '목', '금', '토'],
			     dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
			     dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],

		  });		  	  
		}); 

</script> 
   
   
   
   
   
<body>

	<div id="wrapper">
        <div id="header">
		<%@ include file="/common/include/gnb.html" %></div>
		<div id="body">
		    <div id="upSideArea" style = "background: url('../../reservation/image/main/2maintop.jpg') no-repeat 50%">;
		    
		    </div>
		    <div id="downSideArea">
		        <div id="campingArea">
		            <div id="campingTitle">
		            	<div class="title">
		            		<h2> <%="사업자명"%> </h2>
		            	</div>

		            </div>
		            <div id="campingAreaList">
		        		<table class="table table-striped" style="border:1px solid gray; width: 920px; height:220px;">
							
							<%for(int i=0; i<1; i++) {%>
							<tr style="border:1px solid gary;">
								<td rowspan="5" style="border:1px solid gray; width: 300px;">
									<button class="btn btn-success btn-sm" >
									<img id ="likeBtnImg" src="../../reservation/image/main/likeIcon.png">
									찜!!
									</button>								
					
									<img
									src="../../reservation/image/main/sample_camping/default_300_200.jpg"/>
									
								</td>
								<td style="border:1px solid gray;">
								<h5><span class="badge rounded-pill bg-warning text-dark">캠핑</span></h5>
				
								</td>
							</tr>
							<tr style="border:1px solid gray;">
								<td style="border:1px solid black;">캠핑사이트명 : 글램핑 강전망</td>
							</tr>
							<tr style="border:1px solid gray;">
								<td style="border:1px solid gray;">위치번호 : 침대/온돌형 &캠핑시설 &홍천강 전망(17개동)_3동</td>
							</tr>													
							<tr style="border:1px solid gray;">
								<td style="border:1px solid gray;">기준인원 : 2인 (최대인원: 4인)</td>
							</tr>
							<tr style="border:1px solid gray;">
								<td style="border:1px solid gray;">가격(1박) : 100000 원</td>
							</tr>
							<%} %>
						</table>
										<div class="board_list_paging" style="text-align:center; ">
					<img src="../../reservation/image/main/preIcon.png" class="prevnextIcon" alt="이전"> 
					   <span class="num">               
					     <a href="" class="on">1</a>
					     <a href="">2</a>
					     <a href="">3</a> 
					     <a href="">4</a> 
					     <a href="">5</a>
					    </span>                        
					    <a href="" class="next">
					    <img src="../../reservation/image/main/nextIcon.png" class="prevnextIcon"" alt="다음"></a>
			</div>
		            </div>
		        </div>
		        <div id="campingInfo">

                    <div id="reservationSelect">
                   	<form id="serachPanel" mehtod="get">
                    	<button type="submit" id="reservationClick">일정 재 검색</button>
						<br><br>
						<div class="search">
						     <label for="form">일정이 언제에요?</label><br>
						     <input type="text" style="text-align:center" size= 30 id="from" name = "from" readonly/>
						</div>
						<div class="search">
						     <label for="form">언제까지에요?</label><br>
						     <input type="text" style="text-align:center" size= 30 id="to" name = "to" readonly />
						</div>
					</form>
 				 </div>


		            	
                    <div id="campingdetail">
                    	<div id="detailArea">
                    	</div>
                    </div>
		        </div>
		        
		        
		    </div>
		</div>
		<div id="footer"></div>
	</div>




</body>
</html>