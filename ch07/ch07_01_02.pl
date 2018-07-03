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

for my $person (qw(Skipper Gilligan)) {     #GilliganとSkipperを指定
    $greets{$person}->('Professor');    #professorにこんにちは
}