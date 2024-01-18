# Edit guild

<highlight>Edit guild</highlight>

<include from="urlVariableGuild.md" element-id="urlVariable"/>
<include from="notes.md" element-id="session"/>

<note title="Request body">
	There must be at least one property in the request body, otherwise it will throw a <a anchor="esc" summary="HTTP 400 - Enter some changes">400 error </a>.
</note> 

<api-endpoint openapi-path="../../data.yaml" endpoint="/guilds/{$slug}" method="PATCH">
	<response type="400">
		<sample lang="JSON">
			{
				"message": "Incorrect request",
				"file": "guilds.php",
				"line": 0
			}
		</sample>
	</response>
	<response type="401">
		<sample lang="JSON">
			{
				"message": "Unauthorized",
				"file": "guilds.php",
				"line": 0
			}
		</sample>
	</response>
	<response type="404">
		<sample lang="JSON">
			{
				"message": "Not found",
				"file": "guilds.php",
				"line": 0
			}
		</sample>
	</response>
</api-endpoint>

## HTTP Errors - 400
<deflist collapsible="false">
	<include from="error.md" element-id="egn"/>
	<include from="error.md" element-id="esc"/>
</deflist>

## HTTP Errors - 401
<deflist collapsible="false">
	<include from="error.md" element-id="pvl"/>
	<include from="error.md" element-id="pl"/>
	<def title="You can't downgrade your leader">
		You can not downgrade your guilds leader to vice leader. Executed from vice leaders POV.
	</def>
</deflist>

## HTTP Errors - 404
<deflist collapsible="false">
	<include from="error.md" element-id="gde"/>
	<def title="Player doesn't exists (leader)">
		The entered player does not exist. Threw by new leader.
	</def>
	<def title="Player doesn't exists (vice leader)">
		The entered player does not exist. Threw by new vice leader.
	</def>
</deflist>