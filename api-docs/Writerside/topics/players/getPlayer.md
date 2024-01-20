# Get single player

<highlight>Get single player</highlight>

<note title="Url variable">
	If the variable in the url is not present it will be redirected to <a href="getAllPlayers.md">this endpoint</a>.
</note>

<note title="Session">
	If session header are not present or incorrect this endpoint will return only partial content (206).
</note>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/players/{$username}" method="GET">
	<response type="200">
		<sample lang="JSON">
			{
				"id": 1,
				"username": "username1",
				"email": "example@email.com",
				"level": 1,
				"exp": 1,
				"money": 1,
				"clazz": "class",
				"str": 1,
				"agl": 1,
				"chr": 1,
				"intl": 1,
				"def": 1,
				"vtl": 1,
				"dex": 1,
				"guild": "guild slug"
			}
		</sample>
	</response>
	<response type="206">
		<sample lang="JSON">
			{
				"id": 1,
				"username": "username1"
			}
		</sample>
	</response>
	<response type="404">
		<sample lang="JSON">
			{
				"message": "Player doesn't exists",
				"file": "players.php",
				"line": 0
			}
		</sample>
	</response>
</api-endpoint>

## HTTP Errors - 404
<deflist collapsible="false">
	<include from="error.md" element-id="pde"/>
</deflist>