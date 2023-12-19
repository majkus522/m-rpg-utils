# Kick player from guild

<highlight>Kick player from guild</highlight>

<include from="notes.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/guilds/{$slug}/kick" method="PATCH">
	<request>
		<sample>username1</sample>
	</request>
	<response type="400">
		<sample lang="JSON">
			{
				"message": "Incorrect request",
				"file": "guilds.php",
				"line": 0
			}
		</sample>
	</response>
	<response type="404">
		<sample lang="JSON">
			{
				"message": "Can't find",
				"file": "guilds.php",
				"line": 0
			}
		</sample>
	</response>
</api-endpoint>

## Possible errors - 400
<list>
	<li>Enter guilds name</li>
	<li>Enter player</li>
	<li>Player isn't part of your guild</li>
</list>

## Possible errors - 404
<list>
	<li>Guild doesn't exists</li>
	<li>Player doesn't exists</li>
</list>