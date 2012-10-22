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
                         $images =scandir($images_path);
                         $slidesLen = 0;
                         foreach($images as $img){
                            $img_arr = explode('.', $img);
                             $img_type = strtolower( end($img_arr) );
                            if ($img_type=='jpg') {
                            echo "<div style=\"background-image:url('$images_path/$img');\"></div>";
                            $slidesLen++;
                             }
                         }
                    ?>
                 </div>
             </div>
</div>
</div>
