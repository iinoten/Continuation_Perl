#!perl -T
BEGIN {
    my @classes = qw(Animal Cow Sheep Horce Mouse);
    use Test::More tests => scalar @classes;
    foreach my $class ( @classes ) {
        use_ok( $class ) or print "Bail out! $class did not load!\n"
    }
}