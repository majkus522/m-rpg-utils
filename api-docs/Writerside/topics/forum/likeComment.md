# Like a comment

<highlight>Like a comment</highlight>

<var name="urlVariableLink" value="epc"/>
<var name="urlVariableSummary" value="400 - Enter post or comment"/>
<include from="notes.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/forum/{$slug}" method="PATCH">
	<request>
		<sample lang="JSON">
			{
				"like": true
			}
		</sample>
	</request>
	<response type="400">
		<sample lang="JSON">
			{
				"message": "Incorrect request",
				"file": "forum.php",
				"line": 0
			}
		</sample>
	</response>
	<response type="404">
		<sample lang="JSON">
			{
				"message": "Not found",
				"file": "forum.php",
				"line": 0
			}
		</sample>
	</response>
</api-endpoint>

## HTTP Errors - 400
<deflist collapsible="false">
	<include from="error.md" element-id="epc"/>
	<def title="Enter new like value">
		There is no like value in request body.
	</def>
	<def title="Incorrect like value">
		The new like value should be boolean.
	</def>
</deflist>

## HTTP Errors - 404
<deflist collapsible="false">
	<def title="Comment or post doesn't exists">
		Comment does not exist.
	</def>
</deflist>