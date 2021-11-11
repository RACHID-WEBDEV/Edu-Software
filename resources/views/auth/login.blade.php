<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="icon" href="{{asset('backend/images/favicon.ico')}}">

    <title>Roatek School Management - Log in </title>
<style>
  body{
background:rgb(230,230,230);
margin-top: 80px;
}
.container{
position:relative;
background:rgb(230,230,230);
display:inline-block;
margin:auto;
box-shadow:4px 4px 4px grey,-4px -4px 4px white;
border-radius:20px;
padding-bottom:14px;
width:330px;
}
#logo{
width:100px;height:100px;
background:url({{asset('backend/images/logo1.png')}});
background-size:100%;
margin-top:10px;
border-radius:50%;
box-shadow:5px 5px 5px grey, -5px -5px 5px white;

}

#user, #lock{

width:300px;
height:50px;
margin:auto;
border:none;
border-radius:20px;
background:rgb(230,230,230);
outline:none;
box-shadow:inset 5px 5px 5px grey, inset -5px -5px 5px white;
}
input:-webkit-autofill,
input:-webkit-autofill:hover,
input:-webkit-autofill:focus,
input:-webkit-autofill:active {
    transition: background-color 5000s ease-in-out 0s;
    -webkit-box-shadow: 0 0 0px 1000px rgb(230,230,230) inset;
    background-color:transparent;
    box-shadow:inset 5px 5px 5px grey, inset -5px -5px 5px white;
    border-radius:20px;
  
    
}



button{

margin:10px;
border-radius:20px;
border:none;
width:300px;
height:50px;
font-size:14px;
box-shadow:5px 5px 5px grey, -5px -5px 5px white;
outline:none;
background:#28589a;

}
button:hover{
box-shadow:1px 1px 5px grey,  -1px -1px 5px white;

}

.input{
width:295px;
height:50px;
border:none;
outline:none;
background:none;
font-family: 'FontAwesome';
padding-left:7px;
font-size:16px;
}




#foot{
font-size:14px;
margin-top:14px;}
a{text-decoration:none;outline:none;
}
i{
color:rgb(80,80,80);
}
h3{
color:rgb(80,80,80);
margin-bottom:20px;
margin-top:10px;
font-size:20px;

}
.check{
margin-top: 10px;
/* margin-left: 170px; */
}

</style>

  
</head>
<body align="center">
    <div class="container" align="center">
      <div id="logo"></div>
      <h3>School Login </h3>
      <x-jet-validation-errors class="mb-4" />
        <form method="POST" action="{{ route('login') }}">
            @csrf
              <div id="user">
                 
                 <input type="email" id="email" name="email" class="input" required autofocus placeholder="&#61447; Username">
              </div>
                <br>
              <div id="lock">
             
                  <input type="password" id="pass" name="password" class="input" required  placeholder="&#xf023; Password">
                  </div>
                <div class="check">
                  
                  <a href="{{ route('password.request') }}">Forgotten password ? </a><input  type="checkbox" onclick="toggle()" >Show Password
                </div>

                  <br>
                  <button><b style="color: #fff;">Log In</b></button><br>
                  <div id="foot">
                  Don't have an account?<a href="{{ route('register') }}"> <b>Sign Up</b> </a><br>
                  </div>
        </form>
  </div>


</body>
<!--  <i class="fa fa-eye"></i> -->
<script type="text/javascript">

function toggle() {
  var x = document.getElementById("pass");
  if (x.type === "password") {
  x.type = "text";
  } else {
  x.type = "password";
  }
}
</script>
</html>
