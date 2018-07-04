my $regex = qr/Gilligan|Skipper/;

print $regex;   #"(?^:Gilligan|Skipper)"    qr//演算子のパターンが文字列化されたもの
