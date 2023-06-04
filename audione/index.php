<?php 
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
    <div id="nome_marker"></div>
    <div id="info_marker">
        <div id="audio"></div>
        <div id = "descrizione_audio"></div>
        <div id="immagini">
            <?php
             //creare lista immagini e in caso di assenza immagini non mostrare niente
            ?>
        </div>
    </div>
    <div id="foot"></div>
    <?php
        }
    ?>
</body>
<script>
function initMap() {
    const uluru = { lat: -25.363, lng: 131.044 };
    const contentString =
    '<div id="content">' +
    '<div id="siteNotice">' +
    "</div>" +
    '<h1 id="firstHeading" class="firstHeading">Uluru</h1>' +
    '<div id="bodyContent">' +
    "<p><b>Uluru</b>, also referred to as <b>Ayers Rock</b>, is a large " +
    "sandstone rock formation in the southern part of the " +
    "Northern Territory, central Australia. It lies 335&#160;km (208&#160;mi) " +
    "south west of the nearest large town, Alice Springs; 450&#160;km " +
    "(280&#160;mi) by road. Kata Tjuta and Uluru are the two major " +
    "features of the Uluru - Kata Tjuta National Park. Uluru is " +
    "sacred to the Pitjantjatjara and Yankunytjatjara, the " +
    "Aboriginal people of the area. It has many springs, waterholes, " +
    "rock caves and ancient paintings. Uluru is listed as a World " +
    "Heritage Site.</p>" +
    '<p>Attribution: Uluru, <a href="https://en.wikipedia.org/w/index.php?title=Uluru&oldid=297882194">' +
    "https://en.wikipedia.org/w/index.php?title=Uluru</a> " +
    "(last visited June 22, 2009).</p>" +
    "</div>" +
    "</div>";
    const infowindow = new google.maps.InfoWindow({
    content: contentString,
    ariaLabel: "Uluru",
    });
    const map = new google.maps.Map(document.getElementById("map"), {
            zoom: 15,
            center:{ 
            lat: 45.890926,  lng: 11.043676},
            mapTypeId: "terrain",
    });
<?php 
$stampa = mysqli_query($con, "SELECT * FROM  tappa");

while($row=mysqli_fetch_assoc($stampa))
{
    $rimpiazza = [" ","'","-"];
    $nome = str_replace($rimpiazza,"",$row["nome"]);
    ?>
    
    const Marker<?php echo($nome);?>= new google.maps.Marker({
        position: <?php echo("{lat: ".$row["lat"].", lng: ".$row["lon"]."}");?>,
        map,
        title: "<?php echo($row["nome"]);?>",
    });
    google.maps.event.addListener(Marker<?php echo($nome);?>,"click", () => {
      infowindow.open({
        map,
        anchor: Marker<?php echo($nome);?>,
      });
    });
    <?php
}
?>

/*infoWindow.open(map);
  // Configure the click listener.
  map.addListener("click", (mapsMouseEvent) => {
    // Close the current InfoWindow.
    infoWindow.close();
    // Create a new InfoWindow.
    infoWindow = new google.maps.InfoWindow({
      position: mapsMouseEvent.latLng,
    });
    infoWindow.setContent(
      JSON.stringify(mapsMouseEvent.latLng.toJSON(), null, 2)
    );
    infoWindow.open(map);
  });*/
}
window.initMap = initMap();
</script>
<script
      src="https://maps.googleapis.com/maps/api/js?callback=initMap&v=weekly"
      defer
    ></script>
</html>
