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

## Possible errors - 404
<list>
	<li>Player doesn't exists</li>
	<li>Player doesn't have fake status</li>
</list>