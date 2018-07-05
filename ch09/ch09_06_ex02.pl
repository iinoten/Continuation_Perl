open my $fh, '<', 'patterns.txt'
 or die "Could not open patterns.txt:$!";

while ( <$fh> ) {
    chomp;
    my $pattern = eval { qr/$_/ }
     or do { warn "Invaildpattern: $@"; next};
    push @patterns, $pattern;
}

LINE:while( <> ) {
    foreach my $pattern ( @patterns ) {
        if ( /$pattern/ ) {
            print "Match at line $. | $_" if /$pattern/;
            next LINE;
        }
    }
}

