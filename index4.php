<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        th,td{
            border: 1px solid lightgrey;
            padding: 5px;
        }
    </style>
</head>
<body>
    <h1>Projekt komis krok po kroku</h1>
        <h3>Sortowanie danych wedlug kolumny</h3>
            <hr>
                <table>
                    <tr>
                        <th><a href="index4.php?sortowanie=marka"> marka</a></th>
                        <th><a href="index4.php?sortowanie=model">model</a></th>
                        <th><a href="index4.php?sortowanie=silnik">silnik</a></th>
                        <th><a href="index4.php?sortowanie=rocznik">rocznik</a></th>
                        <th><a href="index4.php?sortowanie=przebieg">przebieg</a></th>
                        <th><a href="index4.php?sortowanie=cenas">cenas</a></th>
                    </tr>
                        <?php
                        if(isset($_GET['sortowanie']))
                        $sortowanie =$_GET['sortowanie'];
                        else
                        $sortowanie ='cenas';



                        
                        $link = mysqli_connect('localhost','root','','komis');
                        $wynik = mysqli_query($link, "SELECT * FROM oferty ORDER BY $sortowanie"); //dodajemy order by
                        foreach($wynik as $wiersz)
                        {
                        echo'<tr>';
                            echo '<td>'.$wiersz['marka'].'</td>';
                            echo '<td>'.$wiersz['model'].'</td>';
                            echo '<td>'.$wiersz['silnik'].'</td>';
                            echo '<td>'.$wiersz['rocznik'].'</td>';
                            echo '<td>'.$wiersz['przebieg'].'</td>';
                            echo '<td>'.$wiersz['cenas'].'</td>';
                        echo'</tr>';
                        }
                        mysqli_free_result($wynik);
                        mysqli_close($link);
                        ?>
                </table>
</body>
</html>