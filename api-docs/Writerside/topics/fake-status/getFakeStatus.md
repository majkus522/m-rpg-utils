# Get player fake status

<highlight>Get player fake status</highlight>

<include from="notes.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/fake-status/${username}" method="GET">
	<response type="200">
		<sample lang="JSON">
			{
				"id": 1,
				"player": 1,
				"level": 8,
				"money": 9900,
				"clazz": "warlock",
				"str": 19,
				"agl": 109,
				"chr": 90,
				"intl": 50,
				"def": 0,
				"vtl": 30,
				"dex": 100
			}
		</sample>
	</response>
	<response type="400">
		<sample lang="JSON">
			{
				"message": "Enter player",
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
</deflist>

## HTTP Errors - 404
<deflist collapsible="false">
	<include from="error.md" element-id="pde"/>
	<def title="Player doesn't have fake status">
		The introduced player does not have the fake status skill or has not yet created a fake status.
	</def>
</deflist>