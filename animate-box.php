<div class="text-animate-box">
                <p>مراجع</p></br>
                <p>رشته حسابداری</p>
                <div class="divider-3"></div>
</div>
<div class="animate-box">
                
             <div class="slideshowbtm">
                 <div class="trainbtm">
                    <?php
                        $images_path ='./images2';
                        $template_dir_on_disk = get_template_directory();
                        $template_web_url = get_bloginfo('template_url');

                        $images = scandir( $template_dir_on_disk . $images_path);
                        $slidesLen = 0;
                        foreach ($images as $img) {
                            $img_type = strtolower( end( explode( '.' , $img ) ) );
                            if($img_type == 'jpg' || $img_type == 'png'){
                                echo "<div style=\"background-image : url('$template_web_url/$images_path/$img');\"></div>";
                                $slidesLen++;
                            }
                        }
                    ?>    
                     
                 </div>
             </div>
</div>
</div>
