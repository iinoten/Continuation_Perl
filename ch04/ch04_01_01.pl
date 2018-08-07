my @required = qw{preserver sunsceen water_bottle jacket};
my %skipper = map {$_, 1} 
    qw{preserver sunsceen water_bottle jacket}; #skipperにハッシュキーとして持ち物を持たせている

foreach my $item (@required){   #必要な持ち物の回数チェックする、ハッシュを$itemに入れる
    unless ( %skipper{$item} ) {    #そのハッシュが存在するかしないかみる
        print "Skipper is missing $item.\n";
    }
}