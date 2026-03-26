<?php

include 'condb.php';

// รับค่า JSON จาก client
$data = json_decode(file_get_contents("php://input"), true);

$full_name = $data['full_name'] ?? '';
$department = $data['department'] ?? '';
$salary = $data['salary'] ?? '';
$active = $data['active'] ?? '';


// เช็คว่าข้อมูลครบถ้วนหรือไม่
if (
    empty($data['full_name']) ||
    empty($data['department']) ||
    empty($data['salary']) ||
    empty($data['active'])
) {
    echo json_encode([
        "status" => "error",
        "message" => "กรุณากรอกข้อมูลให้ครบ"
    ]);
    exit;
}
 // เช็คว่าข้อมูลเป็น JSON หรือไม่
if (!$data) {
    echo json_encode([
        "status" => "error",
        "message" => "รูปแบบ JSON ไม่ถูกต้อง"
    ]);
    exit;
}

  // เข้ารหัสรหัสผ่าน
   // $password_hash = password_hash($data["password"], PASSWORD_BCRYPT);

    try {
         // เพิ่มข้อมูลลูกค้า
        $sql = "INSERT INTO employees (full_name, department, salary, active)
                VALUES (:full_name, :department, :salary, :active)";

        $stmt = $conn->prepare($sql);

        $stmt->bindParam(":full_name", $data['full_name']);
        $stmt->bindParam(":department", $data['department']);
        $stmt->bindParam(":salary", $data['salary']);
        $stmt->bindParam(":active", $data['active']);

        if ($stmt->execute()) {
            echo json_encode([
                "status" => "success",
                "message" => "เพิ่มข้อมูลเรียบร้อย"
            ]);
        } else {
            echo json_encode([
                "status" => "error",
                "message" => "ไม่สามารถเพิ่มข้อมูลได้"
            ]);
        }

    } catch (PDOException $e) {
        echo json_encode([
            "status" => "error",
            "message" => $e->getMessage()
        ]);
    }

?>