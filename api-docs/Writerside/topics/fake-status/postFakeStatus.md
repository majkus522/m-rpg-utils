# Create fake status

<highlight>Create fake status</highlight>

<include from="notes.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/fake-status/${username}" method="POST">
	<request>
		<sample src="fake-status/requestFakeStatusAll.json"/>
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
	<li>Enter <format color="BlueViolet">{$parameter}</format></li>
	<li>Incorrect value: <format color="BlueViolet">{$parameter}</format></li>
</list>

## Possible errors - 404
<list>
	<li>Player doesn't exists</li>
	<li>Player doesn't have fake status</li>
</list>