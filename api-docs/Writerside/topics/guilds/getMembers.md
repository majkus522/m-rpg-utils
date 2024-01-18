# Get guild members

<highlight>Get guild members</highlight>

<include from="urlVariableGuild.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/guilds/{$slug}/members" method="GET">
	<response type="200">
		<sample lang="JSON">
			[
				{
					"username": "username1",
					"type": "leader"
				},
				{
					"username": "username2",
					"type": "vice_leader"
				},
				{
					"username": "username3",
					"type": "member"
				}
			]
		</sample>
	</response>
	<response type="400">
		<sample lang="JSON">
			{
				"message": "Incorrect request",
				"file": "guilds.php",
				"line": 0
			}
		</sample>
	</response>
	<response type="404">
		<sample lang="JSON">
			{
				"message": "Guild doesn't exists",
				"file": "guilds.php",
				"line": 0
			}
		</sample>
	</response>
</api-endpoint>

## HTTP Errors - 400
<deflist collapsible="false">
	<include from="error.md" element-id="egn"/>
	<def title="You are not part of this guild">
		You can not check members of the guild you are not part of.
	</def>
</deflist>

## HTTP Errors - 404
<deflist collapsible="false">
	<include from="error.md" element-id="gde"/>
</deflist>