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
				"message": "Incorrect request",
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

## HTTP Errors - 400
<deflist collapsible="false">
	<include from="error.md" element-id="uqs"/>
	<include from="error.md" element-id="uop"/>
</deflist>

## HTTP Errors - 404
<deflist collapsible="false">
	<def title="Can't find any players matching conditions">
		Can't find any players matching parameters in request.
	</def>
</deflist>