<?php include('layouts/header.php'); ?>




<?php

include('server/connection.php');

if(isset($_GET['product_id'])){

   $product_id =  $_GET['product_id'];

    $stmt = $conn->prepare("SELECT * FROM products WHERE product_id = ?");
    $stmt->bind_param("i",$product_id);

    $stmt->execute();


    $product = $stmt->get_result();//[]




  //no product id was given
}else{

  header('location: index.php');

}



?>






      <!--Single product-->
      <section class="container single-product my-5 pt-5">
        <div class="row mt-5">

          <?php  while($row = $product->fetch_assoc()){ ?>

       
          
            <div class="col-lg-5 col-md-6 col-sm-12">
                <img class="img-fluid w-100 pb-1" src="assets/imgs/<?php echo $row['product_image']; ?>" id="mainImg"/>
                <div class="small-img-group">
                    <div class="small-img-col">
                        <img src="assets/imgs/<?php echo $row['product_image']; ?>" width="100%" class="small-img"/>
                    </div>
                    <div class="small-img-col">
                        <img src="assets/imgs/<?php echo $row['product_image2']; ?>" width="100%" class="small-img"/>
                    </div>
                    <div class="small-img-col">
                        <img src="assets/imgs/<?php echo $row['product_image3']; ?>" width="100%" class="small-img"/>
                    </div>
                    <div class="small-img-col">
                        <img src="assets/imgs/<?php echo $row['product_image4']; ?>" width="100%" class="small-img"/>
                    </div>
                </div>
            </div>

           


            <div class="col-lg-6 col-md-12 col-12">
                <h6>Everything is sold the moment you think about it</h6>
                <h3 class="py-4"><?php echo $row['product_name']; ?></h3>
                <h2>$<?php echo $row['product_price']; ?></h2>

                <form method="POST" action="cart.php">
                  <input type="hidden" name="product_id" value="<?php echo $row['product_id']; ?>" />
                  <input type="hidden" name="product_image" value="<?php echo $row['product_image']; ?>"/>  
                  <input type="hidden" name="product_name" value="<?php echo $row['product_name']; ?>"/>
                  <input type="hidden" name="product_price" value="<?php echo $row['product_price']; ?>"/>
                  
                      <input type="number" name="product_quantity" value="1"/>
                      <button class="buy-btn" type="submit" name="add_to_cart">Add To Cart</button>
                </form>

                <div>  
                <h4 class="mt-5 mb-5">Product details</h4>
                
                <span>DATE : <?php echo $row['product_description']; ?>
                </span>
                </div>

                <div>
                <span><br>LOCATION : <?php echo $row['product_color']; ?>
                </span>
                <a href="https://www.google.co.kr/maps/search/<?php echo $row['product_color']; ?>/"><i class="fas fa-map-pin"></i></a>
                </div>
               
                <div>
                <span>
                <br>
                  Reservation information :
                
                  <br>
                  -Refunds are not available from one week prior to the day of the performance.
                  <br>
                  -The code will be sent to the phone number entered when booking.
                </span>
                </div>  
            </div>

        

            <?php } ?>

        </div>
      </section>





          <!--Realated products-->
          <section id="related-products" class="my-5 pb-5">
            <div class="container text-center mt-5 py-5">
              <h3>Related Products</h3>
              <hr class="mx-auto">
            </div>
            <div class="row mx-auto container-fluid">
              <div class="product text-center col-lg-3 col-md-4 col-sm-12">
                <img class="img-fluid mb-3" src="assets/imgs/PSY SUMMER SWAG 2022 - INCHEON1.jpeg"/>
                <div class="star">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                </div>
                <h5 class="p-name">PSY SUMMER SWAG 2022 - INCHEON</h5>
                <h4 class="p-price">$100</h4>
                <a href="single_product.php?product_id=1"><button class="buy-btn">Buy Now</button></a>
              </div>
              <div class="product text-center col-lg-3 col-md-4 col-sm-12">
                <img class="img-fluid mb-3" src="assets/imgs/WATERBOMB 2022 - THAILAND1.jpeg"/>
                <div class="star">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                </div>
                <h5 class="p-name">WATERBOMB - THAILAND</h5>
                <h4 class="p-price">$100</h4>
                <a href="single_product.php?product_id=2"><button class="buy-btn">Buy Now</button></a>
              </div>
              <div class="product text-center col-lg-3 col-md-4 col-sm-12">
                <img class="img-fluid mb-3" src="assets/imgs/BTS WORLDTOUR - NEWYORK1.jpeg"/>
                <div class="star">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                </div>
                <h5 class="p-name">BTS WORLDTOUR - NEWYORK</h5>
                <h4 class="p-price">$150</h4>
                <a href="single_product.php?product_id=3"><button class="buy-btn">Buy Now</button></a>
              </div>
              <div class="product text-center col-lg-3 col-md-4 col-sm-12">
                <img class="img-fluid mb-3" src="assets/imgs/BLACK PINK WORLDTOUR - LONDON1.jpeg"/>
                <div class="star">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                </div>
                <h5 class="p-name">BLACK PINK WORLDTOUR - LONDON</h5>
                <h4 class="p-price">$200</h4>
                <a href="single_product.php?product_id=4"><button class="buy-btn">Buy Now</button></a>
              </div>
            </div>
          </section>
    


    <script>

     var mainImg = document.getElementById("mainImg");
     var smallImg = document.getElementsByClassName("small-img"); 


     for(let i=0; i<4; i++){
                    smallImg[i].onclick = function(){
                    mainImg.src = smallImg[i].src;
                }

     }

  



    </script>





<?php include('layouts/footer.php'); ?>