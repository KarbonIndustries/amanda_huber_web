<?php
require_once($_SERVER['DOCUMENT_ROOT'] . '/../inc/init.php');

$id = 0;
$data[] = '1'; #1
$data[] = '2'; #2
$data[] = '3'; #3
$data[] = '4'; #4
$data[] = '5'; #5
$data[] = '6'; #6
$data[] = '7'; #7
$data[] = '8'; #8
$data[] = '9'; #9

$serialized = serialize($data);
#echo $serialized;

#K::updateProject($id,$serialized);
?>
<hr/>
<?php
$unserialized = unserialize($serialized);
$array = json_encode($unserialized);
?>
<pre>
<?php print_r($unserialized); ?>
</pre>

<script>
var array = <?= $array ?>;
alert(array.length);
</script>