#!perl -T


BEGIN {
    my @classes = qw(Animal.pm Cow.pm  Horse.pm Mouse.pm Sheep.pm);
    my $num = @classes;
    use Test::More tests => $num;

    foreach my $class ( @classes ) {
      use_ok( $class ) or print "Bail out! $class did not load!\n"
    }
}
