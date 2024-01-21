# Create new player

<highlight>Create new player</highlight>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/players" method="POST">
    <request>
        <sample lang="JSON">
			{
			  "username": "username1",
			  "password": "UEBzc3cwcmQ=", //Must be encoded using BASE64
			  "email": "example@mail.com"
			}
		</sample>
    </request>
    <response type="201">
		<sample lang="JSON">
			{
				"key": "0874766202401092016080742134",
				"id": 0
			}
		</sample>
	</response>
    <response type="400">
		<sample lang="JSON">
			{
				"message": "Error message",
				"file": "players.php",
				"line": 0
			}
		</sample>
	</response>
</api-endpoint>

## HTTP Errors - 400
<include from="error.md" element-id="usernameErrors">
<include from="error.md" element-id="emailErrors">
<include from="error.md" element-id="passwordErrors">