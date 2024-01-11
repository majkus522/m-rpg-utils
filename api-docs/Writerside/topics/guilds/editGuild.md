# Edit guild

<highlight>Edit guild</highlight>

<include from="notes.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<note title="Request body">
	At least one property must be present in the request body, otherwise it will throw a error 400.
</note> 

<api-endpoint openapi-path="../../data.yaml" endpoint="/guilds/{$slug}" method="PATCH">
	<response type="400">
		<sample lang="JSON">
			{
				"message": "Incorrect request",
				"file": "guilds.php",
				"line": 0
			}
		</sample>
	</response>
	<response type="401">
		<sample lang="JSON">
			{
				"message": "Unauthorized",
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
	<li>Enter some changes</li>
</list>

## Possible errors - 401
<list>
	<li>You don't have permission to do this (leader)</li>
	<li>You don't have permission to do this (vice leader)</li>
	<li>You can't downgrade your leader</li>
</list>

## Possible errors - 404
<list>
	<li>Guild doesn't exists</li>
	<li>Player doesn't exists (leader)</li>
	<li>Player doesn't exists (vice leader)</li>
</list>