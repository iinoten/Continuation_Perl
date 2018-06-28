my $ref;

{
    my  @skipper = qw {blue_shirt hat jacket preserver suncreen};
    $ref = \@skipper;   #配列skipperをrefに入れる

    print "$ref->[2]\n";
}

print "$ref->[2]\n";