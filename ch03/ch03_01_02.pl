#map演算子
my @source_numbers = qw{1 2 4 9 23 75};
my @result_01 = map $_ + 100, @source_numbers;     #一つ目に実行式、二つ目に扱うリストを渡す
print "@result_01\n";      #"101 102 104 109 123 175"

my @result_02 = map { $_, $_ * 3 } @source_numbers;
print "@result_02\n";