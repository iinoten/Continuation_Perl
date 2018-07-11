package Oogaboogoo::Date;
use strict;

my @day = qw{ark dip wap sen pop sep kir};
my @month = qw(diz pod rod sip wax lin sen kun fiz nap dep);

sub day {
    my $num = shift @_;
    die "$num is not a vaild month number"
        unless $num >= 0 and $num <= 6;
    return $day[$num];
}

sub mon {
    my $num = shift @_;
    die "$num is not vaild month number"
        unless $num >= 0 and $num <= 11;
    return $mon[$num];
}

1;  #慣例的なやつ、使ったサブルーチンがfalseを返さないようにするためのもの

