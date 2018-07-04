use IO::Null;


my $null_fh = IO::Null->new;    #なにもしない

some_printing_thing($null_fh, @args);   