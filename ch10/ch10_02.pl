my @sorted = sort qw( Gilligan Skipper Professor Ginger Mary Ann );
print "@sorted\n";  #"Ann Gilligan Ginger Mary Professor Skipper"


my @input = qw( Gilligan Skipper Professor Ginger MaryAnn );
my @sorted_positions =
    sort { $input[$a] cmp $input[$b] } 0 .. $#input;    #cmpで辞書順に並び替えるようになる
    #ここでつかっている$aと$bは添字を表してる(最後に$#inputで指定している)
    #比較しているのはちゃんと文字列
print "@sorted_positions\n";    #"0 3 4 2 1"
#sort前のリストで何番目に入っていたかを表す
