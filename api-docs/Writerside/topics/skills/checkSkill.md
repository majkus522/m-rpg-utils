# Check if player has skill

<highlight>Check if player has skill</highlight>

<include from="notes.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/skills/{$username}/{$skill}" method="GET">
	<response type="404">
		<sample lang="JSON">
			{
				"message": "Can't find",
				"file": "skills.php",
				"line": 0
			}
		</sample>
	</response>
</api-endpoint>

## Possible errors - 404
<list>
	<li>Player doesn't exists</li>
	<li>Skill doesn't exists</li>
	<li>Player doesn't have this skill</li>
</list>