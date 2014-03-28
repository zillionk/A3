<!doctype html>
<html>
<head>
	<title>CMPT350-A2</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
	<script src="engine.js"></script>
	<!-- Bo Dong 11145435 bod458 -->
</head>
<body>
<section data-role="page" id= "shoppingListPage">
	<header data-role="header">
		<h1>Shopping Cart</h1>
	</header><!-- /header -->
	<article data-role="content">
		<!-- <div data-role="popup" id="purchase" data-theme="a" data-overlay-theme="b" class="ui-content" style="max-width:340px; padding-bottom:2em;">
		    <h3>Purchase Success!</h3>
		<p>Your book is in cart now.</p>
		    <a href="#cartPage" data-role="button">OK</a>
		</div> -->				
		<ul data-role="listview">
			<li><a href="<%=response.encodeURL("cart?ISBN=01")%>" onclick="">
				<img src="http://booksend.files.wordpress.com/2011/07/deathly-hallows-bloomsbury.jpg" alt="" height="100" >
				<h2>Harry Potter</h2>
				<p>$14.95</p></a>
  			</li>
			<li><a href="<%=response.encodeURL("cart?ISBN=02")%>" onclick="">
				<img src="http://d202m5krfqbpi5.cloudfront.net/books/1360096633l/979761.jpg" alt="" height="100">
				<h2>Forever Autumn</h2>
				<p>$20.55</p></a>
  			</li>
  			<li><a href="<%=response.encodeURL("cart?ISBN=03")%>" onclick="">
				<img src="http://2.bp.blogspot.com/-5_ys7I7USBo/T4MwCREbX7I/AAAAAAAAA5A/sUIrq8YIrG4/s1600/a-game-of-thrones.jpg" alt="" height="100">
				<h2>A Game of Thrones</h2>
				<p>$32.55</p></a>
  			</li>
  			<li><a href="<%=response.encodeURL("cart?ISBN=04")%>" onclick="">
				<img src="http://www.parallelworldsmagazine.com/wp-content/uploads/2013/06/2001.jpg" alt="" height="100">
				<h2>2001: A Space Odyssey</h2>
				<p>$11.20</p></a>
  			</li>
  			<li><a href="<%=response.encodeURL("cart?ISBN=05")%>" onclick="">
				<img src="http://www.harpercollins.com/harperimages/isbn/large/5/9780688002305.jpg" alt="" height="100">
				<h2>Zen and the Art of Motorcycle Maintenance</h2>
				<p>$25.00</p></a>
  			</li>
  			<li><a href="<%=response.encodeURL("cart?ISBN=06")%>" onclick="">
				<img src="http://1.bp.blogspot.com/_mPEPXtLxfEo/TA2U1K_FxjI/AAAAAAAAATM/dFvgQKJ_xEw/s1600/norwegian-wood.jpg" alt="" height="100">
				<h2>Norwegian Wood</h2>
				<p>$15.00</p></a>
  			</li>
  			<li><a href="<%=response.encodeURL("cart?ISBN=07")%>" onclick="">
				<img src="http://31.media.tumblr.com/739a85a69ca57167aeac56964683dc9e/tumblr_mxg34xnFq81sf8cgto1_1280.jpg" alt="" height="100">
				<h2>MelonPi:a Cute Cat</h2>
				<p>$19.00</p></a>
  			</li>
  			<li><a href="<%=response.encodeURL("cart?ISBN=08")%>" onclick="">
				<img src="http://www.japanfocus.org/data/chrys.cover.jpg" alt="" height="100">
				<h2>The Chrysanthemum and the Sword</h2>
				<p>$15.00</p></a>
  			</li>
  			<li><a href="<%=response.encodeURL("cart?ISBN=09")%>" onclick="">
				<img src="http://evolbiol.ru/gene/images_en/cover.jpg" alt="" height="100">
				<h2>The Selfish Gene</h2>
				<p>$19.00</p></a>
  			</li>
  			<li><a href="<%=response.encodeURL("cart?ISBN=10")%>" onclick="">
				<img src="http://upload.wikimedia.org/wikipedia/en/thumb/0/0f/Threebody.jpg/200px-Threebody.jpg" alt="" height="100">
				<h2>Three Body Trilogy</h2>
				<p>$45.00</p></a>
  			</li>	
		</ul>
		
	</article><!-- /content -->

</section><!-- /page -->

<section data-role="page" id= "cartPage">
	<header data-role="header">
		<h1>Shopping Cart</h1>
		<nav data-role="navbar">
			<ul>
				 <li><a href="#shoppingListPage">Book List</a></li>
				 <li><a href="#cartPage">Cart</a></li>

			</ul>
		</nav>
	</header><!-- /header -->
	<article data-role="content">
		<ul data-role="listview" id="summary">
		</ul>
		<ul data-role="listview" id= "cartList">
		</ul>
	</article><!-- /content -->

</section><!-- /page -->
</body>
</html>