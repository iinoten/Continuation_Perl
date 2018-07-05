use warnings;
use strict;

my %patterns = (
    Gilligan => qr/( ?:Willie )?Gilligan/,
    'Mary Ann' => qr/Mary Ann/,
    Ginger => qr/Ginger/,
    Professor => qr/(?:The )?Professor/,
    Skipper => qr/Skipper/,
    'A Howell' => qr/Mrs?.Howell/,
    #各ハッシュにラベルをつける
);

sub rightmost {
    my ($string, $patterns ) = @_;      #$stringに人の名前$patternsにハッシュリファレンスをおくる

    my( $rightmost_position, $rightmost_key ) = ( -1, undef );  #
    while( my( $key, $value ) = each %$patterns ) { #ハッシュの中身をとりだす  $keyにマッチした人の名前が入っている
        my $potistion = $string =~ m/$value/ ? $-[0]: -1;
        if( $potistion > $rightmost_position ) {
            $rightmost_position = $potistion;
            $rightmost_key = $key;
            #もっとも右の名前を探して$rightmost_keyにいれる
        }
    } 

    return $rightmost_key;
}

my $potistion = &rightmost(
    'There is Mrs.Howell, Ginger, and GIlligan',
    \%patterns
);

