# Delete guild

<highlight>Delete guild</highlight>

<include from="notes.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/guilds/{$slug}" method="DELETE">
	<response type="400">
		<sample lang="JSON">
			{
				"message": "Enter guilds name",
				"file": "guilds.php",
				"line": 0
			}
		</sample>
	</response>
	<response type="401">
		<sample lang="JSON">
			{
				"message": "Only leader can delete a guild",
				"file": "guilds.php",
				"line": 0
			}
		</sample>
	</response>
	<response type="404">
		<sample lang="JSON">
			{
				"message": "Guild is already deleted",
				"file": "guilds.php",
				"line": 0
			}
		</sample>
	</response>
</api-endpoint>