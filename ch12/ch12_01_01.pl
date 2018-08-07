use ExtUtils::Makemaker 6.56;

WriteMakeFile(
    PREREQ_PM => {
        'Test::More' => 0,  #コードを実行するために必要になるモジュールをインストールとか色々セットしてくれる 
    },

    CONFIGURE_REQUIRES => {
        'ExtUtils::Makemaker' => 6.56,  #ExtUtils::Makemakeがバージョンによっては後述するBUILD_REQUIRESをフォローしていないからバージョン6.56を設定する
    },

    BUILD_REQUIRES => {
        'Test::more',   #実際にビルドしてくれる
    },

);