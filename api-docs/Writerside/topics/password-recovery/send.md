# Send recovery email

<note>
	Only one of the Query parameters is required.
</note>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/password-recovery" method="GET">
	<response type="400">
		<sample lang="JSON">
			{
				"message": "Enter username or email"
			}
		</sample>
	</response>
	<response type="404">
		<sample lang="JSON">
			{
				"message": "Player doesn't exists"
			}
		</sample>
	</response>
</api-endpoint>