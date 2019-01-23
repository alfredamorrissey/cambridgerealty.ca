<h3>Apartment Vacancy</h3>
<br>
<?php
$clAvailable = new classAvailable($conn);
$result = $clAvailable->getAvailableSuites();
$num_records = $result->num_rows;

if ($num_records > 0)
{
  $month = "";
    // output data of each row
    while($clAvailable->fetch())
  {
    $currMonth = $arrMonths[$clAvailable->__getProp('available','month')]['EN']['FULL'];
    if ($month != $currMonth )
    {
      if ($month !=  "")
      {
        echo "</table>\n";
      }
      $month = $currMonth;
      echo "<h3>" . $month . "</h3>\n";
      ?>
      <table class="table table-striped table-compact">
        <thead>
        <tr>
          <td>Unit</td>
          <td>Occupancy</td>
          <td>Monthly Rent</td>
          <td>Promotion</td>
        </tr>
        <thead>
      <?php
    }
    echo "<tr>\n";
    echo "<td>";
    if ($clAvailable->__getProp('suite','suite_id') != null)
    {
      echo "<a href=\"suite-gallery.php?suite_id=" . $clAvailable->__getProp('suite','suite_id') . "\">";
      echo $clAvailable->__getProp('suite','suite_id');
      echo "</a >";
    }

    echo "</td>\n<td>" . $arrOccupancy[$clAvailable->__getProp('suite','bedrooms')]. "</td>\n<td> ";
    echo money_format('%.2n', $clAvailable->__getProp('available','rent')). "</td>\n<td>".$clAvailable->__getProp('available','promotion')."</td>\n";
    echo "</tr>\n";

    }
  echo "</table>\n";
}
else
{
    echo "<p class=\"single\">There are currently no available apartments for rent. Check back later.</p>";
}
?>
