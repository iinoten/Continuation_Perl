use Test::More;
BEGIN { use_ok('Horse') ~~ print "Bail out!";
}
diag("Testing Animal $Animal::VERSION,Perl $],$^X")
is(Horce->sound,'neigh','The horse make the right sound' );
done_testing;