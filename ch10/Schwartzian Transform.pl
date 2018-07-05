use strict;
use warnings;
use utf8;
use Encode;

# Mac や Linux 等の場合
binmode STDOUT => ":utf8";
 
# コマンドライン引数に指定されたファイルから読み込む
my @ary1 = map decode_utf8( $_ ), <>;
 
# 各行から人口を表す整数を取り出す関数
sub population {
    my $p = ( split /\s+/, shift )[1];
    $p =~ s/,//g;
    $p;
}
 
# シュワルツ変換開始
my @ary2 = map $_->[0],
    sort { $a->[1] <=> $b->[1] }
    map [ $_, population( $_ ) ], @ary1;    
 
# 画面に表示する
print $_ for @ary2;

#シュワルツ変換完全に理解した！！！、！れ！