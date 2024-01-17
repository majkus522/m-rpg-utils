# Check if player has skill

<highlight>Check if player has skill</highlight>

<include from="notes.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<note title="Url variable">
	If the <format color="BlueViolet">{$skill}</format> variable in the url is not present it will be redirected to <a href="getSkills.md">this endpoint</a>.
</note>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/skills/{$username}/{$skill}" method="GET">
	<response type="400">
		<sample lang="JSON">
			{
				"message": "Enter player",
				"file": "skills.php",
				"line": 0
			}
		</sample>
	</response>
	<response type="404">
		<sample lang="JSON">
			{
				"message": "Not found",
				"file": "skills.php",
				"line": 0
			}
		</sample>
	</response>
</api-endpoint>

## HTTP Errors - 400
<deflist collapsible="false">
	<include from="error.md" element-id="ep"/>
</deflist>

## HTTP Errors - 404
<deflist collapsible="false">
	<include from="error.md" element-id="pde"/>
	<include from="error.md" element-id="sde"/>
	<def title="Player doesn't have this skill">
		Occurs when a given player does not have the entered skill.
	</def>
</deflist>