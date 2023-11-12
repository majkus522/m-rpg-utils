# Get player skills

<highlight>Get player skills</highlight>

<include from="notes.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/skills/{$username}" method="GET">
    <response type="200">
		<sample src="skills/getSkills.json"/>
	</response>
    <response type="400">
		<sample src="error.json"/>
	</response>
	<response type="404">
		<sample src="error.json"/>
	</response>
</api-endpoint>

## Possible errors - 400
<list>
	<li>Unknown query string parameter <format color="BlueViolet">{$parameter}</format></li>
	<li>Unknown order parameter <format color="BlueViolet">{$value}</format></li>
	<li>Incorrect query string (toggle) value</li>
	<li>Unknown rarity parameter <format color="BlueViolet">{$value}</format></li>
</list>

## Possible errors - 404
<list>
	<li>Player doesn't exists</li>
	<li>Can't find any skills matching conditions</li>
</list>