# Get guild members

<highlight>Get guild members</highlight>

<include from="notes.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/guilds/{$slug}/members" method="GET">
	<response type="200">
		<sample src="guilds/getMembers.json"/>
	</response>
	<response type="400">
		<sample lang="JSON">
			{
				"message": "You are not part of this guild"
			}
		</sample>
	</response>
	<response type="404">
		<sample lang="JSON">
			{
				"message": "Guild doesn't exists"
			}
		</sample>
	</response>
</api-endpoint>