# Get guild

<highlight>Get guild</highlight>

<note title="Url variable">
	If the variable in the url is not present it will be redirected to <a href="getGuilds.md">this endpoint</a>.
</note>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/guilds/{$slug}" method="GET">
	<response type="200">
		<sample src="guilds/getGuildSingle.json"/>
	</response>
	<response type="404">
		<sample lang="JSON">
			{
				"message": "Guild doesn't exists"
			}
		</sample>
	</response>
</api-endpoint>