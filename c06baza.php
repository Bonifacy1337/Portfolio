<!DOCTYPE html> 
<html lang="en"> 
<head> 
  <meta charset="UTF-8"> 
  <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
  <title>Baza danych</title> 
  <style> 
    table {border-collapse: collapse;} 
    td, th {border: solid green 1px;} 
    th {background-color: yellow;} 
    tr:nth-child(3n+1) {background-color: lightgray;} 
    [type="text"] {width: 60px;} 
  </style> 
</head> 
<body> 
  <form action="c06baza.php" method="get"> 
    <input type="text" name="login"> 
    <input type="text" name="haslo"><br> 
    <input type="submit" value="Dopisz"> 
  </form> 
  <br> 
<?php 
  $serwer='localhost'; 
  $baza='osooby'; 
  $usr='root'; 
  $pwd=''; 
  $tabela='osoby'; 
  function pisz($tab) { 
    echo '<table><tr> 
      <th>id</th> <th>login</th> <th>hasło</th> 
      </tr>'; 
    foreach($tab as $wiersz) { 
      echo "<tr><td>{$wiersz['id']}</td> 
            <td>{$wiersz['login']}</td> 
            <td>{$wiersz['haslo']}</td></tr>"; 
    } 
    echo '  </table>'; 
  }  
  function polacz($serwer, $baza, $login, $haslo) { 
    $link=mysqli_connect($serwer, $login, $haslo); 
    mysqli_select_db($link, $baza); 
    return $link; 
  }
  function czytaj($link, $tabela) { 
    $wynik=mysqli_query($link, "SELECT * FROM $tabela"); 
    foreach($wynik as $wiersz) {   
      $tab[]=$wiersz; 
    } 
    mysqli_free_result($wynik); 
    return $tab; 
  } 
function zapisz($link, $tabela, $login, $haslo) { 
  $q="SELECT id, login, haslo FROM $tabela  
      WHERE login='$login'"; 
  $wynik=mysqli_query($link, $q); 
  if(mysqli_num_rows($wynik)) { 
    echo 'Taki login już istnieje<br>'; 
    return ;
  } 
  else 
    { 
      $q="INSERT INTO $tabela (login,haslo)  
          VALUES('$login', '$haslo')"; 
      mysqli_query($link, $q); 
      return 0; 
    }; 
}  
$link=polacz($serwer, $baza, $usr, $pwd); 
$login=isset($_GET['login']) ? $_GET['login'] : ''; 
$haslo=isset($_GET['haslo']) ? $_GET['haslo'] : ''; 
if($login) $wynik=zapisz($link, $tabela, $login, $haslo); 
$dane=czytaj($link, $tabela); 
pisz($dane); 
mysqli_close($link); 
?> 
</body> 
</html> 

 
