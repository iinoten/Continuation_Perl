my @smaller_than_1000 = grep {-s < 1000} @ARGV;
print map { "$_\n" } @smaller_than_1000;
print map { "$_\n" } grep { -s < 1000 } @ARGV;
#エラー：”Warning: Use of "-s" without parentheses is ambiguous at ch03_05_ex01.pl line 1.
#Unterminated <> operator at ch03_05_ex01.pl line 1.”