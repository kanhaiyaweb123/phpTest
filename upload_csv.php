<?php
include 'conn.php';

if (isset($_FILES['csvFile'])) {
    $file = $_FILES['csvFile']['tmp_name'];
    $handle = fopen($file, "r");
    
    while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
        $firstName = $data[0];
        $lastName = $data[1];
        $email = $data[2];
        $phoneNumber = $data[3];
        $docType = $data[4];
        
        $sql = "INSERT INTO doctor_details (First_Name, Last_Name, Email, phone_number, doc_type)
                VALUES ('$firstName', '$lastName', '$email', '$phoneNumber', '$docType')";
        
        $conn->query($sql);
    }
    
    fclose($handle);
    echo "CSV file successfully imported.";
} else {
    echo "No file uploaded.";
}

$conn->close();
?>
