sub check_required_item {
    my $who = shift;    #引数の受け取り方。ここでは第一引数を入れている
    my %whos_items = map { $_, 1 } @_;

    my @required = qw(preserver sunscreen water_bottle jacket);

    for my $item (@required) {
        unless ($whos_items{$item}) {
            print "misssing $item.\n";
        }
    }
}
#持ち物を確認するサブルーチン