my $regex = qr/Gilligan/;   
$string =~ m/$regex/;   #マッチにも
$string =~ s/$regex/Skipper/;   #置換演算子にも正規表現リファレンスを使うことができる

