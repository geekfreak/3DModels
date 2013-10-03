

sub cube {

my $x = $_[0];
my $y = $_[1];
my $z = $_[2];

$s = 0.2;

#$s = rand(0.05) +0.08;

$a = $x; $am = $a-$s;  $ap = $a+$s;
$b = $y; $bm = $b-$s;  $bp = $b+$s;
$c = $z; $cm = $c-$s;  $cp = $c+$s;

$template = "  facet normal  $a    $b   $cm
    outer loop
      vertex    $a    $b   $c
      vertex    $ap   $bp  $c
      vertex    $ap   $b   $c
    endloop
  endfacet
  facet normal  $a    $b   $cm
    outer loop
      vertex    $a    $b   $c
      vertex    $a    $bp  $c
      vertex    $ap   $bp  $c
    endloop
  endfacet
  facet normal  $am   $b    $c
    outer loop
      vertex    $a    $b    $c
      vertex    $a    $bp   $cp
      vertex    $a    $bp   $c
    endloop
  endfacet
  facet normal  $am   $b    $c
    outer loop
      vertex    $a    $b    $c
      vertex    $a    $b    $cp
      vertex    $a    $bp   $cp
    endloop
  endfacet
  facet normal  $a    $bp   $c
    outer loop
      vertex    $a    $bp   $c
      vertex    $ap   $bp   $cp
      vertex    $ap   $bp   $c
    endloop
  endfacet
  facet normal  $a    $bp   $c
    outer loop
      vertex    $a    $bp   $c
      vertex    $a    $bp   $cp
      vertex    $ap   $bp   $cp
    endloop
  endfacet
  facet normal  $ap   $b    $c
    outer loop
      vertex    $ap   $b    $c
      vertex    $ap   $bp   $c
      vertex    $ap   $bp   $cp
    endloop
  endfacet
  facet normal  $ap   $b    $c
    outer loop
      vertex    $ap   $b    $c
      vertex    $ap   $bp   $cp
      vertex    $ap   $b    $cp
    endloop
  endfacet
  facet normal  $a    $bm   $c
    outer loop
      vertex    $a    $b    $c
      vertex    $ap   $b    $c
      vertex    $ap   $b    $cp
    endloop
  endfacet
  facet normal  $a    $bm   $c
    outer loop
      vertex    $a    $b    $c
      vertex    $ap   $b    $cp
      vertex    $a    $b    $cp
    endloop
  endfacet
  facet normal  $a    $b    $cp
    outer loop
      vertex    $a    $b    $cp
      vertex    $ap   $b    $cp
      vertex    $ap   $bp   $cp
    endloop
  endfacet
  facet normal  $a    $b    $cp
    outer loop
      vertex    $a    $b    $cp
      vertex    $ap   $bp   $cp
      vertex    $a    $bp   $cp
    endloop
  endfacet
";

print $template;

}

sub base {

    for ($xx=0;$xx<8;$xx+=0.1){
        for ($yy=0;$yy<3;$yy+=0.1){
                    cube($xx,$yy,0);
            }
        }
}

sub bmap {

    for ($xx=0.1;$xx<7.9;$xx+=0.1) {
        for ($yy=0.1;$yy<2.9;$yy+=0.1) {
            for ($zz=0.1;$zz<rand($xx*$yy);$zz+=0.1) {
                cube($xx,$yy,$zz);
            }
        }
    }
}


print "solid MYSOLID\n";
base();
bmap();
print "endsolid MYSOLID\n"


# for ($xx=0;$xx<1;$xx+=0.1){
    # for ($yy=0;$yy<1;$yy+=0.1){
        # for ($zz=0;$zz<1;$zz+=0.1){
           # if (rand(1000) > 285) {
                # cube($xx,$yy,$zz);
            # }
        # }
    # }
# }


