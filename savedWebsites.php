<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

http_response_code(200);

$savedWebsites = array(); 

//Sample Data
array_push( $savedWebsites , array( 'id' => 0 ,  "name" => "Appafarini" ,  "address" => "appafarini.com" ) );
array_push( $savedWebsites , array( 'id' => 1 ,  "name" => "Danial Noaein" ,  "address" => "noaein.ir" ) );
array_push( $savedWebsites , array( 'id' => 2 ,  "name" => "Google" ,  "address" => "google.com" ) );


$response = array();

if ( isset( $_POST["id"] ) ) {

	$id = $_POST["id"];
    foreach ($savedWebsites as $key => $val) {
       	if ($val['id'] == $id) {
        	echo json_encode($savedWebsites[$id]);
       	}
   	}

}else{

	// echo filnal JSON
	echo json_encode($savedWebsites);

}

?>