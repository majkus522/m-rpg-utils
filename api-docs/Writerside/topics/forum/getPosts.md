# Get forum posts

<highlight>Get forum posts</highlight>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/forum" method="GET">
	<response type="200">
		<sample lang="JSON">
			[
				{
					"title": "Title1",
					"slug": "slug-1",
					"player": "username_1",
					"time": "2024-02-13 19:51:36",
					"likes": 8,
					"comments": 6
				},
				{
					"title": "Title2",
					"slug": "slug-2",
					"player": "username_2",
					"time": "2024-02-13 19:59:52",
					"likes": 0,
					"comments": 0
				}
			]
		</sample>
	</response>
	<response type="400">
		<sample lang="JSON">
			{
				"message": "Incorrect request",
				"file": "forum.php",
				"line": 0
			}
		</sample>
	</response>
	<response type="404">
		<sample lang="JSON">
			{
				"message": "Not found",
				"file": "forum.php",
				"line": 0
			}
		</sample>
	</response>
</api-endpoint>

## HTTP Errors - 400
<deflist collapsible="false">
	<include from="error.md" element-id="uop"/>
	<include from="error.md" element-id="uqs"/>
</deflist>

## HTTP Errors - 404
<deflist collapsible="false">
	<include from="error.md" element-id="pde"/>
	<def title="Can't find any post matching conditions">
		Can't find any posts matching parameters in request.
	</def>
</deflist>