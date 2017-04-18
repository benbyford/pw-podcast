<?php namespace ProcessWire;
if($page->mp3){

    $page->of(false);
    $page->counter += 1;
    $page->save();
    $page->of(true);

    $options = array(
        // boolean: halt program execution after file send
        'exit' => true,
        // boolean|null: whether file should force download (null=let content-type header decide)
        'forceDownload' => false,
        // string: filename you want the download to show on the user's computer, or blank to use existing.
        'downloadFilename' => '',
    );

    $file_path = $page->mp3->filename;

    // find request headers for partial content
    if ( isset($_SERVER['HTTP_RANGE']) ) {
        // if the HTTP_RANGE header is set we're dealing with partial content

        $partialContent = true;

    } else {
        $partialContent = false;
    }

    if ( $partialContent ) {

        $fp = @fopen( $file_path, 'rb' );
        $size   = filesize( $file_path );
        $length = $size;
        $start  = 0;
        $end    = $size - 1;
        header( "Accept-Ranges: 0-$length" );
        $c_start = $start;
        $c_end   = $end;
        // Extract the range string
        list(, $range) = explode( '=', $_SERVER['HTTP_RANGE'], 2 );
        // If the range starts with an '-' we start from the beginning
        // If not, we forward the file pointer
        if ( $range{0} == '-' )
        {
        	// The n-number of the last bytes is requested
        	$c_start = $size - substr($range, 1);
        }
        else
        {
        	$range  = explode( '-', $range );
        	$c_start = $range[0];
        	$c_end   = ( ( isset( $range[1] ) && is_numeric( $range[1] ) ) ? $range[1] : $size );
        };
        // End bytes can not be larger than $end.
        $c_end = ($c_end > $end) ? $end : $c_end;
        $start  = $c_start;
        $end    = $c_end;
        $length = $end - $start + 1;
        fseek( $fp, $start );
        header( 'HTTP/1.1 206 Partial Content' );
        header( "Content-Range: bytes $start-$end/$size" );
        header( "Content-Length: $length" );
        // Start buffered download
        $buffer = 1024 * 8;
        while ( ! feof( $fp ) && ( $p = ftell($fp) ) <= $end )
        {
        	if ( $p + $buffer > $end )
        	{
        		$buffer = $end - $p + 1;
        	};

        	set_time_limit( 0 );

        	echo fread( $fp, $buffer );

        	flush();
        };
        fclose( $fp );

    }else{
        // send file
        // print($data);
        wireSendFile($page->mp3->filename, $options);
    }
}
