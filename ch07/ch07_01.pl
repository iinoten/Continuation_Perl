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

my $ref_to_greeter  = \&skipper_greets;

&{$ref_to_greeter}('Gilligan');     #"Skipper: Hey there, Gilligan!"

for my $greet (\&skipper_greets, \&gilligan_greets) {
    $greet -> ('Professer');
}

#"Skipper: Hey there, Gilligan!"
#"Skipper: Hey there, Professer!"
#"Gilligan: Sir,yes,sir, Professer!"