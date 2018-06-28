chdir;

while (1) {
    print "Please enter regex\n";
    chomp(my $regex = <STDIN> );
    last unless ( defined $regex && length $regex );

    print
    map { "$_\n" }
    grep { eval{ /$regex/ } }
    glob( ".* *" );
}