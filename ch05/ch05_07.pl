#自動有効化
my %provisions;
my $person;

while (<>) {
    if (/^(\S.*)/) { #最初の文字が空白文字でないか（^で最初の文字を指定して\Sで空白文字以外を選別）
        $person = $1;
        $provisions{$person} = [ ] unless $provisions{$person}; #すでに同じ持ち物が入っていないか
    } elsif (/^\s+(\S.*)/) {    #最初の文字が空白かどうかを見る
        die 'No person yet!' unless defined $person;
        push @{ $provisions{$person} }, $1;
    } else {
        die "I don't understand: $_"; 
    }
}