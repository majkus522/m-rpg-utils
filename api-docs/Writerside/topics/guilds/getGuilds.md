# Get all guilds

<highlight>Get all guilds</highlight>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/guilds" method="GET">
	<response type="200">
		<sample lang="JSON">
			[
				{
					"id": 1,
					"name": "Name_1",
					"slug": "name-1",
					"leader": 1
				},
				{
					"id": 2,
					"name": "Name_2",
					"slug": "name-2",
					"leader": 2
				}
			]
		</sample>
	</response>
</api-endpoint>