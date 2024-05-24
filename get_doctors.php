<?php
include 'conn.php';

$filter = isset($_POST['filter']) ? $_POST['filter'] : '';

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['userId'])) {
    $userId = $_POST['userId'];

    
    $sql = "DELETE FROM doctor_details WHERE id = $userId";


    if ($conn->query($sql) === TRUE) {
        echo "User deleted successfully";
    } else {
        echo "Error deleting user: " . $conn->error;
    }
}




$sql = "SELECT * FROM doctor_details";
if ($filter != '') {
    $sql .= " WHERE doc_type='$filter'";
}


if ($result = $conn->query($sql)) {
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            echo "<tr>
                    <td>{$row['First_Name']}</td>
                    <td>{$row['Last_Name']}</td>
                    <td>{$row['Email']}</td>
                    <td>{$row['phone_number']}</td>
                    <td>{$row['doc_type']}</td>
                    <td><button id='deleteData' class='btn btn-danger' data-id='{$row['id']}'>Delete</button></td>
                  </tr>";
        }
    } else {
        echo "<tr><td colspan='6'>No doctors found</td></tr>";
    }
    $result->free();
} else {
    echo "Error fetching doctors: " . $conn->error;
}

$conn->close();
?>
