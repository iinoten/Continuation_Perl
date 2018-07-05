sub load_common_subroutines{
    open my $more_fh, '<' 'Navigation.pm' or die "Navigation.pm:$!";
    undef $/;       #複数の空文字列も一つの空文字行として処理してくれる
    my $more_code = <$more_fh>;
    close $more_fh;
    eval $more_code;
    die $@ if $@;   #異常が発生した原因を示すエラーメッセージ
}