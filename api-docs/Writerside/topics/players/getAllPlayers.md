# Get all players

<highlight>Get all players</highlight>

<api-endpoint openapi-path="../../data.yaml" endpoint="/players" method="GET">
	<response type="206">
		<sample lang="JSON">
			[
				{
					"id": 1,
					"username": "username1"
				},
				{
					"id": 2,
					"username": "username2"
				}
			]
		</sample>
	</response>
	<response type="400">
		<sample lang="JSON">
			{
				"message": "Error message",
				"file": "players.php",
				"line": 0
			}
		</sample>
	</response>
	<response type="404">
		<sample lang="JSON">
			{
				"message": "Can't find any player matching conditions",
				"file": "players.php",
				"line": 0
			}
		</sample>
	</response>
</api-endpoint>

## Possible errors - 400
<list>
	<li>Unknown query string parameter <format color="BlueViolet">{$parameter}</format></li>
	<li>Unknown order parameter <format color="BlueViolet">{$value}</format></li>
</list>