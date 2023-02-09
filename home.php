<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

if(isset($_POST['add_to_cart'])){

   $product_name = $_POST['product_name'];
   $product_price = $_POST['product_price'];
   $product_image = $_POST['product_image'];
   $product_quantity = $_POST['product_quantity'];

   $check_cart_numbers = mysqli_query($conn, "SELECT * FROM `cart` WHERE name = '$product_name' AND user_id = '$user_id'") or die('query failed');

   if(mysqli_num_rows($check_cart_numbers) > 0){
      $message[] = 'already added to cart!';
   }else{
      mysqli_query($conn, "INSERT INTO `cart`(user_id, name, price, quantity, image) VALUES('$user_id', '$product_name', '$product_price', '$product_quantity', '$product_image')") or die('query failed');
      $message[] = 'product added to cart!';
   }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>home</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">
   <link rel="stylesheet" href="css/styles.css">

</head>
<body>
   

   <?php include 'header.php'; ?>
<section class="home" id="home" >

   <div class="content">
      <h3>Discover NFT now</h3>

      <p>A collection of highly-fashionable NFTs. Unique, and designed to benefit their holders.</p>
      <a href="#product" class="white-btn">Buy</a>
      
   </div>


</section>



<section class="about" id="about">

    
    <div class="container">
        
        <div class="title reveal-top">
            <h3>HOW MERCADO NFT WORK</h3>
        </div>

        <div class="boxes">

            <div class="line line-1 ">
                <div class="content box reveal-left">
                  <img src="images/icon/card.png" class="icon">
                  <h3>Step 1</h3>
                  <p>Connect Your Wallet</p>
                </div>
                <div class="content box reveal-top">
                  <img src="images/icon/paper.png" class="icon">
                  <h3>Step 2</h3>
                    <p>Select your NFT</p>
                </div>
                <div class="content box reveal-bottom"> 
                  <img src="images/icon/transac.png" class="icon">
                  <h3>Step 3</h3>
                    <p>Make your Transaction</p>
                </div>
                <div class="content box reveal-right">
                  <img src="images/icon/order.png" class="icon">
                  <h3>Step 4</h3>
                    <p>Receive your NFT</p>
                </div>
            </div>
       

            <div class="line line-3">

                <div class="content box reveal-bottom-reset">
                    <h3>EXPLORE NFT COLLECTION NOW</h3>
                    <p>You will discover so many NFT design just click the button below.</p>
                </div>
            </div>
        </div>
    </div>

    


</section>



<section class="products" id="product">

   <h1 class="title">latest products</h1>

   <div class="box-container ">

      <?php  
         $select_products = mysqli_query($conn, "SELECT * FROM `products` LIMIT 8") or die('query failed');
         if(mysqli_num_rows($select_products) > 0){
            while($fetch_products = mysqli_fetch_assoc($select_products)){
      ?>
     <form action="" method="post" class="box reveal-left">
      <img class="image" src="uploaded_img/<?php echo $fetch_products['image']; ?>" alt="">
      <div class="name"><?php echo $fetch_products['name']; ?></div>
      <div class="price"><?php echo $fetch_products['price']; ?> ETH</div>
      <input type="hidden" min="1" name="product_quantity" value="1" class="qty">
      <input type="hidden" name="product_name" value="<?php echo $fetch_products['name']; ?>">
      <input type="hidden" name="product_price" value="<?php echo $fetch_products['price']; ?>">
      <input type="hidden" name="product_image" value="<?php echo $fetch_products['image']; ?>">
      <input type="submit" value="Buy" name="add_to_cart" class="btn">
     </form>
      <?php
         }
      }else{
         echo '<p class="empty">no products added yet!</p>';
      }
      ?>
   </div>
   <div class="load-more" style="margin-top: 2rem; text-align:center">
      <a href="shop.php" class="option-btn">load more</a>
   </div>

   <h1 class="title">New Collection</h1>

   <div class="box-container ">

      <?php  
         $select_products = mysqli_query($conn, "SELECT * FROM `products` LIMIT 8") or die('query failed');
         if(mysqli_num_rows($select_products) > 0){
            while($fetch_products = mysqli_fetch_assoc($select_products)){
      ?>
     <form action="" method="post" class="box reveal-right">
      <img class="image" src="uploaded_img/<?php echo $fetch_products['image']; ?>" alt="">
      <div class="name"><?php echo $fetch_products['name']; ?></div>
      <div class="price"><?php echo $fetch_products['price']; ?> ETH</div>
      <input type="hidden" min="1" name="product_quantity" value="1" class="qty">
      <input type="hidden" name="product_name" value="<?php echo $fetch_products['name']; ?>">
      <input type="hidden" name="product_price" value="<?php echo $fetch_products['price']; ?>">
      <input type="hidden" name="product_image" value="<?php echo $fetch_products['image']; ?>">
      <input type="submit" value="Buy" name="add_to_cart" class="btn">
     </form>
      <?php
         }
      }else{
         echo '<p class="empty">no products added yet!</p>';
      }
      ?>
   </div>

   <div class="load-more" style="margin-top: 2rem; text-align:center">
      <a href="shop.php" class="option-btn">load more</a>
   </div>

</section>







<?php include 'footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>
<script src="https://unpkg.com/scrollreveal"></script>
<script src="js/main.js"></script>

</body>
</html>