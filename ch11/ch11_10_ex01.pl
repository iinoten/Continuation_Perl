use 5.010001;

my @day = qw{ark dip wap sen pop sep kir};
sub  number_to_day_name { my $num = shift @_; $day[$num]; }
my @month = qw(diz pod rod sip wax lin sen kun fiz nap dep);

sub trans_date {
    my $changed = shift;

    given ($changed) {
        when (/diz/) { print "Jan\n" }
        when (/pod/) { print "Feb\n" }
        when (/rod/) { print "Mar\n" }
        when (/sip/) { print "Apr\n" }
        when (/wax/) { print "May\n" }
        when (/lin/) { print "Jun\n" }
        when (/sen/) { print "Jly\n" }
        when (/kun/) { print "Aug\n" }
        when (/fiz/) { print "Sep\n" }
        when (/nap/) { print "Nov\n" }
        when (/dep/) { print "Oct\n" }
        default    { print "type lang of Oogaboogoo\n" }
    }   
}

my $langed = <>;

print my $lang = trans_date(chomp($langed)); #日本語が不自由なので数字を返す発想に至らなかった