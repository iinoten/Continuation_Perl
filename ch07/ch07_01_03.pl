sub skipper_greets {
    my $person = shift;
    print "Skipper: Hey there, $person!\n";
}

sub gilligan_greets {
    my $person = shift;
    if ($person == "Skipper") {
        print "Gilligan: Sir,yes,sir, $person!\n";
    } else {
        print "Gilligan: Hi, $person!\n";
    }
}

sub professer_greets {
    my $person = shift;
    print "professor:By my calculations, you must be $person!\n";
}

my %greets = (
    Gilligan => \&gilligan_greets,  #シンボリックリンクのような...?
    Skipper => \&skipper_greets,
    Professor => \&professer_greets,
);

my @room;
for my $person (qw(Gilligan Skipper Professor)){
    print "\n";
    print "$person walk into the room\n";
    for my $room_person (@room) {
        $greets{$person}->($room_person);
        $greets{$room_person}->($person);
    }
    push @room, $person;
}