# Kick player from guild

<highlight>Kick player from guild</highlight>

<include from="urlVariableGuild.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/guilds/{$slug}/kick" method="PATCH">
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
				"message": "Unauthorized",
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
	<def title="Player isn't part of your guild">
		Player has to be part of your guild to kick him.
	</def>
</deflist>

## HTTP Errors - 401
<deflist collapsible="false">
	<include from="error.md" element-id="pvl"/>
	<def title="You can't kick guilds leader">
		As a guilds vice leader you can not kick guilds leader.
	</def>
</deflist>

## HTTP Errors - 404
<deflist collapsible="false">
	<include from="error.md" element-id="gde"/>
	<include from="error.md" element-id="pde"/>
</deflist>