use strict;
require 'Oogaboogoo/Date.pm';   #requireを使ってDate.pmを持って来る

my($sec, $min,$mday,$mon,$year,$wday) = localtime; #date.pmのやつ
#この書き方、use strict内で書けなかったと思うんですが
my $day_name = Oogaboogoo::Date::day($wday);
my $mon_name = Oogaboogoo::Date::mon($mon);

$year += 1900;

print "$day_name, $mon_name, $mday, $year.\n";