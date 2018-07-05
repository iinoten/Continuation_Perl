#シュワルツ変換
#my @output_data =
#   map {抽出},
#   sort {比較}
#   map [構築], @input_data;

my @names =
    map $_->[0],
    sort { $b->[1] <=> $a->[1] },
    map [ $_, ask_mokey_about($_) ], @castaways;