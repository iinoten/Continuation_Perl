package Mouse;
use parent qw(Animal);
sub sound { 'squeak' }

sub speak {
    my $class = shift;
    $class->SUPER::speak;
    #SUPER::speakは複数のspeakを@ISAの中から探して最初に見つけたものを取って来る
    print "[but you can barely hear it!]\n";
}