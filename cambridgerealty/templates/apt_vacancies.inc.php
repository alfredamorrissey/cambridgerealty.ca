<table cellspacing="13px">
	<tbody>
		<tr>
			<td align="center" valign="top"><img src="../images/exterior_tall.jpg" /></td>
			<td class="body_text">
				<!-- Body text goes here -->
				<div class="body_text">
				<h1>Consider our available units</h1>
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
				echo "</table></div>\n";
			}
			$month = $currMonth;
			echo "<H5>" . $month . "</H5>\n";
			echo "<div class=\"left15\">\n";
			echo "<table class=\"unit_list\" width=\"90%\">\n";
			echo "<tr>\n";
			echo "<td class=\"title\">Unit</td>\n";
			echo "<td class=\"title\">Occupancy</td>\n";
			echo "<td class=\"title\">Monthly Rent</td>\n";
			echo "<td class=\"title\">Promotion</td>\n";
			echo "</tr>\n";
		}
		echo "<tr>\n";
		echo "<td>"; 
		if ($clAvailable->__getProp('suite','floor_plan') != null)
		{
			echo "<a href=\"" . $clAvailable->__getProp('suite','floor_plan') . "\">";
		}
		echo $clAvailable->__getProp('suite','suite_id'); 
		if ($clAvailable->__getProp('suite','floor_plan') != null)
		{
			echo "</a >";
		}
		
		echo "</td>\n<td>" . $arrOccupancy[$clAvailable->__getProp('suite','bedrooms')]. "</td>\n<td> "; 
		echo money_format('%.2n', $clAvailable->__getProp('available','rent')). "</td>\n<td>".$clAvailable->__getProp('available','promotion')."</td>\n";
		echo "</tr>\n";

    }
	echo "</table></div>\n";
} 
else 
{
    echo "<p class=\"single\">There are currently no available apartments for rent. Check back later.</p>";
}

?>						


				<p>&nbsp;</p>
				</div> <!-- end body_text -->
			</td> <!-- end body_text -->
		</tr>
	</tbody>
</table>						