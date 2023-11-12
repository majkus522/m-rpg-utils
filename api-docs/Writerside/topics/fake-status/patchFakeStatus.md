# Edit player fake status

<highlight>Edit player fake status</highlight>

<include from="notes.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<note title="Request body">
	Request body must contain at least one of parameters. If there are no parameters, it will return error 400.
</note> 

<api-endpoint openapi-path="./../../data.yaml" endpoint="/fake-status/${username}" method="PATCH">
	<request>
		<sample src="fake-status/requestFakeStatus.json"/>
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
	<li>Enter some changes</li>
	<li>Incorrect value: <format color="BlueViolet">{$parameter}</format></li>
</list>

## Possible errors - 404
<list>
	<li>Player doesn't exists</li>
	<li>Player doesn't have fake status</li>
</list>