<?php
$n = rand(1e8,9.99999999e8);
$n2 = rand(1e8,9.99999999e8);
echo base_convert($n,10,36) . base_convert($n2,10,36);
#$i = 1;
#$col1 = 5;
#echo ${'col' . $i};
?>