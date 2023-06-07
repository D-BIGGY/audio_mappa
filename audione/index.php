<?php 
    session_start();
    include_once("connection.php");
?>
<html>
<head>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <?php
        if($err){//pagina di errore nel caso il collegamento con il server non si andato a buon fine
            ?>
            <div id="div_err">
                <center><h1 class="h1_err">Errore nello stabilire la connessione con il server, si prega di riprovare più tardi</h1></center>
            </div>
            <?php
        }else{
    ?>
    <div id="header"><img id="logo"src="img/logo.png" alt="logo">Audioguida Rovereto</div>
    <div id="map"></div>
    <div id="nome_marker">
      <?php
        if(isset($_SESSION["selezionato"])){
          $stampa= mysqli_query($con,"SELECT nome FROM tappa WHERE id=".$_SESSION["id"]."");
          echo "| ".mysqli_fetch_assoc($stampa)["nome"];
        }else{
          echo"| AUDIOGUIDA ROVERETO";
        }
        ?>
    </div>
    <div id="info_marker">
        <div id="audio">
        <?php
              if(isset($_SESSION["selezionato"])){
                  echo "<source src='/Audio/".$_SESSION['id'].".mp3' type='audio/mpeg'>";
              }
            ?>
        </div>
        <div id = "descrizione_audio">
          <?php
            if(isset($_SESSION["selezionato"])){

            }else{
              echo"Benvenuti a Rovereto! Se desiderate scoprire e conoscere appieno questa
              meravigliosa città, l'utilizzo di un'audioguida può essere estremamente
              utile e vantaggioso.
              Rovereto, situata nel cuore della splendida regione del Trentino-Alto Adige
              in Italia, è una città ricca di storia, cultura e bellezze naturali. Con la sua
              lunga tradizione e il suo patrimonio culturale, Rovereto offre molte
              attrazioni da esplorare e siti da visitare.
              L'audioguida vi permetterà di scoprire i luoghi di interesse più significativi
              della città, fornendovi informazioni dettagliate e approfondite su ciascun
              luogo. Potrete ascoltare interessanti racconti storici, curiosità e aneddoti
              sulla città e i suoi monumenti.
              Sia che siate appassionati di storia, amanti dell'arte o semplicemente
              desideriate scoprire il fascino di questa incantevole città, l'audioguida sarà
              un prezioso compagno di viaggio. Buona esplorazione!";
            }

          ?>
        </div>
        <div id="immagini">
          <img src="" alt="">
            <?php
              if(isset($_SESSION["selezionato"])){
                $stampa = mysqli_query($con, "SELECT nome_file FROM  fotografia WHERE id = ".$_SESSION["id"]."");
                while($row=mysqli_fetch_assoc($stampa))
                {
                  echo "<img src=/Fotografie/".$row['nome_file'].".jpg alt='img'>";
                }
              }
            ?>
        </div>
    </div>
    <footer>L'audioguida fornisce una guida audio dettagliata e coinvolgente,
arricchendo l'esperienza di visita con informazioni, storie e
approfondimenti sulle opere d'arte o i luoghi di interesse.</footer>
    <?php
        }
    ?>
</body>
<script>
function initMap() {
  <?php 
$stampa = mysqli_query($con, "SELECT * FROM  tappa");?>
  var infoWindowContent= [
        <?php
            while($row = mysqli_fetch_assoc($stampa)){ ?>
                '<div class="info_content"><h3><?php echo str_replace("'","\'",$row["nome"]); ?></h3></div>',
        <?php 
        }
        ?>
        ];
    var infoWindow = new google.maps.InfoWindow(), marker;
    var map = new google.maps.Map(document.getElementById("map"), {
            zoom: 15,
            center:{ 
            lat: 45.890926,  lng: 11.043676},
            mapTypeId: "terrain",
    });
<?php 
$stampa = mysqli_query($con, "SELECT * FROM  tappa");
$i=0;
while($row2=mysqli_fetch_assoc($stampa))
{
    
    $rimpiazza = [" ","'","-"];
    $nome = str_replace($rimpiazza,"",$row2["nome"]);
    ?>
    
    var Marker<?php echo($nome);?>= new google.maps.Marker({
        position: <?php echo("{lat: ".$row2["lat"].", lng: ".$row2["lon"]."}");?>,
        map,
        title: "<?php echo($row2["nome"]);?>",
    });
    google.maps.event.addListener(Marker<?php echo $nome;?>,"click", (function(marker) {
            return function() {
                infoWindow.setContent(infoWindowContent[<?php echo$i ?>]);
                infoWindow.open(map, marker);
                <?php $_SESSION["selezionato"] = true; $_SESSION["id"]=$row2["id"]?>
            }
        })(marker));
    <?php
    $i++;
}
?>
}
google.maps.event.addDomListener(window, 'load', initMap);
//https://www.codexworld.com/adding-multiple-markers-with-info-windows-to-google-maps-dynamically-from-database/
</script>
<script
      src="https://maps.googleapis.com/maps/api/js?callback=initMap&v=weekly"
      defer
    ></script>
</html>
