use IO::Handle;

open my $fh, '>', $filename or die '...';
$fh->print('coconut headphones');
$fh->close;