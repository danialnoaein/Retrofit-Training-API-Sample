<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

http_response_code(200);

if ( array_key_exists("PHP_AUTH_USER", $_SERVER) &&  array_key_exists("PHP_AUTH_PW", $_SERVER) ) {

    echo json_encode( array( 'username' => $_SERVER["PHP_AUTH_USER"],'password' => $_SERVER["PHP_AUTH_PW"] ) );

}else if ( array_key_exists("HTTP_TOKEN", $_SERVER)  ) {
	    echo "tokenissended";

}else{
	echo "NOTHING";
}


?>