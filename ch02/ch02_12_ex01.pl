use strict;

use Cwd 'getcwd';

# カレントディレクトリ名を取得する。

print "1: カレントディレクトリ名を取得する。\n";
my $cur_dir = getcwd;
print $cur_dir, "\n";
my @cf = glob "*";
print "@cf\n";
