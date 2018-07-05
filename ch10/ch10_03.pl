my @castaways =
    qw(Gilligan Skipper ProfessorGinger Mary Ann Thurston Lovey);
my @wasters = sort {
    ask_monkey_about($b) <=> ask_monkey_about($a)
} @castaways;

my @names_and_pineapples = map {
    [ $_, ask_monkey_about($_) ]
} @castaways;
#利用者と利用者の使ったパイナップルの数を配列@names_and_pineapplesにいれる

my @sorted_names_and_pineapples = sort {
    $b->[1] <=> $a->[1];    #パイナップルの数をソートする
} @names_and_pineapples;