# Delete guild

<highlight>Delete guild</highlight>

<include from="urlVariableGuild.md" element-id="urlVariable"/>
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

## HTTP Errors - 400
<deflist collapsible="false">
	<include from="error.md" element-id="egn"/>
</deflist>

## HTTP Errors - 401
<deflist collapsible="false">
	<def title="Only leader can delete a guild">
		You have to be at least guilds leader to do this.
	</def>
</deflist>

## HTTP Errors - 404
<deflist collapsible="false">
	<def title="Guild is already deleted">
		Guild that you want to delete is already deleted or never existed.
	</def>
</deflist>