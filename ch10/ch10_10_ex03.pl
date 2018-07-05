my @array = qw{japan korea china america indo afgan};

@array= map $_->[0],
             sort { $a->[1] cmp $b->[1] }
            map {
        my $string = $_;
        $_ =~ tr/A-Z/a-z/;
        $_ =~ tr/a-z//cd;
        [ $_, $string ];
    }@array;



print "@array\n";