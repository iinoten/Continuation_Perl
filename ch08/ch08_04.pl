use v5.10;

while ( <> ) {  #whileループ内だけでファイルハンドルをオープンする
    state $fhs;

    my ( $source, $destination, $bytes ) = split;

    unless( $fhs->{$source} ) {
        open my $fh, '>>', $source or die '...';
        $fhs -> {$source} = $fh;
    }
    say {$fhs->{$source}}"$destination $bytes";
}