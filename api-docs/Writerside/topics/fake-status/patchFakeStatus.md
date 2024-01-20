# Edit player fake status

<highlight>Edit player fake status</highlight>

<include from="notes.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<note title="Request body">
	There must be at least one property in the request body, otherwise it will throw a <a anchor="esc" summary="HTTP 400 - Enter some changes">400 error </a>.
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
				"message": "Not found",
				"file": "fake-status.php",
				"line": 0
			}
		</sample>
	</response>
</api-endpoint>

## HTTP Errors - 400
<deflist collapsible="false">
	<include from="error.md" element-id="ep"/>
	<include from="error.md" element-id="esc"/>
	<include from="error.md" element-id="ivp"/>
</deflist>

## HTTP Errors - 404
<deflist collapsible="false">
	<include from="error.md" element-id="pde"/>
	<def title="Player doesn't have fake status">
		The introduced player has not yet created a fake status. To create fake status go to <a href="postFakeStatus.md">this endpoint</a>.
	</def>
</deflist>