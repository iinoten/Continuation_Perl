my @all_with_names;

sub initialize_provisions_list {
    my @skipper = qw{blue_shirt hat jacket preserver sanscreec};
    my @skipper_with_name = ('The Skipper'=>\@skipper);

    my @professor = qw(sunscreen water_bottle slide_rule batteries radio);
    my @professor_with_name = ('The Professor' => \@professor);

    my @gilligan =qw {red_shirt hat lacky_socks water_bottles};
    my @gilligan_eith_name = ( 'Gilligan' => \@gilligan);

    @all_with_names = (
        \@skipper_with_name,
        \@professor_with_name,
        \@gilligan_eith_name,
    );
}

initialize_provisions_list();