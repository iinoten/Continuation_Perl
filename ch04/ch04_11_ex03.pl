my %gilligan = (
    name => 'Gilligan',
    hat => 'White',
    shirt => 'Red',
    position => 'First Mate',
);
my %skipper_info = (
    name => 'Skipper',
    hat => 'Black',
    shirt => 'Blue',
    position => 'Captain',
);
my %mr_howell = (
    name => 'Mr.Howell',
    hat => 'undef',
    shirt => 'White',
    position => 'passenger',
);

my @castaways = (\%gilligan_info,\%skipper_info,\%mr_howell);

foreach my $person (@castaways) {
    $person -> {location} = 'The Island';
}

foreach my $person (@castaways) {
    next unless $person -> {name} =~ /Howell/;
    $person->{location} = 'The Island Country Club';
}

foreach my $person (@castaways) {
    print "person->{name} at $person->{location}\n "
}