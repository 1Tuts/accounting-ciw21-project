  <div class="container">
        	<div class="text">
				<div class="left-shadow"></div>
				<div class="right-shadow"></div>
                
              
            <?php
               if( have_posts() ) {
			   the_post();
	   			$meta = get_post_custom();

			?>
				<article class='post'>
					<h2><?php the_title(); ?></h2>
					
					<?php the_post_thumbnail('thumbnail');?>
					
					<p><?php the_content(); ?></p>
					
					<?php
						if( count($meta['price'])>0 ){
							$price = $meta['price'][0];
							echo "<p>Price : <b>$price$</b></p>";
						}
		
						if(count($meta['img'])>0){
							echo "<div class='post_images'>";
							foreach ($meta['img'] as $img_id) {
						
							$img_small = wp_get_attachment_image($img_id,'thumbnail'); // default: thumbnail
							$img_larg = wp_get_attachment_image_src($img_id,'large'); // array
							echo "<a href='$img_larg[0]'>$img_small</a>"; // $img_larg[0] -> image url
						}
						echo "</div>";
					}
					?>
              
            </article>
            <?php
                    
                }
            ?>

                <div class="divider-2"></div>
            </div>
           <div class="services">
                <div class="servic-container">
            	   <div class="servic1"><div class="servic1-pic"></div>
                   کلاه‌قرمزی و بچه‌ننه» با فروش دو میلیارد و ۵۰۰ میلیون تومانی‌ خود در طول دو هفته‌ی گذشته، همچنان به ثبت رکوردهای جدید ادامه می‌دهد. علی سرتیپی ـ مدیر‌عامل موسسه فیلمیران و پخش‌کننده فیلم‌های عید فطر ـ در گفت‌وگو با ایسنا، درباره فروش فیلم‌های روی پرده سینماها گفت: «کلاه‌قرمزی و بچه‌ننه» شب گذشته ـ ۱۰ شهریور
                   </div>
                
            	   <div class="servic3"><div class="servic3-pic"></div>
                   به گزارش خبرگزاری فارس از گرگان ‎م پورمحمدی در جمع نمازگزاران مسجد جامع شهرستان علی‎آبادکتول اظهار داشت: انقلاب اسلامی ایران به برکت یک نگاه روشن و شفاف به دین و ارزش‎های دینی به دستاوردهای عظیمی دست پیدا کرده است. وی تصریح کرد: دشمن برای اینکه بخواهد جوان ما را به اصطلاح امروزی کند
                   </div>

                    <div class="servic2"><div class="servic2-pic"></div>
                    رئیس سازمان بازرسی کل کشور با تاکید بر اینکه حرف انقلاب اسلامی این است که از طریقبا آنچه عقل و منطق می‎پذیرد فاصله دارد، نیازهای واقعی انسان را پاسخ نمی‎دهد، به عواطف انسانی اهمیتی ندارد و یکسری سخت‎گیری و تعصب در دین وجود دارد که جوان نمی‎تواند آن را جذاب بداند و با این ترفند دشمنان دین را در ذهن جوان محدود تعریف می‎کردند.
                    </div>
                </div>    
            </div>
            