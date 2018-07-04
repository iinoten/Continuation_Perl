my @lines = split /$/. $multiline_string;
foreach my $line ( @lines ) {
    #$multiline_string内の文字列を行ごとに分割する
}

##

open my $string_fh, '<', \ $multiline_string;
while(<$string_fh>){
    #行入力演算子をつかってうえのこととおなじことができる（脆弱性が減る？）
}