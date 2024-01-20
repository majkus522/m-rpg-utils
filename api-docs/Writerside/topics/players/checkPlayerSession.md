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

## HTTP Errors - 400
<deflist collapsible="false">
	<include from="error.md" element-id="ep"/>
	<def title="Enter session key">
		Occurs when there is no Session-Key header in request.
	</def>
	<def title="Enter session id">
		Occurs when there is no Session-ID header in request.
	</def>
</deflist>

## HTTP Errors - 401
<deflist collapsible="false">
	<def title="Incorrect player">
		Session-ID is not bound to entered player.
	</def>
	<def title="Incorrect session key">
		Session-Key is not bound to entered player or session expired.
	</def>
</deflist>

## HTTP Errors - 404
<deflist collapsible="false">
	<include from="error.md" element-id="pde"/>
</deflist>