# Edit player fake status

<highlight>Edit player fake status</highlight>

<include from="notes.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<note title="Request body">
	At least one property must be present in the request body, otherwise it will throw a error 400.
</note> 

<api-endpoint openapi-path="./../../data.yaml" endpoint="/fake-status/${username}" method="PATCH">
	<response type="400">
		<sample lang="JSON">
			{
				"message": "Incorrect request",
				"file": "fake-status.php",
				"line": 0
			}
		</sample>
	</response>
	<response type="404">
		<sample lang="JSON">
			{
				"message": "Can't find",
				"file": "fake-status.php",
				"line": 0
			}
		</sample>
	</response>
</api-endpoint>

## Possible errors - 400
<list>
	<li>Enter some changes</li>
	<li>Incorrect value: <format color="BlueViolet">{$parameter}</format></li>
</list>

## Possible errors - 404
<list>
	<li>Player doesn't exists</li>
	<li>Player doesn't have fake status</li>
</list>