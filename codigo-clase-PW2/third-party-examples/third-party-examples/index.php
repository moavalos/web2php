<!DOCTYPE html>
<html>
<title>Web Ejemplo</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    body, html {
        height: 100%;
        color: #777;
        line-height: 1.8;
        font-family: "Lato", sans-serif;
    }

    .background {
        background-image: url('./images/background.jpg');
        min-height: 100%;
        background-attachment: fixed;
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
        text-align: center;
    }

    .margin-bottom {
        margin-bottom: 50px;
    }

    .button {
        width: 30%;
        margin: 10px 10px 10px 10px;
    }

</style>
<body>

<div class="background w3-display-container w3-opacity-min">
    <div class="w3-display-middle">
        <div class="w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity margin-bottom">
            Uso de bibliotecas de terceros - PW2
        </div>

        <div class="w3-center w3-padding-large w3-white w3-xlarge w3-wide w3-animate-opacity">
            <div>
                <a class="w3-button w3-round-large w3-green button" target="_blank" href="dompdf-example">dompdf</a>
                <a class="w3-button w3-round-large w3-gray button" target="_blank" href="https://github.com/dompdf/dompdf">docu</a>
            </div>
            <div>
                <a class="w3-button w3-round-large w3-green button" target="_blank" href="fpdf-example">fpdf</a>
                <a class="w3-button w3-round-large w3-gray button" target="_blank" href="http://www.fpdf.org/en/tutorial/tuto1.htm">docu</a>
            </div>
            <div>
                <a class="w3-button w3-round-large w3-green button" target="_blank" href="jpgraph-example">jpgraph</a>
                <a class="w3-button w3-round-large w3-gray button" target="_blank" href="https://jpgraph.net/features/gallery.php#line1">docu</a>
            </div>
            <div>
                <a class="w3-button w3-round-large w3-green button" target="_blank" href="googlechart-example">gchart</a>
                <a class="w3-button w3-round-large w3-gray button" target="_blank" href="https://developers.google.com/chart/interactive/docs/quick_start">docu</a>
            </div>
        </div>
    </div>
</body>
</html>
