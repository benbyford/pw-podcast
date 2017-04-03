<?
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

    wireSendFile($page->mp3->filename, $options);
}
