<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>

<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id"
	content="771582263734-gdlmsf3ncpp64ak17m9gheqc114r066q.apps.googleusercontent.com">

<title>Servlet</title>
</head>
<body>

	<h1>Login Page</h1>

	<div class="g-signin2" data-onsuccess="onSignIn"></div>
	<br>






	<script>
      function onSignIn(googleUser) {
         var profile = googleUser.getBasicProfile();
         console.log('ID: ' + profile.getId());
         console.log('Name: ' + profile.getName());
         console.log('Image URL: ' + profile.getImageUrl());
         console.log('Email: ' + profile.getEmail());
         console.log('id_token: ' + googleUser.getAuthResponse().id_token);

         
         var redirectUrl = 'loginServlet';
         
         
         var form = $('<form action="' + redirectUrl + '"  method="post">' +
                 '<input type="text" name="id_token" value="' +
                  googleUser.getAuthResponse().id_token + '" />' +
                                                       '</form>');
         $('body').append(form);
         form.submit();
         }

</script>


</body>
</html>