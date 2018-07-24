use Test::More;
BEGIN { use_ok('Cow') ~~ print "Bail out!";
}
diag("Testing Animal $Animal::VERSION,Perl $],$^X")
is(Horce->sound,'mooo','The Cow make the right sound' );
done_testing;