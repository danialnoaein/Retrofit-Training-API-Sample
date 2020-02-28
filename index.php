<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
  
// get posted data
$data_raw_JSON = json_decode(file_get_contents("php://input"));

// set response code - 201 created
http_response_code(200);
 
$response = array();
$response['data'] = array( "data_raw_JSON" => $data_raw_JSON );
$response['data']['data_form_url_encoded'] = array();
$response['data']['file'] = array();

if ( $_POST && ($data_raw_JSON === null) ) {
    foreach ( $_POST as $key => $value ) {
        $response['data']['data_form_url_encoded'][$key] = $value ;
    }
}

// upload File
if ( $_FILES){
    $target_dir = "uploads/";
    $target_file = $target_dir . basename($_FILES["file"]["name"]);
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
    // Check if image file is a actual image or fake image
    if(isset($_POST["submit"])) {
        $check = getimagesize($_FILES["file"]["tmp_name"]);
        if($check !== false) {
            $response['data']['file']['validity'] = "File is an image - " . $check["mime"] . ".";
            $uploadOk = 1;
        } else {
            $response['data']['file']['validity'] =  "File is not an image.";
            $uploadOk = 0;
        }
    }
    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
        $response['data']['file']['uploadMessage'] = "Sorry, your file was not uploaded.";
    // if everything is ok, try to upload file
    } else {
        if (move_uploaded_file($_FILES["file"]["tmp_name"], $target_file)) {
            $response['data']['file']['uploadMessage'] = "The file ". basename( $_FILES["file"]["name"]). " has been uploaded.";
        } else {
            $response['data']['file']['uploadMessage'] = "Sorry, there was an error uploading your file.";
        }
    }
}








// tell the user
echo json_encode($response);





?>