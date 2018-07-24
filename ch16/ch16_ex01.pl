{
    package MyDate;
    use vars qw($AUTOLOAD);
    use Carp;

    my %Allowed_methods = qw(date 3 month 4 year 5 );
    my @Offsets = qw( 0 0 0 0 1 1900 0 0 0);

    sub new { bless {}, $_[0] }
    sub DESTROY;
    sub AUTOLOAD {
        my $method = $AUTOLOAD;
        $method =~ s/.*:://;
    }

    unless( exists $Allowed_methods{ $method }) {
        carp "Unknown method:$AUTOLOAD";
        return;
    }

    my $slice_index = $Allowed_methods{ $method };

    return (localtime)[$slice_index] + $Offsets[$slice_index];
}

MyDate->import;
my $date = MyDate -> new();

print $date->date . "\n";
print $date->month . "\n";
print $year->year . "\n";


#"return 文が、return で抜けるべきサブルーティンがない、 "main" コードで実行されました"???
