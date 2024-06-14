<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hongti Seafood</title>
    <link rel="stylesheet" href="/Code/style.css">
    <link rel="stylesheet" href="/Code/stylefooter.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="/Code/menustyle.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            box-sizing: border-box;
        }

        header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px 100px;
            z-index: 1000;
            background-color: #fff;
            transition: background-color 0.3s;
        }

        header .Logo {
            width: 120px;
            cursor: pointer;
            position: absolute;
            left: 40px;
        }

        header .navbar {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        header .navbar ul {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        header .navbar ul li {
            list-style: none;
        }

        header .navbar ul li a {
            margin: 0 15px;
            text-decoration: none;
            color: #000;
            letter-spacing: 2px;
            font-weight: 500;
            transition: 0.6s;
        }

        header .navbar ul li a:hover {
            color: #00aeff;
        }

        header.sticky {
            background-color: #f8f9fa;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        header.sticky .Logo,
        header.sticky .navbar ul li a {
            color: #000;
        }

        .wrapper {
            padding: 10px 10%;
            margin-top: 80px;
        }

        .card-area {
            padding: 30px 0;
        }

        .box-area {
            display: flex;
            justify-content: space-around;
            gap: 100px;
            margin-top: 20px;
            padding-bottom: 50px;
        }

        .box {
            border-radius: 10px;
            position: relative;
            overflow: hidden;
            box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.5);
            display: flex;
            align-items: center;
            justify-content: center;
            width: 500px;
            max-width: 400px;
            height: 500px;
            margin: auto;
        }

        .box img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s;
        }

        .box:hover img {
            transform: scale(1.1);
        }

        .overlay {
            height: 0;
            width: 100%;
            background: linear-gradient(transparent, #1c1c1c 58%);
            border-radius: 10px;
            position: absolute;
            left: 0;
            bottom: 0;
            overflow: hidden;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            padding: 0 20px;
            text-align: center;
            font-size: 14px;
            transition: height 0.5s;
            color: #fff;
        }

        .overlay h3 {
            font-weight: 500;
            margin-bottom: 5px;
            margin-top: 70%;
            font-family: 'Bebas Neue', sans-serif;
            font-size: 24px;
            letter-spacing: 2px;
        }

        .overlay a {
            margin-top: 10px;
            color: #262626;
            text-decoration: none;
            font-size: 14px;
            background: #fff;
            border-radius: 50px;
            text-align: center;
            padding: 5px 15px;
        }

        .box:hover .overlay {
            height: 100%;
        }

        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .product-card {
            background-color: white;
            border: 1px solid #e2e8f0;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.2s;
        }

        .product-card:hover {
            transform: translateY(-5px);
        }

        .product-card img {
            max-width: 100%;
            height: auto;
            display: block;
            margin: 0 auto;
        }

        .product-card .details {
            padding: 15px;
        }

        .product-card .details h5 {
            font-size: 1.25rem;
            font-weight: 600;
            margin-bottom: 10px;
        }

        .product-card .details .price {
            font-size: 1.5rem;
            font-weight: 700;
            color: #1a202c;
        }

        .product-image {
            width: 100px;
            height: auto;
    	}
		menu {
			display: flex;
			justify-content: space-between;
		}

		.card-area {
			width: 100%;
		}

        .text-left {
            font-size: 1.5rem;
            font-weight: 700;
        }

    </style>
</head>
<body>
    <header>
        <img src="/Code/LogoHongti.png" class="Logo" alt="Hongti Seafood Logo">
        <nav class="navbar">
            <ul>
                <li><a href="#" title="Back To Where It All Begins">Home</a></li>
                <li><a href="#aboutus" title="Want To Know More About Us?" class="scroll">About Us</a></li>
                <li><a href="#menu" title="Want To Know What To Order?" class="scroll">Menu</a></li>
                <li><a href="#contacts" title="Contact Us?" class="scroll">Contacts</a></li>
            </ul>
        </nav>
    </header>
    <section class="banner"></section>
    <script type="text/javascript">
        window.addEventListener("scroll", function() {
            var header = document.querySelector("header");
            header.classList.toggle("sticky", window.scrollY > 0);
        });

        document.querySelectorAll('.scroll').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();

                const targetId = this.getAttribute('href');
                const targetElement = document.querySelector(targetId);
                const offset = -80;

                window.scrollTo({
                    top: targetElement.offsetTop + offset,
                    behavior: 'smooth'
                });
            });
        });
    </script>
    <div class="content" id="home">
        <h1>Hongti Seafood</h1>
        <p>We serve the best zhi bao ji</p>
    </div>
    <div class="row">
        <div class="aboutus" id="aboutus">
            <img src="/Code/IMG_20240528_151702.jpg" alt="Hongti Seafood">
        </div>
        <div class="contentwrapper">
            <div class="contentaboutus">
                <h2>About Us</h2>
                <p>Nikmati sensasi laut yang segar di Hongti Seafood!
                Kami bangga menyajikan hidangan seafood terbaik dengan bahan-bahan berkualitas tinggi yang dipilih langsung dari perairan lokal.
                Setiap gigitan adalah perjalanan rasa yang memikat, menghadirkan kelezatan laut yang autentik dalam setiap sajian kami.</p>
            </div>
        </div>
    </div>
    <div id="menu" class="card-area">
        <div class="wrapper">
            <div class="box-area">
                <div class="box">
                    <img src="/Code/makananmam.jpg" alt="Foods">
                    <div class="overlay">
                        <h3>Menu</h3>
                        <p>Foods And Drinks</p>
                        <a href="#" id="moreDetailsLink">More Details</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Container for the first HTML code -->
    <div id="firstHtmlContainer" style="display: none;">
    <?php $__currentLoopData = $productCategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $productCategory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <div id="judulmenu">
        <div class="container justify-content-between">
            <p class="text-left"><?php echo e($productCategory->name); ?></p>
            <!-- The first HTML code -->
            <div class="product-grid">
                <?php $__currentLoopData = $productCategory->products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php if(count($productCategory->products) > 0): ?>
                <div class="product-card">
                    <a href="#">
                        <img src="<?php echo e($product->product_images->first()?->image_url?? 'default_image.jpg'); ?>" alt="product image" />
                    </a>
                    <div class="details">
                            <h5><?php echo e($product->name); ?></h5>
                        <div class="description">
                            <?php echo e($product->description); ?>

                        </div>
                        <div class="price">
                            Rp <?php echo e($product->price); ?>

                        </div>
                    </div>
                </div>
                <?php endif; ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
    </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div>


    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var moreDetailsLink = document.getElementById('moreDetailsLink');
            moreDetailsLink.addEventListener('click', function (e) {
                e.preventDefault();
                var firstHtmlContainer = document.getElementById('firstHtmlContainer');
                firstHtmlContainer.style.display = (firstHtmlContainer.style.display === 'none') ? 'block' : 'none';
            });
        });
    </script>

    <!-- Footer -->
    <footer id="contacts">
        <div class="container">
            <div class="sec aboutus">
                <h2>About Us</h2>
                <p>Nikmati sensasi laut yang segar di Hongti Seafood! Kami bangga menyajikan hidangan seafood terbaik dengan bahan-bahan berkualitas tinggi yang dipilih langsung dari perairan lokal. We serve the best zhi bao ji.</p>
            </div>
            <div class="sec contact">
                <h2>Contact Us</h2>
                <ul class="desc">
                    <li>
                        <span><i class="fa-solid fa-location-dot"></i></span>
                        <span>Komplek Trikarsa Equalita, Blk. E No.01<br>Sadai, Kec. Bengkong<br>Kota Batam<br></span>
                    </li>
                    <li>
                        <span><i class="fa-brands fa-whatsapp"></i></span>
                        <a href="https://wa.link/wsyx1d">0822-8881-5522</a>
                    </li>
                </ul>
                <h2>Follow Us</h2>
                <ul class="sosmed">
                    <li><a href="https://www.tiktok.com/@hongtigoh?_t=8mmHF2rEYdj&_r=1"><i class="fa-brands fa-tiktok"></i></a></li>
                    <li><a href="https://www.facebook.com/hongti.seafood.7?mibextid=ZbWKwL"><i class="fa-brands fa-facebook"></i></a></li>
                    <li><a href="https://www.instagram.com/hong.ti_seafood?igsh=MWx5MTMxdW41ZWhhOQ=="><i class="fa-brands fa-instagram"></i></a></li>
                    <li><a href="https://gofood.link/u/w8Yxe"><i class="fa-solid fa-bag-shopping"></i></a></li>
                </ul>
            </div>
            <div class="sec location">
                <h2>Location</h2>
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15956.136659504253!2d104.0440365!3d1.1359763!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31d989b55ea6b809%3A0xd4b872a1010e6788!2sHongti%20Seafood!5e0!3m2!1sen!2sid!4v1717060693386!5m2!1sen!2sid" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
        <p>&copy; 2024 Hongti Seafood. All rights reserved.</p>
    </footer>
</body>
</html><?php /**PATH C:\xampp\htdocs\umkm-hongtiseafood\resources\views/welcome.blade.php ENDPATH**/ ?>