package Navigation;
sub turn_toward_heading {

}
{
    package main;

    sub turn_toward_heading {
        #このブロック内ではpackage main;が適用されることになる
    }
}
#これ以後ではpackage Navigation; がまた適用されるようになる