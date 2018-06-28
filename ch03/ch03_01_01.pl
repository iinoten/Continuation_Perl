#grep演算子

my @numbers = qw(2 34 32 5 65 7 8 1);
my @bigger_than_10 = grep $_ > 10, @numbers;    #一つ目にテスト式、二つ目にテストする値のリストを書く
print "@bigger_than_10  \n";    #"34 32 65"