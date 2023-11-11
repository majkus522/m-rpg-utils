# Toggle players skill

<highlight>Toggle players skill</highlight>

<include from="notes.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/skills/{$username}/{$skill}" method="PATCH">
	<request>
		<sample lang="JSON" title="On">
			true
		</sample>
		<sample lang="JSON" title="Off">
			false
		</sample>
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
	<li>Skill can't be toggled</li>
	<li>Enter new toggle value</li>
</list>

## Possible errors - 404
<list>
	<li>Player doesn't exists</li>
	<li>Skill doesn't exists</li>
</list>