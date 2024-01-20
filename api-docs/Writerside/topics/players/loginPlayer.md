# Login player

<highlight>Login player</highlight>

<include from="notes.md" element-id="urlVariable"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/players/{$username}/login" method="GET">
	<response type="200">
		<sample lang="JSON">
			{
				"key": "0874766202401092016080742134",
				"id": 0
			}
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
	<response type="401">
		<sample lang="JSON">
			{
				"message": "Wrong password",
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
	<def title="Enter player password">
		Occurs when there is no Password header in the request.
	</def>
	<def title="Enter session type">
		Occurs when there is no Session-Type header in the request.
	</def>
</deflist>

## HTTP Errors - 401
<deflist collapsible="false">
	<def title="Wrong password">
		Player password is incorrect.
	</def>
</deflist>

## HTTP Errors - 404
<deflist collapsible="false">
	<include from="error.md" element-id="pde"/>
</deflist>