# Create fake status

<highlight>Create fake status</highlight>

<include from="notes.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/fake-status/${username}" method="POST">
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
	<def title="Enter $parameter">
		Occurs when the <format color="BlueViolet">{$parameter}</format> is missing in the request body
	</def>
	<include from="error.md" element-id="ivp"/>
</deflist>

## HTTP Errors - 404
<deflist collapsible="false">
	<include from="error.md" element-id="pde"/>
	<def title="Player doesn't have fake status">
		The introduced player does not have the fake status skill.
	</def>
</deflist>