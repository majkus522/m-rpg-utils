# Add player to guild

<highlight>Add player to guild</highlight>

<include from="notes.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/guilds/{$slug}/add" method="PATCH">
	<request>
		<sample src="guilds/requestAddPlayer.json"/>
	</request>
	<response type="400">
		<sample src="error.json"/>
	</response>
	<response type="404">
		<sample src="error.json"/>
	</response>
</api-endpoint>

## Possible errors - 400
<list>
	<li>Enter guilds name</li>
	<li>Enter player</li>
	<li>Player is already part of the guild</li>
</list>

## Possible errors - 404
<list>
	<li>Guild doesn't exists</li>
	<li>Player doesn't exists</li>
</list>
