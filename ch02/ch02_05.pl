use File::Spec;     #オブジェクト指向インターフェース

my $filespec = File::Spec->catfile( $homedir{gilligan},
    'web_docs', 'photos', 'USS_Minnow.gif' );   #システムのパスを繋げて文字列一つを返す

print "$filespec\n"; #"/web_docs/photos/USS_Minnow.gif"