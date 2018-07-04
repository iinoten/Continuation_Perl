print 'Enter a pattern: ';
chomp ( my $pattern = <STDIN> );

print "Enter some lines:\n";
while( <STDIN> ) {
    if (eval { m/$pattern/ } ) {
        print "Match:$_";
    }
    if( $@ ) {
        die "There was aregex problem: $@\n";
    }
}