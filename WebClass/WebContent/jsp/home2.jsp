<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/footer.css"
    
    <script>
       function menu_over(e) {
          e.setAttribute("class", "nav-item active");
          // <li class="nav-item active>"         
          
       }
       function menu_out(e) {
          e.setAttribute("class", "nav-item");
          // <li class="nav-item active>"         
       }
    </script>
    
    <style>
    div.container {
       padding-top: 30px
    }
    </style>
  
  </head>
  <body>
  <!-- ë©ë´ë° -->
     <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
     <a class="navbar-brand" href="#">Home</a>
     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
       <span class="navbar-toggler-icon"></span>
     </button>
   
     <div class="collapse navbar-collapse" id="navbarSupportedContent">
       <%@ include file="menu.jsp" %>
       <form class="form-inline my-2 my-lg-0" id="loginForm">
         <input class="form-control mr-sm-2" type="text" placeholder="ID" aria-label="ID" id="id" required>
         <input class="form-control mr-sm-2" type="password" placeholder="Password" aria-label="Password" id="password" required>
         <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
       </form>
     </div>
   </nav>
    <div class="container">
       <h1>Hello, Bootstrap</h1>
       <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p>
    </div>
    
    <!-- Modal ì°½ -->
    <%@ include file="modal.jsp" %>
    <%@ include file="footer.jsp" %>
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
     <script>
     $(document).ready(function(){
        $('#loginForm').submit(function (event) {
        
           event.preventDefault();
           
           
           //id, pwd ê° ê°ì ¸ì¤ê¸°
           var id = $("#id").val();
           var pwd = $("#password").val();
           console.log(id, pwd);
           // ìë²ë¡ post ë°©ì ì ì¡ (ajax)
           $.post("/WebClass/Login",
                 {id: id, pwd:pwd},
                 function(data) {
                    //ìë²ë¡ë¶í° ìëµì ë°ì¼ë©´
                    //alert(data.form.id+'ë ë¡ê·¸ì¸ëììµëë¤.');
                    var myModal= $('#myModal');
                    myModal.modal();
                    myModal.find('.modal-body').text(data.id+ 'has logined');
                 });
        });
     });
     // ê°ë¨íê² ì°ê¸°
     $(function() {
     
     });
     </script>
     
  </body>
</html>