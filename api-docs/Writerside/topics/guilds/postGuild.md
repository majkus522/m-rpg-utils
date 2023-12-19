# Create guild

<highlight>Create guild</highlight>

<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/guilds" method="POST">
	<response type="400">
		<sample lang="JSON">
			{
				"message": "Incorrect request",
				"file": "guilds.php",
				"line": 0
			}
		</sample>
	</response>
</api-endpoint>

## Possible errors - 400
<list>
	<li>Enter guilds name</li>
	<li>Enter guilds leader</li>
	<li>Guilds name is too long</li>
	<li>Guild already exists</li>
	<li>You are already part of guild</li>
</list>