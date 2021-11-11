{{-- <x-guest-layout>
    <x-jet-authentication-card>
        <x-slot name="logo">
            <x-jet-authentication-card-logo />
        </x-slot>

        <x-jet-validation-errors class="mb-4" />

        <form method="POST" action="{{ route('register') }}">
            @csrf

            <div>
                <x-jet-label for="name" value="{{ __('Name') }}" />
                <x-jet-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required autofocus autocomplete="name" />
            </div>

            <div class="mt-4">
                <x-jet-label for="email" value="{{ __('Email') }}" />
                <x-jet-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required />
            </div>

            <div class="mt-4">
                <x-jet-label for="password" value="{{ __('Password') }}" />
                <x-jet-input id="password" class="block mt-1 w-full" type="password" name="password" required autocomplete="new-password" />
            </div>

            <div class="mt-4">
                <x-jet-label for="password_confirmation" value="{{ __('Confirm Password') }}" />
                <x-jet-input id="password_confirmation" class="block mt-1 w-full" type="password" name="password_confirmation" required autocomplete="new-password" />
            </div>

            <div class="flex items-center justify-end mt-4">
                <a class="underline text-sm text-gray-600 hover:text-gray-900" href="{{ route('login') }}">
                    {{ __('Already registered?') }}
                </a>

                <x-jet-button class="ml-4">
                    {{ __('Register') }}
                </x-jet-button>
            </div>
        </form>
    </x-jet-authentication-card>
</x-guest-layout> --}}

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="{{asset('backend/images/favicon.ico')}}">

    <title>Roatek School Management - Register page </title>
<style>
  body{
background:rgb(230,230,230);
margin-top: 40px;
}
.container{
position:relative;
background:rgb(230,230,230);
display:inline-block;
margin:auto;
box-shadow:4px 4px 4px grey,-4px -4px 4px white;
border-radius:20px;
padding-bottom:14px;
width:350px;
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
padding-left:8px;
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

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body align="center">
    <div class="container" align="center">
      <div id="logo"></div>
      <h3>School Registration </h3>
      <x-jet-validation-errors class="mb-4" />

        <form method="POST" action="{{ route('register') }}">
            @csrf

            <div id="user">
                {{-- <i class="fa fa-user"></i> --}}
                    <input type="text" id="name" name="name" :value="old('name')" class="input" required autofocus autocomplete="name" placeholder="&#61447; Fullname">
  
            </div>
                <br>
              <div id="user">
                    {{-- <i class="fa fa-envelope"></i> --}}
                    <input type="email" id="email" name="email" class="input" required  :value="old('email')" placeholder="&#xf0e0; Email">

              </div>
                <br>
            <div id="lock">
                {{-- <i class="fa fa-lock"></i> --}}
                    <input type="password" id="pass" name="password" class="input" required autocomplete="new-password" placeholder="&#xf023; Password">
            </div>
            <br>
            <div id="lock">
                {{-- <i class="fa fa-lock"></i> --}}
               
                <input type="password" id="password_confirmation" name="password_confirmation" class="input" required autocomplete="new-password"placeholder="&#xf023; Confirm Password">
            </div>
                {{-- <div class="check">
                <a href="{{ route('password.request') }}">Forgotten password ? </a><input  type="checkbox" onclick="toggle()" >Show Password
                </div> --}}

                  <br>
                  <button><b style="color: #fff;">Sign Up</b></button><br>
                  <div id="foot">
                    Already registered?<a href="{{ route('login') }}"> <b>Login</b> </a><br>
                  </div>
        </form>
  </div>


</body>


</html>
