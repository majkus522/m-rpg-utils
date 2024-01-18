# Add player to guild

<highlight>Add player to guild</highlight>

<include from="urlVariableGuild.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/guilds/{$slug}/add" method="PATCH">
	<request>
		<sample>username1</sample>
	</request>
	<response type="400">
		<sample lang="JSON">
			{
				"message": "Incorrect request",
				"file": "guilds.php",
				"line": 0
			}
		</sample>
	</response>
	<response type="401">
		<sample lang="JSON">
			{
				"message": "You don't have permission to do this (vice leader)",
				"file": "guilds.php",
				"line": 0
			}
		</sample>
	</response>
	<response type="404">
		<sample lang="JSON">
			{
				"message": "Not found",
				"file": "guilds.php",
				"line": 0
			}
		</sample>
	</response>
</api-endpoint>

## HTTP Errors - 400
<deflist collapsible="false">
	<include from="error.md" element-id="egn"/>
	<include from="error.md" element-id="eprb"/>
	<def title="Player is already part of the guild">
		The player that you want to add to the guild is already part of yours or other guild.
	</def>
</deflist>

## HTTP Errors - 401
<deflist collapsible="false">
	<include from="error.md" element-id="pvl"/>
</deflist>

## HTTP Errors - 404
<deflist collapsible="false">
	<include from="error.md" element-id="gde"/>
	<include from="error.md" element-id="pde"/>
</deflist>