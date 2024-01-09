# Check player session

<highlight>Check player session</highlight>

<include from="notes.md" element-id="urlVariable"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/players/{$username}/session" method="GET">
	<response type="400">
		<sample lang="JSON">
			{
				"message": "Incorrect request",
				"file": "players.php",
				"line": 0
			}
		</sample>
	</response>
	<response type="401">
		<sample lang="JSON">
			{
				"message": "Unauthorized",
				"file": "players.php",
				"line": 0
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

## Possible errors - 400
<list>
	<li>Enter session key</li>
	<li>Enter session id</li>
</list>

## Possible errors - 401
<list>
	<li>Incorrect player</li>
	<li>Incorrect session key</li>
</list>