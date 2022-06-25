

<?php include('layouts/header.php'); ?>




      <!--Home-->
      <section id="home">
        <div class="container">
          <h5>With AWS</h5>
          <h1><span>More Faster</span> High Availability</h1>
          <p>Now all you have to do is fast your fingers</p>
          <a href="shop.php"><button class="buy-btn">Buy Ticket Now</button></a> 

        </div>
      </section>

      <!--Brand-->
      <section id="brand" class="container">
        <div class="row m-0">
           <img class="img-fluid col-lg-3 col-md-6 col-sm-12" src="assets/imgs/brand1.jpeg"/>
           <img class="img-fluid col-lg-3 col-md-6 col-sm-12" src="assets/imgs/brand2.jpeg"/>
           <img class="img-fluid col-lg-3 col-md-6 col-sm-12" src="assets/imgs/brand3.jpeg"/>
           <img class="img-fluid col-lg-3 col-md-6 col-sm-12" src="assets/imgs/brand4.jpeg"/>
        </div>
      </section>

      <!--New-->
      <section id="new" class="w-100">
        <div class="row p-0 m-0">
          <!--One-->
          <div class="one col-lg-4 col-md-12 col-sm-12 p-0">
            <img class="img-fluid" src="assets/imgs/PSY SUMMER SWAG 2022 - INCHEON1.jpeg"/>
            <div class="details">
              <h2>PSY SUMMER SWAG 2022</h2>
              <a href="single_product.php?product_id=1"><button class="buy-btn">Buy Now</button></a> 
            </div>
          </div>
          <!--Two-->
          <div class="one col-lg-4 col-md-12 col-sm-12 p-0">
            <img class="img-fluid" src="assets/imgs/WATERBOMB 2022 - THAILAND1.jpeg"/>
            <div class="details">
              <h2>WATERBOMB 2022 - THAILAND</h2>
              <a href="single_product.php?product_id=2"><button class="buy-btn">Buy Now</button></a> 
            </div>
          </div>

          <!--Three-->
          <div class="one col-lg-4 col-md-12 col-sm-12 p-0">
            <img class="img-fluid" src="assets/imgs/BTS WORLDTOUR - NEWYORK1.jpeg"/>
            <div class="details">
              <h2>BTS WORLDTOUR - NEWYORK </h2>
              <a href="single_product.php?product_id=3"><button class="buy-btn">Buy Now</button></a> 
            </div>
          </div>
        </div>
      </section>



      <!--Featured-->
      <section id="featured" class="my-5 pb-5">
        <div class="container text-center mt-5 py-5">
          <h3>Our Featured</h3>
          <hr class="mx-auto">
          <p>Here you can check out our featured tickets</p>
        </div>
        <div class="row mx-auto container-fluid">

        <?php include('server/get_featured_products.php'); ?>


        <?php while($row= $featured_products->fetch_assoc()){ ?>

          <div class="product text-center col-lg-3 col-md-4 col-sm-12">
            <img class="img-fluid mb-3" src="assets/imgs/<?php echo $row['product_image']; ?>"style="
    height: 300px;"/>
            <div class="star">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
            </div>
            <h5 class="p-name"><?php echo $row['product_name']; ?></h5>
            <h4 class="p-price">$ <?php echo $row['product_price']; ?></h4>
           <a href="<?php echo "single_product.php?product_id=". $row['product_id'];?>"><button class="buy-btn">Buy Ticket Now</button></a> 
          </div>
      
 
          <?php } ?>
        </div>
      </section>


      <!--Banner-->
      <section id="banner" class="my-5 py-5">
        <div class="container">
          <h8>FIFA WORLD CUP</h8>
          
          <h1>Qatar 2022<br> Exclusive Sale</h1>
          <a href="https://www.fifa.com/fifaplus/en/tournaments/mens/worldcup/qatar2022"><button class="text-uppercase">Cooming Soon</button></a>
        </div>
      </section>
   

      <!--Clothes-->
      <section id="KOREA" class="my-5">
        <div class="container text-center mt-5 py-5">
          <h3>KOREA</h3>
          <hr class="mx-auto">
          <p>Make Good Memories</p>
        </div>
        <div class="row mx-auto container-fluid">

        <?php include('server/get_KOREA.php'); ?>
        <?php while($row=$coats_products->fetch_assoc()){ ?>

          <div class="product text-center col-lg-3 col-md-4 col-sm-12">
            <img class="img-fluid mb-3" src="assets/imgs/<?php echo $row['product_image']; ?>"/>
            <div class="star">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
            </div>
            <h5 class="p-name"><?php echo $row['product_name']; ?></h5>
            <h4 class="p-price">$ <?php echo $row['product_price']; ?> </h4>
            <a href="<?php echo "single_product.php?product_id=". $row['product_id'];?>"><button class="buy-btn">Buy Now</button></a> 
          </div>
          
          <?php } ?>
         
          
        </div>
      </section>


      <!--Watches-->
     <section id="ASIA" class="my-5">
      <div class="container text-center mt-5 py-5">
        <h3>ASIA</h3>
        <hr class="mx-auto">
        <p>Make Good Memories</p>
      </div>
      <div class="row mx-auto container-fluid">

      <?php include('server/get_ASIA.php'); ?>
      <?php while($row=$watches->fetch_assoc()){ ?>

        <div class="product text-center col-lg-3 col-md-4 col-sm-12">
        <img class="img-fluid mb-3" src="assets/imgs/<?php echo $row['product_image']; ?>"/>
          <div class="star">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
          </div>
          <h5 class="p-name"><?php echo $row['product_name']; ?></h5>
          <h4 class="p-price">$<?php echo $row['product_price'];?></h4>
          <a href="<?php echo "single_product.php?product_id=". $row['product_id'];?>"><button class="buy-btn">Buy Now</button></a> 
        </div>

      <?php } ?>
        
     
      </div>
     </section>

      <!--Shoes-->
      <section id="EUROPE" class="my-5">
        <div class="container text-center mt-5 py-5">
          <h3>EUROPE</h3>
          <hr class="mx-auto">
          <p>Make Good Memories</p>
        </div>
        <div class="row mx-auto container-fluid">

        <?php include('server/get_EUROPE.php');?>

        <?php while($row=$shoes->fetch_assoc()){ ?>


          <div class="product text-center col-lg-3 col-md-4 col-sm-12">
            <img class="img-fluid mb-3" src="assets/imgs/<?php echo $row['product_image']; ?>"/>
            <div class="star">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
            </div>
            <h5 class="p-name"><?php echo $row['product_name']; ?></h5>
          <h4 class="p-price">$<?php echo $row['product_price'];?></h4>
          <a href="<?php echo "single_product.php?product_id=". $row['product_id'];?>"><button class="buy-btn">Buy Now</button></a> 
          </div>

        <?php } ?>
         
        
        </div>
      </section>

    
 


<?php include('layouts/footer.php'); ?>
