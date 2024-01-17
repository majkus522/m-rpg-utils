# Get player skills

<highlight>Get player skills</highlight>

<include from="notes.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/skills/{$username}" method="GET">
    <response type="200">
		<sample lang="JSON">
			[
				{
					"id": 1,
					"player": 1,
					"skill": "skill1",
					"toggle": 0
				},
				{
					"id": 1,
					"player": 1,
					"skill": "skill2",
					"toggle": 1
				}
			]
		</sample>
	</response>
    <response type="400">
		<sample lang="JSON">
			{
				"message": "Incorrect request",
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
	<def title="Unknown query string parameter {$parameter}">
		Occurs when the <format color="BlueViolet">{$parameter}</format> is invalid.
	</def>
	<def title="Unknown order parameter {$value}">
		Occurs when the order query string has incorrect value.
	</def>
	<def title="Incorrect query string (toggle) value">
		Occurs when the toggle query string has incorrect value.
	</def>
	<def title="Unknown rarity parameter {$value}">
		Occurs when the rarity query string has incorrect value.
	</def>
</deflist>

## HTTP Errors - 404
<deflist collapsible="false">
	<include from="error.md" element-id="pde"/>
	<def title="Can't find any skills matching conditions">
		Can't find any skill matching query string parameters to given player.
	</def>
</deflist>