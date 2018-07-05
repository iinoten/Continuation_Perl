#requireをつかうことで同じサブルーチンを二回定義しなくて済む
require 'DropAnchor.pm';
require 'Navigation.pm';    #Navigation.pmを処理する過程でDropAnchorが再定義されていてもエラーは出ない
#処理時間短縮ができる