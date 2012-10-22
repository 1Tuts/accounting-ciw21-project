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
            	<div class="servic1"><div class="servic1-pic"></div></div>
                <div class="servic2"><div class="servic2-pic"></div></div>
            	<div class="servic3"><div class="servic3-pic"></div></div>
            </div>
            