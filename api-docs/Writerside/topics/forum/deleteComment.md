# Delete a comment

<highlight>Delete a comment</highlight>

<var name="urlVariableLink" value="epc"/>
<var name="urlVariableSummary" value="400 - Enter post or comment"/>
<include from="notes.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/forum/{$slug}" method="DELETE">
	<response type="400">
		<sample lang="JSON">
			{
				"message": "Incorrect request",
				"file": "forum.php",
				"line": 0
			}
		</sample>
	</response>
	<response type="401">
		<sample lang="JSON">
			{
				"message": "Unauthorized",
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
</deflist>

## HTTP Errors - 401
<deflist collapsible="false">
	<def title="You can't delete someones else post or comment">
		Only author can delete a comment.
	</def>
</deflist>

## HTTP Errors - 404
<deflist collapsible="false">
	<def title="The post or comment is already deleted or never existed">
		You can not delete something that's already deleted.
	</def>
</deflist>