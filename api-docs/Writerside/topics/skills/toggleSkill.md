# Toggle players skill

<highlight>Toggle players skill</highlight>

<warning id="urlVariable" title="Url variable">
    There is a variable present in the url of this endpoint. 
    If the variable is not present while using this endpoint, it will return <a anchor="%urlVariableLink%" summary="%urlVariableSummary%">this error</a> or <a anchor="es" summary="HTTP 400 - Enter skill">this error</a> depending on missing variable.
</warning>
<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/skills/{$username}/{$skill}" method="PATCH">
	<request>
		<sample lang="JSON">
			true
		</sample>
		<sample lang="JSON">
			false
		</sample>
	</request>
	<response type="400">
		<sample lang="JSON">
			{
				"message": "Incorrect request",
				"file": "skills.php",
				"line": 0
			}
		</sample>
	</response>
	<response type="404">
		<sample lang="JSON">
			{
				"message": "Not found",
				"file": "skills.php",
				"line": 0
			}
		</sample>
	</response>
</api-endpoint>

## HTTP Errors - 400
<deflist collapsible="false">
	<include from="error.md" element-id="ep"/>
	<def title="Enter skill" id="es">
		Occurs when there is no skill name in the URL.
	</def>
	<def title="Skill can't be toggled">
		The skill that you want to toggle can not be toggled.
	</def>
	<def title="Enter new toggle value">
		Occurs when the request body does not contain a new toggle value.
	</def>
</deflist>

## HTTP Errors - 404
<deflist collapsible="false">
	<include from="error.md" element-id="pde"/>
	<include from="error.md" element-id="sde"/>
</deflist>