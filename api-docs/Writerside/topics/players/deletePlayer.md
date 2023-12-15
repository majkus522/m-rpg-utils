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
</api-endpoint>