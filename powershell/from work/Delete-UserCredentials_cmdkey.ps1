$keys = cmdkey /list

foreach ($key in $keys){

    if( $key -match 'Target:' ){
        $toDelete = ( $key -Replace "Target:").trim()
        cmdkey /del $toDelete
    }


}