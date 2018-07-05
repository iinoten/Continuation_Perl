use v5.10.1;
use Ragexp::Assemble;
my $ra = Regexp::Assemble->new;
for ( 'Mr.Howell', 'Mrs.Howell', 'Mary Ann') {
    $ra ->add ("\Q$_");
}

say $ra->re;