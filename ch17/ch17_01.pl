use Island::Plotting::Maps;
##
#上のコードと下のコードは同じ意味になる
##
BEGIN {
    require Island::Plotting::Maps; #ここでのrequireは使っているモジュールのパッケージ内にあるrequire
    Island::Plotting::Maps->import(qw(load_map scale_map draw_map));
}