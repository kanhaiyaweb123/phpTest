<?php
include 'conn.php';

$firstName = $_POST['FirstName'];
$lastName = $_POST['lastname'];
$email = $_POST['email'];
$phoneNumber = $_POST['phonenumber'];
$docType = $_POST['doctype'];

$sql = "INSERT INTO doctor_details (First_Name, Last_Name, Email, phone_number, doc_type)
VALUES ('$firstName', '$lastName', '$email', '$phoneNumber', '$docType')";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
