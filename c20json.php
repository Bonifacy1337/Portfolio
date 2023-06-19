<!DOCTYPE html> 
<html lang="en"> 
<head> 
  <meta charset="UTF-8"> 
  <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
  <title>JSON</title> 
  <style> 
    #dp {margin-bottom: 10px; 
         border-radius: 10px; 
         width: 250px;} 
    td, th {border: solid black 1px; 
            padding-left: 5px; 
            padding-right: 5px;} 
    th {background-color: yellow;} 
    tr:nth-child(2n+1) {background-color: lightgrey;} 
    table {border-collapse: collapse;
           margin-top: 10px;} 
    .liczba {text-align:right;} 
    .tekst {width: 80px;} 
  </style> 
  <script> 
    function tworz_json() { 
      let imie=document.getElementById('imie').value; 
      let nazw=document.getElementById('nazw').value; 
      let wiek=document.getElementById('wiek').value;  
      let tekst='{"imie":"'+imie+ 
                '","nazwisko":"'+nazw+ 
                '","wiek":'+wiek+'}'; 
      document.getElementById('dane').value=tekst; 
    }
  </script> 
</head>  
<body> 
  <h4>Wprowadź dane</h4> 
  <form action="c20json.php" method="get"> 
    <fieldset id="dp"> 
      <legend>Dane podstawowe</legend> 
      Imię: <input type="text"   
            maxlength="15" id="imie"  
            placeholder="Podaj twoje imie" 
            pattern="[A-ZŁŻ][a-ząćęłńóśżź]{2,14}"><br> 
      Nazwisko: <input type="text"  
            maxlength="20" id="nazw" 
            placeholder="Podaj nazwisko" 
            pattern="[A-ZŁŻ][a-ząćęłńóśżź]{2,19}"><br> 
      Lat: <input type="number"  
            placeholder="Wpisz wiek" 
            id="wiek" min="1" max="100"><br> 
            <input type="hidden" name="dane" id="dane"> 
    </fieldset> 
    <input type="submit" value="Zapisz" 
       onclick="tworz_json()"> 
    <input type="reset" value="Czyść"> 
  </form> 
  <?php 
    function dekoduj($tekst) { 
      $tekst=substr($tekst,1,-1); 
      $tab=explode(',',$tekst); 
      for($i=0; $i<count($tab); $i++){
        $tab2=explode(':',$tab[$i]); 
        $tab_wy[substr($tab2[0],1,-1)]= 
             trim($tab2[1],'"'); 
      } 
      return $tab_wy; 
    }
    function zapisz($plik,$znak,$dane) { 
      $f=fopen($plik, 'a'); 
      $tekst=''; 
      foreach($dane as $klucz => $wart) { 
        $tekst.=$klucz.'='.$wart.'|'; 
      } 
      $tekst=substr($tekst,0,-1); 
      fwrite($f, $tekst.PHP_EOL); 
      fclose($f); 
    }
 
    function czytaj($plik, $znak) {
      $f=fopen($plik, 'r'); 
      while(!feof($f)) { 
        $tekst=rtrim(fgets($f));
        if($tekst!='') { 
          $tab=explode($znak,$tekst); 
          for($i=0; $i<3; $i++) { 
            $tab2=explode('=',$tab[$i]); 
            $osoba[$tab2[0]]=$tab2[1]; 
          } 
          $wynik[]=$osoba; 
        } 
      } 
      fclose($f); 
      return $wynik; 
    }
 
    function wypisz($dane) { 
      echo <<< KONIEC
        <table>
        <tr> 
          <th>Imie</th><th>Nazwisko</th><th>Wiek</th> 
        </tr> 
      KONIEC; 
      for($i=0; $i<count($dane); $i++) { 
        echo '<tr>'; 
        echo "<td class=\"tekst\"> 
                 {$dane[$i]['imie']}</td>"; 
        echo "<td class=\"tekst\"> 
                 {$dane[$i]['nazwisko']}</td>"; 
        echo "<td class=\"liczba\"> 
                 {$dane[$i]['wiek']}</td>"; 
      } 
    }
 
    $dane_json= isset($_GET['dane'])  
                ? $_GET['dane'] : ''; 
    $tab2= $dane_json ? dekoduj($dane_json) : []; 
    if($tab2['imie']!='') 
      zapisz('c20json.txt','|',$tab2); 
     $dane=czytaj('c20json.txt','|');
    wypisz($dane); 
  ?>   
</body> 
</html> 