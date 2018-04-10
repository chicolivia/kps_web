<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>KPS</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="/assets/css/main.css" />
<link rel="stylesheet" href="/assets/css/table1.css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
<meta name="viewport" content="width=device-width">
</head>
<body>
   <!-- Wrapper -->
   <div id="wrapper">
      <!-- Header -->
      <header id="header" class="alt">
         <!-- Logo -->
         <div class="logo">
            <a href="/index.jsp"><strong>KPS</strong> by 바늘토</a>
         </div>

         <!-- Nav -->
         <nav id="nav">
            <ul>
               <li><a href="/index.jsp">Home</a></li>
               <li><a href="/menuPages/intro.jsp">소개</a></li>
               <li><a href="/menuPages/predict.jsp">예측</a></li>
               <li><a href="/menuPages/alarm.jsp">알람</a></li>


               <li>
                  <%
                     if (session.getAttribute("memberNo") == null) {
                  %> <a href="/loginPages/signup.jsp" class="button small">Sign
                     Up <%
                      } else {
                   %> <a href="/loginPages/mypage.jsp" class="button small">My
                                          Page<%
                      }
                   %>
                  </a>
               </li>

               <li>
                  <%
                     if (session.getAttribute("memberNo") == null) {
                     %> <a
                     href="/loginPages/login.jsp" class="button small" id="lowerButton">Log
                        In<%
                         } else {
                      %> <a href="/biz/logout.jsp" class="button small"
                                          id="lowerButton">Log Out<%
                         }
                      %>
                  </a>
               </li>

            </ul>
         </nav>

      </header>

      <!-- Banner -->
      <section id="banner">
         <div class="content">
         <h1>Korea Premium Signal</h1>
         </div>
         <a href="#first2" class="more scrolly">Learn More</a>
      </section>

      <!-- Section -->
      <section class="main accent2" id="first2">
         <header>
            <h2>김치프리미엄 그래프</h2>
            <p>크롤링해서 들여올 예정</p>
         </header>
         <div class="inner">
            <article class="post alt">
               <div class="content">
                  <header>
                     <span class="category">Lorem ipsum</span>
                     <h3>Finibus et magna</h3>
                  </header>
                  <p>Integer mollis, nisl amet convallis, porttitor magna
                     ullamcorper, amet egestas mauris. Ut magna finibus nisi nec sed
                     lacinia. Nam maximus erat id euismod egestas. Pellentesque sapien
                     ac quam. Lorem ipsum dolor sit nullam magna tempus. Lorem ipsum
                     sit tempus amet feugiat.</p>
                  <ul class="actions">
                     <li><a href="#" class="button next">Learn More</a></li>
                  </ul>
               </div>
               <div class="6u">
                  <span class="image fit"><img src="/images/coinss.png"
                     alt="" /></span>
               </div>
            </article>
         </div>
      </section>

      <!-- Section -->
      <section class="main alt" id="first">
         <header>
            <h2>Korea Vs. Foreign Markets</h2>
         </header>
         <div class="inner">
            <article class="post style2">
               <div class="content">
               <!-- https://codepen.io/pixelchar/pen/rfuqK 참고. -->
                  <div class="container" >
                       <table class="responsive-table">
                         <h1 style="text-align:center">TOP 5 KP</h1>
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
                        <h2 style="text-align:center">거래소간 KP</h2>
                        <thead>
                           <tr>
                              <th></th>
                              <th><h1>Bitthum</h1></th>
                              <th><h1>Coinone</h1></th>
                              <th><h1>Upbit</h1></th>
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
      <!-- Section -->
      <section class="main">
         <header>
            <h2>환율 참고 자료</h2>
            <p>환율 참고 자료를 넣어보겠습니다.</p>
         </header>
         <div class="inner">
            <ul class="faces">
               <li><span class="image"><img src="images/pic01.jpg"
                     alt="" /></span>
                  <h3>Jane Doe</h3>
                  <p>Sed magna etiam</p></li>
               <li><span class="image"><img src="images/pic02.jpg"
                     alt="" /></span>
                  <h3>John Smith</h3>
                  <p>Ipsum et dolor</p></li>
               <li><span class="image"><img src="images/pic03.jpg"
                     alt="" /></span>
                  <h3>Kate Anderson</h3>
                  <p>Euismod convallis</p></li>

            </ul>
         </div>
      </section>



      <!--페이지 밑단  -->
      <jsp:include page="/menuPages/footer.jsp"></jsp:include>


   </div>
   <!-- Scripts -->
   <script src="/assets/js/jquery.min.js"></script>
   <script src="/assets/js/jquery.dropotron.min.js"></script>
   <script src="/assets/js/jquery.scrollex.min.js"></script>
   <script src="/assets/js/jquery.scrolly.min.js"></script>
   <script src="/assets/js/skel.min.js"></script>
   <script src="/assets/js/util.js"></script>
   <script src="/assets/js/main.js"></script>
   <script type="text/javascript">
   
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
         var appendString ="";
         $.each(result.preList, function(j,mfield){
            if(j %3 == 0){
               appendString="<tr><td>"+mfield.uMarket+"</td><td>"+mfield.premium+"%</td>";               
            }else if(j%3==1){
               appendString = appendString+"<td>"+mfield.premium+"%</td>";   
            }else if(j%3==2){
               appendString = appendString +"<td>"+mfield.premium+"%</td></tr>";
               $("#marketBody").append(appendString);
            }
            
         });
         });
   });
   </script>
</body>
</html>