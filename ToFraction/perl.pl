AUTOLOAD { 
    $o=$d=($y = 1e4)*pop;
    ($d, $y) = ($y, $d % $y) while $y;
    [$o/$d,1e4/$d]
}
#Shorter Solution
AUTOLOAD {
    my $i;
    1 while ("@_" * ++$i) =~ /\./;
    [ "@_" * $i, $i ]
}