<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

include 'components/wishlist_cart.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Home</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">
  

</head>
<body>
   
<?php include 'components/user_header.php'; ?>

<div class="home-bg">

<section class="home">

   <div class="swiper home-slider">
   
   <div class="swiper-wrapper">

      <div class="swiper-slide slide">
         <div class="image">
            
            <img src="images/Home-Slider2.jpg" alt="">
         </div>
         
      </div>

      <div class="swiper-slide slide">
         <div class="image">
            <img src="images/10011.jpg" alt="">
         </div>
     
      </div>

     

      <div class="swiper-slide slide">
         <div class="image">
            <img src="images/baner222.jpg" alt="">
         </div>
        
      </div>

      

   </div>

      <div class="swiper-pagination"></div>

   </div>

   </section>

</div>



<section class="category_responsive">


<div class="gallery_responsive_bg">
<div class="gallery_responsive">


<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="category.php?category=SMART_LED_TV">
    <img width="1280" height="150" src="images/image/ba157.jpg" alt="Mountains">
    </a>
   
  </div>
</div>
</div>
</section>



<section class="category_responsive">

<h1 class="heading">Hot Deals</h1>
<div class="gallery_responsive">


<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="shop.php">
      <img src="images/image/Fridge.jpg" alt="Mountains">
    </a>
   
  </div>
</div>


<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="shop.php">
      <img src="images/image/Grinder.jpg" alt="Mountains">
    </a>
    
  </div>
</div> 

</div>
</section>


<section class="category">

   <h1 class="heading">shop by category</h1>

   <div class="swiper category-slider">

   <div class="swiper-wrapper">

   <a href="category.php?category=Refrigerator" class="swiper-slide slide">
      <img src="images/image/ref1.jpg" alt="">
      <h3>Refrigerator</h3>
   </a>

   <a href="category.php?category=SMART_LED_TV" class="swiper-slide slide">
      <img src="images/image/tv5.jpg" alt="">
      <h3>Led Tv</h3>
   </a>

   <a href="category.php?category=Laptop" class="swiper-slide slide">
      <img src="images/image/lap21.png" alt="">
      <h3>Laptop</h3>
   </a>

   <a href="category.php?category=Camera" class="swiper-slide slide">
      <img src="images/image/c.jpg" alt="">
      <h3>Camera</h3>
   </a>

   <a href="category.php?category=Watch" class="swiper-slide slide">
      <img src="images/image/w.jpg" alt="">
      <h3>Watch</h3>
   </a>

   </div>

   <div class="swiper-pagination"></div>

   </div>

</section>







<section class="home-products">

   <h1 class="heading">latest products</h1>

   <div class="swiper products-slider">

   <div class="swiper-wrapper">

   <?php
      $select_products = $conn->prepare("SELECT * FROM `products` LIMIT 6"); 
     $select_products->execute();
     if($select_products->rowCount() > 0){
      while($fetch_product = $select_products->fetch(PDO::FETCH_ASSOC)){
   ?>

   <form action="" method="post" class="swiper-slide slide">
      <input type="hidden" name="pid" value="<?= $fetch_product['id']; ?>">
      <input type="hidden" name="name" value="<?= $fetch_product['name']; ?>">
      <input type="hidden" name="price" value="<?= $fetch_product['price']; ?>">
      <input type="hidden" name="image" value="<?= $fetch_product['image_01']; ?>">
      <button class="fas fa-heart" type="submit" name="add_to_wishlist"></button>
      <a href="quick_view.php?pid=<?= $fetch_product['id']; ?>" class="fas fa-eye"></a>
      <img src="uploaded_img/<?= $fetch_product['image_01']; ?>" alt="">
      <div class="name"><?= $fetch_product['name']; ?></div>
      <div class="flex">
         <div class="price"><span>৳</span><?= $fetch_product['price']; ?><span>/-</span></div>
         <input type="number" name="qty" class="qty" min="1" max="99" onkeypress="if(this.value.length == 2) return false;" value="1">
      </div>
      <input type="submit" value="add to cart" class="btn" name="add_to_cart">
   </form>
   <?php
      }
   }else{
      echo '<p class="empty">no products added yet!</p>';
   }
   ?>

   </div>

   <div class="swiper-pagination"></div>

   </div>

</section>
 

  <!--start gallery-->
  <section class="category_responsive">

<h1 class="heading">Popular Product</h1>
<div class="gallery_responsive_bg">
<div class="gallery_responsive">


<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="category.php?category=SMART_LED_TV">
    <img width="640" height="350" src="images/image/Categories4.png" alt="Mountains">
    </a>
   
  </div>
</div>


<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="category.php?category=Laptop">
    <img width="640" height="350" src="images/image/Categories3.png" alt="Mountains">
    </a>
    
  </div>
</div> 

</div>
</section>
<section class="category_responsive">
<div class="gallery_responsive_bg">
<div class="gallery_responsive">


<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="shop.php">
    <img width="640" height="350" src="images/image/Categories2.png" alt="Mountains">
    </a>
    
  </div>
</div>


<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="shop.php">
    <img width="640" height="350" src="images/image/Categories5.png" alt="Mountains">
    </a>
   </div>
</div> 

</div>
</section>
 <!--start Brands-->
    
 <section class="category">
 <div class="brandbg">
<h1 class="heading">Brands</h1>

<div class="swiper category-slider">

<div class="swiper-wrapper">

<a class="swiper-slide slide">
   <img src="images/Brands/canon.png" alt="">
   </a>

<a class="swiper-slide slide">
   <img src="images/Brands/samsung.png" alt="">
 </a>

<a  class="swiper-slide slide">
   <img src="images/Brands/sony.png" alt="">
  
</a>
<a  class="swiper-slide slide">
   <img src="images/Brands/singer.jpeg" alt="">
  
</a>
<a  class="swiper-slide slide">
   <img src="images/Brands/m.jpg" alt="">
  
</a>

</div>

<div class="swiper-pagination"></div>

</div>
</div>
</section>
 <!--end Brands-->

    
    <section class="reviews">
   
   <h1 class="heading">client's reviews</h1>

   <div class="swiper reviews-slider">

   <div class="swiper-wrapper">

      <div class="swiper-slide slide">
         <img src="images/pic-1.png" alt="">
         <p>I must say the theme is awesome. If somebody bought it just have in mind to correctly configure it and to contact support if facing a problem; support is fast and realiable. Thanks!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>john deo</h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-2.png" alt="">
         <p>I must say the theme is awesome. If somebody bought it just have in mind to correctly configure it and to contact support if facing a problem; support is fast and realiable. Thanks!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Harold Nguyen</h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-3.png" alt="">
         <p>I must say the theme is awesome. If somebody bought it just have in mind to correctly configure it and to contact support if facing a problem; support is fast and realiable. Thanks!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Savannah </h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-4.png" alt="">
         <p>I must say the theme is awesome. If somebody bought it just have in mind to correctly configure it and to contact support if facing a problem; support is fast and realiable. Thanks!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>john deo</h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-5.png" alt="">
         <p>I must say the theme is awesome. If somebody bought it just have in mind to correctly configure it and to contact support if facing a problem; support is fast and realiable. Thanks!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>john deo</h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-6.png" alt="">
         <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia tempore distinctio hic, iusto adipisci a rerum nemo perspiciatis fugiat sapiente.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>john deo</h3>
      </div>

   </div>

   <div class="swiper-pagination"></div>

   </div>

</section>

    








<?php include 'components/footer.php'; ?>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<script src="js/script.js"></script>

<script>

var swiper = new Swiper(".home-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
    },
});

 var swiper = new Swiper(".category-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      0: {
         slidesPerView: 2,
       },
      650: {
        slidesPerView: 3,
      },
      768: {
        slidesPerView: 4,
      },
      1024: {
        slidesPerView: 5,
      },
   },
});

var swiper = new Swiper(".products-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      550: {
        slidesPerView: 2,
      },
      768: {
        slidesPerView: 2,
      },
      1024: {
        slidesPerView: 3,
      },
   },
});


var swiper = new Swiper(".reviews-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      0: {
        slidesPerView:1,
      },
      768: {
        slidesPerView: 2,
      },
      991: {
        slidesPerView: 3,
      },
   },
});
</script>

</body>
</html>