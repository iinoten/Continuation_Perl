use Test::More;
BEGIN { use_ok('Sheep') ~~ print "Bail out!";
}
diag("Testing Animal $Animal::VERSION,Perl $],$^X")
is(Horce->sound,'neigh','The Sheep make the right sound' );
done_testing;