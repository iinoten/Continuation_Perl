#モジュール構築のまとめ

#module-starter --mb --name="Animal"(Animalのところは作るモジュールの名前にする)
#最初の金型的なのを作る

#perl Build.PL
#これでビルドスクリプトが作られる

#./Build
#ディストリビューション、ハッピーセットみたいな感じ。セットをつくる

#.Build test
#何かテストをするらしい

#./Build disttest
#manifestに記入したファイルが揃っているか確認する

#./Build dist
#ディストリビューションを完成させる