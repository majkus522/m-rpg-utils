# Edit player data

<highlight>Edit player</highlight>

<include from="notes.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/players/{$username}" method="PATCH">
    <request>
		<sample lang="JSON">
			{
			  "password": "new password", //Must be encoded using BASE64
			  "email": "new email"
			}
		</sample>
    </request>
    <response type="400">
		<sample lang="JSON">
			{
				"message": "Error message",
				"file": "players.php",
				"line": 0
			}
		</sample>
	</response>
</api-endpoint>

## HTTP Errors - 400
<deflist collapsible="false">
	<include from="error.md" element-id="ep"/>
	<include from="error.md" element-id="esc"/>
</deflist>
<include from="error.md" element-id="emailErrors"/>
<include from="error.md" element-id="passwordErrors"/>