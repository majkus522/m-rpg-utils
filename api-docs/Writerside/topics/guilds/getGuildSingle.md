# Get guild

<highlight>Get guild</highlight>

<note title="Url variable">
	If the variable in the url is not present it will be redirected to <a href="getGuilds.md">this endpoint</a>.
</note>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/guilds/{$slug}" method="GET">
	<response type="200">
		<sample lang="JSON">
			{
				"id": 1,
				"name": "Name_1",
				"slug": "name-1",
				"leader": 1
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

## HTTP Errors - 404
<deflist collapsible="false">
	<include from="error.md" element-id="gde"/>
</deflist>