<!--  
	@Author Junmin Seong (chicolivia@gmail.com)
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.PremiumDAO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Master Page</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="/assets/css/main.css" />
	<script src="/assets/js/jquery-3.1.1.min.js"></script>
	<script src="/assets/chart/highcharts.js"></script>
	<script src="/assets/chart/exporting.js"></script>
	<script src="/assets/chart/dark-unica.js"></script>
</head>
<body>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- 메뉴바 -->
		<jsp:include page="/menuPages/menuBar.jsp"></jsp:include>
		
		<!-- Section -->
      <section class="main accent2" id="first2">
         <header>
            <h2>Korea Premuim Graph</h2>
		<button onclick="stopCRW()">실시간 크롤링 멈추기</button>
		<button onclick="startCRW()">실시간 크롤링 시작</button>
         </header>
         <div class="inner">
               <div class="content">
                
                 	<div id="container" style="min-width: 200px; height:600px; margin: 0 auto;
                 		max-width: 100%; margin: 1em auto;"></div>
                
               </div>
         </div>
      </section>
	
	 <!-- Section -->
      
      <section class="main alt" id="first">
         <header>
            <h2>Korea vs Foreign Market</h2>
         </header>
         <div class="inner">
            <article class="main alt">
               <div class="content">
               <!-- https://codepen.io/pixelchar/pen/rfuqK 참고. -->
                  <div class="container" >
                       <table class="responsive-table">
                         <h1 style="text-align:center"><font color="#b168d6">TOP 5</font> KP</h1>
                         <thead>
                           <tr>
                             <th scope="col"><h1>Korea</h1></th>
                             <th scope="col"><h1>Foreign</h1></th>
                             <th scope="col"><h1>Premium</h1></th>
                           </tr>
                         </thead>
                         <tbody id="top5Tbody">
                          </tbody>
                       </table>
                     </div>
               </div>
               
               <div class="content" data-position="center">                  
                  <div class="container">
                     <table class="responsive-table">
                        <h2 style="text-align:center;">Current KP</h2>
                        <thead>
                           <tr>
                              <th><h1 id="currency">Currency</h1></th>
                              <th><h1 id="bitthum">Bitthum</h1></th>
                              <th><h1 id="coinone">Coinone</h1></th>
                              <th><h1 id="upbit">Upbit</h1></th>
                           </tr>
                        </thead>
                        <tbody  id="marketBody">
                        </tbody>
                     </table>
                  </div>
               </div>
               
            </article>
         </div>
      </section>
	
	</div>
	 <script src="/assets/js/jquery.min.js"></script>
   <script src="/assets/js/jquery.dropotron.min.js"></script>
   <script src="/assets/js/jquery.scrollex.min.js"></script>
   <script src="/assets/js/jquery.scrolly.min.js"></script>
   <script src="/assets/js/skel.min.js"></script>
   <script src="/assets/js/util.js"></script>
   <script src="/assets/js/main.js"></script>
	<script type="text/javascript">
		function stopCRW(){
			location.href="/CRWController?go=0";
		}
		function startCRW(){
			location.href="/CRWController?go=1";
		}
		 
		   $(document).ready(function(){
		      $.getJSON("/GetKPJson", function(result){
		         $.each(result.sortedList, function(i, field){
		            $("#top5Tbody").append(
		                  "<tr>"+
		                     "<td data-title='Korea'>"+field.kMarket +"</td>"+        
		                         "<td data-title='Foreign'>"+field.uMarket +"</td>"+       
		                    "<td data-title='Premium' data-type='currency'>"+field.premium+"%</td>"+
		                  "</tr>");
		            if (i == 4){
		               return false;
		            }
		           });
		         $("#currency").append("<br><span style='color: white; font-size: x-small;'>"+result.currency +" W</span>");
		         $('#bitthum').append("<br><span style='color: white; font-size: x-small;'>"+result.krwList[0]+" W</span>");
		         $('#coinone').append("<br><span style='color: white; font-size: x-small;'>"+result.krwList[1]+" W</span>");
		         $('#upbit').append("<br><span style='color: white; font-size: x-small;'>"+result.krwList[2]+" W</span>");
		         var appendString ="";
		         $.each(result.preList, function(j,mfield){
		            if(j %3 == 0){
		               appendString="<tr><td>"+mfield.uMarket+"<br><span style='color: white; font-size: small;'>$ "+
						result.usdList[j/3]     
		               +"</span></td><td><p style='font-size: large;'>"+mfield.premium+"%</p></td>";               
		            }else if(j%3==1){
		               appendString = appendString+"<td>"+mfield.premium+"%</td>";   
		            }else if(j%3==2){
		               appendString = appendString +"<td>"+mfield.premium+"%</td></tr>";
		               $("#marketBody").append(appendString);
		            }
		            
		         });
		         });
		      $.getJSON(
		    		   '/GetBitCoinJSON',
		    		    function (data) {

		    		        Highcharts.chart('container', {
		    		            chart: {
		    		                zoomType: 'x'
		    		            },
		    		            title: {
		    		                text: 'KOREA PREMIUM - bithum,bitfinex'
		    		            },
		    		            subtitle: {
		    		                text: document.ontouchstart === undefined ?
		    		                        '드래그해서 확대하세요' : 'Pinch the chart to zoom in'
		    		            },
		    		            xAxis: {
		    		                type: 'datetime',
		    		                title:{
		    		                	text:'시간'
		    		                }
		    		            },
		    		            yAxis: {
		    		                title: {
		    		                    text: '프리미엄'
		    		                },
		    		            	labels:{
		    		            		format:'{value:.2f} %'
		    		            	}
		    		            },
		    		            legend: {
		    		                enabled: false
		    		            },
		    		            plotOptions: {
		    		                area: {
		    		                    fillColor: {
		    		                        linearGradient: {
		    		                            x1: 0,
		    		                            y1: 0,
		    		                            x2: 0,
		    		                            y2: 1
		    		                        },
		    		                        stops: [
		    		                            [0, Highcharts.getOptions().colors[0]],
		    		                            [1, Highcharts.Color(Highcharts.getOptions().colors[0]).setOpacity(0).get('rgba')]
		    		                        ]
		    		                    },
		    		                    marker: {
		    		                        radius: 2
		    		                    },
		    		                    lineWidth: 1,
		    		                    states: {
		    		                        hover: {
		    		                            lineWidth: 1
		    		                        }
		    		                    },
		    		                    threshold: null
		    		                }
		    		            },

		    		            series: [{
		    		                type: 'area',
		    		                name: 'Premium',
		    		                data: data
		    		            }]
		    		        });
		    		    }
		    		);
		   });
	</script>
</body>
</html>