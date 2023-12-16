# Set players new password

<highlight>Set players new password</highlight>

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

## Possible errors - 400
<list>
	<li>Enter code</li>
</list>
<deflist collapsible="true" default-state="collapsed">
	<def title="Password errors">
		<list>
			<li>Enter password</li>
			<li>Password must be at least 6 characters long</li>
			<li>Password must contain at least one large character</li>
			<li>Password must contain at least one small character</li>
			<li>Password must contain at least one number</li>
			<li>Password must contain at least one special character</li>
		</list>
	</def>
</deflist>