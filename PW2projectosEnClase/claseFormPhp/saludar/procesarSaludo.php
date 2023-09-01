<html>
<body>

<?PHP
$nombre = validarGet("nombre");

echo "buenas tardes " . $nombre . "!";

function validarGet($variable){
    $data = "";
    if( isset($_GET[$variable]) ){
        $data = $_GET[$variable];
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
    }
    return $data;
}
?>

</body>
</html>