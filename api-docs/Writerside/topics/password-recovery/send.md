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