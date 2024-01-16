# Send recovery email

<highlight>Send recovery email</highlight>

<note title="Request Body">
	Only one of the Request Body properties is required.
</note>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/password-recovery" method="POST">
	<response type="400">
		<sample lang="JSON">
			{
				"message": "Enter username or email",
				"file": "password-recovery.php",
				"line": 0
			}
		</sample>
	</response>
	<response type="404">
		<sample lang="JSON">
			{
				"message": "Player doesn't exists",
				"file": "password-recovery.php",
				"line": 0
			}
		</sample>
	</response>
</api-endpoint>

## HTTP Errors - 400
<deflist collapsible="false">
	<def title="Enter username or email">
		Occurs when the email address or username property is missing in the request body.
	</def>
</deflist>

## HTTP Errors - 404
<deflist collapsible="false">
	<include from="error.md" element-id="pde"/>
</deflist>