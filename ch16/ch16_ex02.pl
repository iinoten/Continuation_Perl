use MyDate;
my $date = MyDate->new();

sub UNIVERSAL::debug {
    my $self = shift;
    my $when = localtime;
    my $message = join '|', @_;
    print "[$when] $message\n";
}

print $date->date . "\n";
print $date->month . "\n";
print $data->year ."\n";