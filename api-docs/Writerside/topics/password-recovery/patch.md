# Set players new password

<highlight>Set players new password</highlight>

<include from="notes.md" element-id="urlVariable"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/password-recovery/{$code}" method="PATCH">
	<response type="400">
		<sample src="error.json"/>
	</response>
	<response type="404">
		<sample lang="JSON">
			{
				"message": "Link expired"
			}
		</sample>
	</response>
</api-endpoint>

## Possible errors - 400
<deflist collapsible="true">
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