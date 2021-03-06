my @gilligan = qw( red_shirt hat lucky_socks water_bottle );
my @professor = qw( sunscreen water_bottle slide_rule batteries radio );
my @skipper = qw( blue_shirt hat jacket sunscreen );
#各乗員の名前と持ち物のハッシュを作る
my %all = (
    "Gilligan" => \@gilligan,
    "Skipper" => \@skipper,
    "Professor" => \@professor,
);
#まとめる

check_items_for_all(\%all);
#サブルーチンcheck_items_for_allに入れる

sub check_items_for_all {
    my $all = shift;
    for my $person (sort keys %$all) {
        check_required_items($person, $all->{$person});
    }
}
#もらったハッシュの中身を別々に分けてサブルーチンcheck_required_itemsにかける

sub check_required_items {
    my $who = shift;
    my $items =shift;
    my @required = qw{preserver sunscreen water_bottle}; #持たなきゃいけないもの
    my @missing = ( );

    for my $item (@required) {
        unless (grep $item eq $_, @$items) {
            print "who is missing $item.\n";
            push @missing,$item;
        }
    }

    if (@missing) {
        print "Adding @missing to @$items for.\n";
        push $items,@missing;
    }
}