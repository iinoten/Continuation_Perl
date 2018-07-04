use File::Find;

my $total_size = 0;
Find(sub{$total_size += -s if -f},'.');
print $total_size, "\n";