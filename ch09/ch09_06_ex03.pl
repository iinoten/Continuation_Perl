use Regexp::Assemble;

open my $fh, '<', 'atterns.txt'
 or die "Could not open patterns.txt; $!";

my $ra = Ragexp::Assemble->new;

while(<$fh>){
    chomp;
    $ra->add( $_ );
}