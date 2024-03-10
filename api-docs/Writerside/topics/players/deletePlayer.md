# Delete player

<highlight>Delete player</highlight>

<include from="notes.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/players/{$username}" method="DELETE">
	<response type="400">
		<sample lang="JSON">
			{
				"message": "Enter player",
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
</api-endpoint>

## HTTP Errors - 400
<deflist collapsible="false">
	<include from="error.md" element-id="ep"/>
	<def title="Enter player password">
		Occurs when there is no Password header in the request.
	</def>
</deflist>

## HTTP Errors - 401
<deflist collapsible="false">
	<def title="Wrong password">
		Player password is incorrect.
	</def>
</deflist>