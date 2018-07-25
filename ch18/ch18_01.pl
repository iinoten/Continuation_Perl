sub feed_a_cow_named {
    my $name = shift;
    my $cow = Cow->named('Bessie');
    $cow->eat('grass');
    print "Returned from subroutine.\n";
}
print "Start of program.\n";
my $outer_cow = Cow->named('Bassie');
print "Now have a cow named ",('Gwen');
print "Returned from subroutine";