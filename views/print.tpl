<!DOCTYPE html>
<html>
<head>
	<title> Lauren's Lovely Landscapes </title>
	<meta charset="utf8">  
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
   <link href="/static/bootstrap.min.css" rel="stylesheet" media="screen">
   <link href="/static/bootstrap-responsive.css" rel="stylesheet">
   <link href="/static/bootstrap.css" rel="stylesheet">

  <style type="text/css">
	body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
	
      }
	
	/* Custom container */
      .container-narrow {
        margin: 0 auto;
        max-width: 900px;
	border-style: solid;
	border-color: transparent;
	background-color: #D8D8D8	;
	z-index: 9;
	height : 100%;
	-moz-border-radius: 15px;
	border-radius: 15px;
	
      }
      .container-narrow > hr {
        margin: 30px 0;
      }

	.sidebar-nav {
        padding: 20px 0;
      }

      @media (max-width: 980px) {
        /* Enable use of floated navbar text */
        .navbar-text.pull-right {
          float: none;
          padding-left: 5px;
          padding-right: 5px;
        }
	
  </style>

</head>
<body>

  <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          
          <a class="brand pull-left" href="/"><em>Lauren's Lovely Landscapes </em></a>
	  
          <div class="nav-collapse collapse">
           
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>  <!-- end of div for nav bar-->
  
  <div class="container">
  <!-- <table class="table table-hover">
  <tr> -->
  <div class="hero-unit">
  <div>
  <h2><em>{{printInfo['properties']['name'][0]['value']}}</em><h2> </div>
  <br/>
  
		<img src="/static/images/{{printInfo['properties']['imgPath'][0]['value']}}" class="sale-photo">
	
		<h3>
			About this landscape:
		</h3>
	
		<div id="description">
			{{printInfo['properties']['description'][0]['value']}}
		</div>
		
		<h3>
			Price: 
		</h3>
		
		<div id="price">${{printInfo['properties']['price'][0]['value']}}</div>

  

 
  </div> <!-- end of the hero-unit-->
  </div> <!-- end of the container-->
  
</body>
</html>