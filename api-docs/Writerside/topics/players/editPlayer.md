# Edit player data

<highlight>Edit player</highlight>

<include from="notes.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/players/{$username}" method="PATCH">
    <request>
        <sample src="players/patchBody.json"/>
    </request>
    <response type="400">
		<sample src="error.json"/>
	</response>
</api-endpoint>

## Possible errors - 400
<list>
	<li>Enter player</li>
	<li>Enter some changes</li>
</list>
<deflist collapsible="true" default-state="collapsed">
	<def title="Email errors">
		<list>
			<li>Enter email</li>
			<li>Email already taken</li>
			<li>Incorrect email</li>
		</list>
	</def>
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