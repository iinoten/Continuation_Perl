sub speak {
    my $class = shift;
    print "a $class goes neight!\n";
}

sub sound {
    print "neigh";
}

sub named {
    my $self = shift;
    $$self;
}
1;