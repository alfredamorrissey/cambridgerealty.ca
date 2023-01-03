<h3>Apartment Vacancy</h3>
<p class="text-default-2 inset-1 letter-spacing-1">
<li>Utilities included for all apartments.</li>
<li>Parking $130/car/month</li>
</p>
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
      <table class="table table-compact">
            <thead >
            <tr>
                <th></th>
                <th>Unit</th>
                <th>Occupancy</th>
                <th>Monthly Rent</th>
                <th></th>
            </tr>
            </thead>
          <tbody>
      <?php
    }
      ?>

      <tr>
          <td>
              <a class="button" href="suite-gallery.php?suite_id=<?php echo $clAvailable->__getProp('suite','suite_id') ?>">Details</a >
          </td>
          <td>
      <?php
    if ($clAvailable->__getProp('suite','suite_id') != null)
    {
      echo $clAvailable->__getProp('suite','suite_id');
    }

    echo "</td>\n<td>" . $arrOccupancy[$clAvailable->__getProp('suite','bedrooms')]. "</td>\n<td> ";
    echo money_format('%.2n', $clAvailable->__getProp('available','rent')). "</td>\n<td>".$clAvailable->__getProp('available','promotion');
      //echo "<i class=\"fa fa-info-circle\"></i> ".$clAvailable->__getProp('suite','suite_id') . " Details";
      echo "</td>\n";
    echo "</tr>\n";

    }
  echo "</tbody></table>\n";
}
else
{
    echo "<h5 class=\"text-primary\">
      Sorry, there are currently no available apartments for rent. <br>Please check back later.</h5>";
}
?>
