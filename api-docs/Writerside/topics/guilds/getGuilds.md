# Get all guilds

<highlight>Get all guilds</highlight>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/guilds" method="GET">
	<response type="200">
		<sample lang="JSON">
			[
				{
					"id": 1,
					"name": "Name 1",
					"slug": "name-1",
					"leader": 1
				},
				{
					"id": 2,
					"name": "Name 2",
					"slug": "name-2",
					"leader": 2
				}
			]
		</sample>
	</response>
	<response type="404">
		<sample lang="JSON">
			{
				"message": "Can't find any guild matching conditions",
				"file": "guilds.php",
				"line": 0
			}
		</sample>
	</response>
</api-endpoint>