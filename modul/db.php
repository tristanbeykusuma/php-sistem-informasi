<?php
     
  
    function getTodoItems($user_id){
        include "koneksi/koneksi.php";
        $result = mysqli_query($conn, "SELECT * FROM todos");
        echo "<form action='#' method = 'POST'>";
        $nomor=1;
        while($dsatz = mysqli_fetch_assoc($result))
        {   
            echo "<table>";
            echo "<tr>";
            echo "<td>$nomor. </td>";
            echo "<td>  | </td>";
            echo "<td>" . $dsatz["todo_item"] . "</td>";
            echo "<td>  | </td>";
            echo "<td>" . $dsatz["notelp"] . "</td>";
            echo "</tr>";
            echo "</table>";
            $nomor++;
        }
        echo "</hr>";
        echo "</form>";
    }

    function addTodoItem($todo_text, $telepon){
        include "koneksi/koneksi.php";
        mysqli_query($conn,"INSERT INTO todos(todo_item, notelp) VALUES ('$todo_text', '$telepon')");        
    }
    
    function deleteTodoItem($todo_id){
        include "koneksi/koneksi.php";
        mysqli_query($conn, "DELETE FROM todos WHERE id = 1");
        mysqli_query($conn, "SET @num := 0");
        mysqli_query($conn, "UPDATE todos SET id = @num := (@num+1)");
    }

    function getTicketItems($user_id){
        include "koneksi/koneksi.php";
        $result = mysqli_query($conn, "SELECT * FROM tickets");
        echo "<form action='#' method = 'POST'>";
        $nomor=1;
        while($dsatz = mysqli_fetch_assoc($result))
        {   
            echo "<table>";
            echo "<tr>";
            echo "<td>$nomor. </td>";
            echo "<td>  | </td>";
            echo "<td>" . $dsatz["title"] . "</td>";
            echo "<td>  | </td>";
            echo "<td>" . $dsatz["msg"] . "</td>";
            echo "<td>  | </td>";
            echo "<td>" . $dsatz["email"] . "</td>";
            echo "</tr>";
            echo "</table>";
            $nomor++;
        }
        echo "</hr>";
        echo "</form>";
    }

    function addTicketItem($ticket_title, $msg, $email){
        include "koneksi/koneksi.php";
        mysqli_query($conn,"INSERT INTO tickets(title, msg, email) VALUES ('$ticket_title', '$msg','$email')");        
    }
    
    function deleteTicketItem($todo_id){
        include "koneksi/koneksi.php";
        mysqli_query($conn, "DELETE FROM tickets WHERE title = 1");
        mysqli_query($conn, "SET @num := 0");
        mysqli_query($conn, "UPDATE tickets SET id = @num := (@num+1)");
    }

    
?>