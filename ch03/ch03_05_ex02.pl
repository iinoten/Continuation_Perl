chdir; #ホームディレクトリに移動

while (1) {
    print "Please enter regex\n";
    chomp(my $regex = <STDIN> );
    last unless ( defined $regex && length $regex );    #入力された中身が存在したらlast

    print
    map { "$_\n" }
    grep { eval{ /$regex/ } }
    glob( ".* *" );
}