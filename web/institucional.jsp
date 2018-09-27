<%-- 
    Document   : institucional
    Created on : 27/09/2018, 10:41:49
    Author     : alunocmc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>GARAGEM NERD</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif;}
body, html {
    height: 100%;
    color: #777;
    line-height: 1.8;
}

/* Create a Parallax Effect */
.bgimg-1, .bgimg-2, .bgimg-3 {
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}

/* First image (Logo. Full height) *//*topo da pagina*/
.bgimg-1 {
    background-image: url("images/Img_Quad/avengers_1.jpg");
    min-height: 100%;
}

/* Second image (Portfolio) *//*meio da pagina*/
.bgimg-2 {
    background-image: url("imagem/vingadores_logo.jpg");
    min-height: 400px;
}

/* Third image (Contact) *//*fim da pagina*/
.bgimg-3 {
    background-image: url("imagem/thor1.jpg");
    min-height: 400px;
}

.w3-wide {letter-spacing: 10px;}
.w3-hover-opacity {cursor: pointer;}

/* Turn off parallax scrolling for tablets and phones */
@media only screen and (max-device-width: 1024px) {
    .bgimg-1, .bgimg-2, .bgimg-3 {
        background-attachment: scroll;
    }
}
</style>
<body>

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar" id="myNavbar">
    <a class="w3-bar-item w3-button w3-hover-black w3-hide-medium w3-hide-large w3-right" href="javascript:void(0);" onclick="toggleFunction()" title="Toggle Navigation Menu">
      <i class="fa fa-bars"></i>
    </a>
    <a href="#home" class="w3-bar-item w3-button">HOME</a>
    <a href="#about" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i>SOBRE NÓS</a>
    <a href="#portfolio" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i> PRATELEIRA VIRTUAL</a>
    <a href="#contact" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-envelope"></i> CONTATO</a>
    <a href="#login" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-envelope"></i> LOGIN</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-red">
      <i class="fa fa-search"></i>
    </a>
  </div>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium">
    <a href="#about" class="w3-bar-item w3-button" onclick="toggleFunction()">SOBRE NÓS</a>
    <a href="#portfolio" class="w3-bar-item w3-button" onclick="toggleFunction()">PRATELEIRA VIRTUAL</a>
    <a href="#contact" class="w3-bar-item w3-button" onclick="toggleFunction()">CONTATO</a>
    <a href="#login" class="w3-bar-item w3-button" onclick="toggleFunction()">LOGIN</a>
    <a href="#" class="w3-bar-item w3-button">SEARCH</a>
  </div>
</div>

<!-- First Parallax Image with Logo Text -->
<div class="bgimg-1 w3-display-container w3-opacity-min" id="home">
  <div class="w3-display-middle" style="white-space:nowrap;">
    <span class="w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity">GARAGEM NERD<span class="w3-hide-small"></span> 
  </div>
</div>

<!-- Container (About Section) -->
<div class="w3-content w3-container w3-padding-64" id="about">
  <h3 class="w3-center">SOBRE NÓS</h3>
  <p class="w3-center"><em>Tudo começou por acaso</em></p>

  <div class="w3-row">
    <div class="w3-col m6 w3-center w3-padding-large">
      <!--<p><b><i class="fa fa-user w3-margin-right"></i>My Name</b></p><br> -->
      <img src="imagem/comics.jpg" class="w3-round w3-image w3-opacity w3-hover-opacity-off" alt="Photo of Me" width="500" height="333">
    </div>

    <!-- Hide this text on small devices -->
    <!-- Sobre nós -->
    <div class="w3-col m6 w3-hide-small w3-padding-large">
      <p>A empresa "Garagem Nerd" tem sua origem no interior do estado de São Paulo, 
          mais especificamente na região do Alto Tietê. A história teve início com dois amigos que 
          resolveram juntar suas coleções “nerds” para uma coisa bem americana, a venda de garagem, 
          que nada mais é que abrir sua garagem e vender de forma informal seus objetos usados. 
          Com o intuito de abranger mais clientes e poder atingir um mercado em crescimento, resolveram apostar no mundo digital.
      </p>
    </div>
  </div>
 
</div>

<div class="w3-row w3-center w3-dark-grey w3-padding-16">
  
</div>

<!-- Second Parallax Image with Portfolio Text -->
<div class="bgimg-2 w3-display-container w3-opacity-min">
  <div class="w3-display-middle">
    <span class="w3-xxlarge w3-text-white w3-wide">PRATELEIRA  VIRTUAL</span>
  </div>
</div>

<!-- Container (Portfolio Section) -->
<div class="w3-content w3-container w3-padding-64" id="portfolio">
  <h3 class="w3-center">PRATELEIRA VIRTUAL</h3>
  <p class="w3-center"><em>Nossa prateleira conta com uma variedade de opções do mercado de quadrinhos. Temos desde de quadrinhos americanos até mangás !!!! </em></p><br>
  <p class="w3-center"><em>Para aproveitar melhor nossa loja, você precisa se logar primeiro e assim terá acesso a todo conteúdo que ela oferece!</em></p><br>


  <!-- Responsive Grid. Four columns on tablets, laptops and desktops. Will stack on mobile devices/small screens (100% width) -->
  <div class="w3-row-padding w3-center">
    <div class="w3-col m3">
        <img src="imagem/Amazing_Spider-Man_Vol_1_97.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Amazing Spider Man">
    </div>

    <div class="w3-col m3">
        <img src="imagem/Homem_Aranha_1963.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Homem - Aranha">
        
    </div>

    <div class="w3-col m3">
        <img src="imagem/wolverine_colecaoHistorica.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Wolwerine">
    </div>

    <div class="w3-col m3">
        <img src="imagem/Capa-Deadpool.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Deadpool">
    </div>
  </div>

  <div class="w3-row-padding w3-center w3-section">
    <div class="w3-col m3">
      <img src="imagem/Batman_1.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Batman">
    </div>

    <div class="w3-col m3">
      <img src="imagem/Mulher_Maravilha.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Mulher - Maravilha">
    </div>

    <div class="w3-col m3">
      <img src="imagem/coringa.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Coringa , Batman e o Maskara">
    </div>

    <div class="w3-col m3">
      <img src="imagem/images.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Flash">
    </div>
      <a href="login.jsp"><button style="margin-top:64px">ENTRE E CONHEÇA MELHOR NOSSA LOJA!!!</button></a>
    
    
  </div>
</div>

<!-- Modal for full size images on click-->
<div id="modal01" class="w3-modal w3-black" onclick="this.style.display='none'">
  <span class="w3-button w3-large w3-black w3-display-topright" title="Close Modal Image"><i class="fa fa-remove"></i></span>
  <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
    <img id="img01" class="w3-image">
    <p id="caption" class="w3-opacity w3-large"></p>
  </div>
</div>

<!-- Third Parallax Image with Portfolio Text -->
<div class="bgimg-3 w3-display-container w3-opacity-min">
  <div class="w3-display-middle">
     <span class="w3-xxlarge w3-text-white w3-wide">CONTATO</span>
  </div>
</div>

<!-- Container (Contact Section) -->
<div class="w3-content w3-container w3-padding-64" id="login">
  <h3 class="w3-center">CONTATO</h3>
  <p class="w3-center"><em>Gostou do site, tem alguma dúvida, sugestão, quer nos contar? Então entre em contato conosco, adoramos manter contato com nossos clientes!</em></p>
  <div class="w3-row w3-padding-32 w3-section">
    <div class="w3-col m4 w3-container">
      <!-- Add Google Maps -->
      <div id="googleMap" class="w3-round-large w3-greyscale" style="width:100%;height:400px;"></div>
    </div>
    <div class="w3-col m8 w3-panel">
      <div class="w3-large w3-margin-bottom">
          <p>Vamos tomar um <i class="fa fa-coffee"></i> juntos,conte nos mais:</p>
        <i class="fa fa-map-marker fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i> São Paulo, BR<br>
        <i class="fa fa-phone fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i> Phone: +55 11979952206<br>
        <i class="fa fa-envelope fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i> Email: garagemnerd2.7@gmail.com<br>
      </div>
      
      <form action="/action_page.php" target="_blank">
        <div class="w3-row-padding" style="margin:0 -16px 8px -16px">
          <div class="w3-half">
            <input class="w3-input w3-border" type="text" placeholder="Name" required name="Name">
          </div>
          <div class="w3-half">
            <input class="w3-input w3-border" type="text" placeholder="Email" required name="Email">
          </div>
        </div>
        <input class="w3-input w3-border" type="text" placeholder="Message" required name="Message">
        <button class="w3-button w3-black w3-right w3-section" type="submit">
          <i class="fa fa-paper-plane"></i> SEND MESSAGE
        </button>
      </form>
    </div>
  </div>
</div>

<!-- Footer -->
<footer class="w3-center w3-black w3-padding-64 w3-opacity w3-hover-opacity-off">
  <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-text-green">w3.css</a></p>
</footer>
 
<!-- Add Google Maps -->
<script>
function myMap()
{
  myCenter=new google.maps.LatLng(41.878114, -87.629798);
  var mapOptions= {
    center:myCenter,
    zoom:12, scrollwheel: false, draggable: false,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapOptions);

  var marker = new google.maps.Marker({
    position: myCenter,
  });
  marker.setMap(map);
}

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}

// Change style of navbar on scroll
window.onscroll = function() {myFunction()};
function myFunction() {
    var navbar = document.getElementById("myNavbar");
    if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
        navbar.className = "w3-bar" + " w3-card" + " w3-animate-top" + " w3-white";
    } else {
        navbar.className = navbar.className.replace(" w3-card w3-animate-top w3-white", "");
    }
}

// Used to toggle the menu on small screens when clicking on the menu button
function toggleFunction() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->
<%@include file="footer.jsp" %>
</body>
</html>


