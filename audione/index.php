<?php include_once("connection.php");?>
<html>
<head>
<link rel="stylesheet" href="style.css">
</head>
<body>
    <div id="header"><img src="img/logo.png" alt="logo">Audioguida Rovereto</div>
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
</body>
<script>
    src="https://maps.googleapis.com/maps/api/js?callback=initMap&v=weekly"
    defer
</script>
<script>
function initMap() {
    const map = new google.maps.Map(document.getElementById("map"), {
            zoom: 13,
            mapTypeId: "terrain",
    });
<?php 
$stampa = mysqli_query($con, "SELECT * FROM  tappa");
while($row=mysqli_fetch_assoc($stampa))
{
    ?>
    
    new google.maps.Marker({
        position: <?php echo("{lat: ".$row["lat"].", lng: ".$row["lon"]."}");?>,
        map,
        title: <?php echo($row["nome"]);?>,
    });
    
    
    <?php
}
?>
}
window.initMap = initMap();
</script>
</html>