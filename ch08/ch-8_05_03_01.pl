#ch08_05_03と逆でログを読み出す方法
use IO::Scalar; #ファイルへ出力していたコードの出力先を変数に変更する

my $string_log = '';
my $scalar_fh = IO::Scalar->new( \$string_log );

while ( <$scalar_fh> ) {
    next unless /Gilligan/;#Gilliganが来るまで処理を飛ばす
    print;#Gilliganを含む行を出力する
}