    <!-- footer -->
    <footer id='footer'>
        <div class="container">
            <p>
                <a href='http://processwire.com'><?php echo __('Powered by ProcessWire CMS'); ?></a>
            </p>
        </div>
    </footer>

    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="<?php echo $config->urls->templates?>scripts/vendor/jquery-2.1.3.min.js">\x3C/script>')</script>

    <script src="<?php echo AIOM::JS(array('scripts/vendor/html5shiv.js','scripts/main.js')); ?>"></script>

    <script>(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga'); ga('create', 'UA-55072292-9', 'auto'); ga('send', 'pageview');</script>
</body>
</html>
