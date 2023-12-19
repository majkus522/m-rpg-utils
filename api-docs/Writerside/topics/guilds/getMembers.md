# Get guild members

<highlight>Get guild members</highlight>

<include from="notes.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/guilds/{$slug}/members" method="GET">
	<response type="200">
		<sample lang="JSON">
			[
				"username1",
				"username2",
				"username3"
			]
		</sample>
	</response>
	<response type="400">
		<sample lang="JSON">
			{
				"message": "You are not part of this guild",
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