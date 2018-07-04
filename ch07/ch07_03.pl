use File::Find;
sub what_to_do {
    print "$File::Find::name found\n";
}
my @starting_directries = qw(.);

find(\&What_to_do,@starting_directries);