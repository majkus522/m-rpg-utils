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

## HTTP Errors - 400
<deflist collapsible="false">
	<def title="Enter guilds name">
		There is no guild name in request body.
	</def>
	<def title="Enter guilds leader">
		There is no guild leader in request body.
	</def>
	<def title="Guilds name is too long">
		Guilds name should contain max 100 characters.
	</def>
	<def title="Guild already exists">
		Guilds name is already taken.
	</def>
	<def title="You are already part of guild">
		You can not be part of any guild to create own.
	</def>
</deflist>