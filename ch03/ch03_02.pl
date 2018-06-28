my $average eval {$total / $count};
#$totalが０だったりしてエラーが出た場合も、プログラムが終了する事なく
#$averageに "undef" が出力されるようになる
