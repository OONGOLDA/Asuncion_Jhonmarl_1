<?php
    include('config.php');
?>
<?php

?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CLASS REGISTRATION</title>
</head>
<body>
    <form action="List_Classes.php" method="POST">

        <label for="course_code">Course Code:</label>
        <select id="course_code" name="course_code" required>
        <?php
            $retrieve_All_Courses = "SELECT `CourseCode`, `CourseName` FROM `course`;";
            $result = $connection->query($retrieve_All_Courses);

            while ($row = $result->fetch_object()) {
                $CourseCode = $row->CourseCode;
                $CourseName = $row->CourseName;
                
                echo "<option value='$CourseCode'>$CourseCode | $CourseName</option>";
            }
        ?>
        </select><br><br>
        <label for="instructor">Instructor:</label>
        <select id="instructor" name="instructor" required>
        <?php
            $retrieve_All_Instructors = "SELECT `InstructorID`, `InstructorName` FROM `instructor`;";
            $result = $connection->query($retrieve_All_Instructors);

            while ($row = $result->fetch_object()) {
                $InstructorID = $row->InstructorID;
                $InstructorName = $row->InstructorName;
                
                echo "<option value='$InstructorID'>$InstructorName</option>";
            }

        ?>
        </select><br><br>

        <label for="room">Room:</label>
        <select id="room" name="room" required>
            <?php
                $retrieve_All_Rooms = "SELECT `RoomID`, `RoomName` FROM `room`;";
                $result = $connection->query($retrieve_All_Rooms);

                while ($row = $result->fetch_object()) {
                    $RoomID = $row->RoomID;
                    $RoomName = $row->RoomName;
                    
                    echo "<option value='$RoomID'>$RoomName</option>";
                }
            ?>
        </select><br><br>

        <label for="schedule">Schedule:</label>
        <input type="text" id="schedule" name="schedule" required><br><br>

        <label for="NoStudent">No. student:</label>
        <input type="text" id="NoStudent" name="NoStudent" required><br><br>

        <input type="submit" value="Register">
    </form>
</body>
</html>
<?php
     if (array_key_exists('Register', $_POST))
     {
      $course_code = $_POST['course_code'];
      $instructor = $_POST['instructor'];
      $room = $_POST['room'];
      $schedule  = $_POST['schedule'];
      $NoStudent  = $_POST['NoStudent'];
     
        $insert_person= "INSERT INTO class ( CourseID, InstructorID, RoomID, Schedule, NoOfStudents) VALUES
         ('$course_code','$instructor', '$room', '$schedule' ,'$NoStudent');";
      $result = $connection->query($insert_person);

      if ($result) {
        echo "Data inserted successfully!";
    } else {
        echo "Error: " . $connection->error;

     }
     } 
?>