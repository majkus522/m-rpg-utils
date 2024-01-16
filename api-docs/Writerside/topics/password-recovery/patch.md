# Set players new password

<highlight>Set players new password</highlight>

<var name="urlVariableSummary" type="string" value="HTTP 400 - Enter code"/>
<include from="notes.md" element-id="urlVariable"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/password-recovery/{$code}" method="PATCH">
	<request>
		<sample lang="JSON">
			{
			  "password": "bmV3IHBhc3N3b3Jk" //Must be encoded using BASE64
			}
		</sample>
	</request>
	<response type="400">
		<sample lang="JSON">
			{
				"message": "Error message",
				"file": "password-recovery.php",
				"line": 0
			}
		</sample>
	</response>
	<response type="404">
		<sample lang="JSON">
			{
				"message": "Link expired",
				"file": "password-recovery.php",
				"line": 0
			}
		</sample>
	</response>
</api-endpoint>

## HTTP Errors - 400
<deflist collapsible="false">
	<def title="Enter code" id="ep">
		Occurs when there is no password recovery code in the URL.
	</def>
</deflist>
<include from="error.md" element-id="passwordErrors"/>

## HTTP Errors - 404
<deflist collapsible="false">
	<def title="Link expired">
		The password recovery code has already been used or has expired. To generate a new one, use <a href="send.md">this endpoint</a>.
	</def>
</deflist>