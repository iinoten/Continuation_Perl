{
    my $count;
    sub count_one { ++$count }
    sub count_so_far { return $count }
}

count_one();
count_one();
count_one();

print count_so_far();