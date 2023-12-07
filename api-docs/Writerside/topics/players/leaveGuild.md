# Leave guild

<highlight>Leave guild</highlight>

<include from="notes.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/players/{$username}/leave" method="PATCH">
	<response type="400">
		<sample src="error.json"/>
	</response>
</api-endpoint>

## Possible errors - 400
<list>
	<li>Enter player</li>
	<li>You are not part of any guild</li>
</list>