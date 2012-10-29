    <div class="top-scroll"><a href="#blockid" onclick="smoothScroll('blockid'); return false"><img src="<?php bloginfo('template_url'); ?>/images/top2.png" class="scroll"></a></div>   	
   
        <div class="footer">
            <div class="footer-container">
       		    <div class="three-columns-first">
                    <div class="footer-box">
                        <h4>ارتباط با ما</h4>
                        <div class="contact-us">
                            <form id="contact-form" action="sendmail.php" method="post" target='ifrm'> 
                                 <input class="text-icon" type="text" name="name" id="name" placeholder="Name" />
                                 <label>  : نام</label></br></br></br>
                                 <input class="text-icon" type="text" name="mail" id="mail" placeholder="Email" />
                                 <label>  : ایمیل</label></br></br></br>
                                 <input class="btn" type="submit" name="submit" value="Send" />
                                 <input class="btn" type="reset" name="reset" id="reset" value="Reset" />
                            </form>
                            <iframe id='ifrm' name='ifrm' src="" frameborder="0" scrolling="no"></iframe>
                        </div>
                    </div>   
                </div>
                <div class="three-columns-last">
                    <div class="footer-box">
                        <h4>برچسب ها</h4>
                    </div>
                </div>
                <div class="three-columns-second">
                    <div class="footer-box">
                        <h4>پست های جدید</h4>
                    </div>
                </div>
            </div> 
            <div class="clear"></div> 
            <div class="footer-bottom-border"></div>
            <div class="footer-logo">
                <div class='bottom-logo'><a href="#"><img src='./images/btm-logo.jpg' alt='logo'></a></div>
            </div>
            <div class="clear"></div> 
            <div class="footer-nav">
                <div class="footer-menu">
                    <ul>
                        <li><a href="#">خانه</a></li>
                        <li><a href="#">گالری</a></li>
                        <li><a href="#">محصولات</a></li>
                        <li><a href="#">درباره ما</a></li>
                    </ul>
                </div>
            </div>        
            <p class="copyright-text">Copyright© 2012 PWvintage. All right reserved.</p>
    </div>
</body>
</html>
