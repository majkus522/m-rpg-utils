# Get single post

<highlight>Get single post</highlight>

<note title="Url variable">
	If the variable in the url is not present it will be redirected to <a href="getPosts.md">this endpoint</a>.
</note>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/forum/{$slug}" method="GET">
	<response type="200">
		<sample lang="JSON">
			[
				{
					"id": 1,
					"player": 2,
					"text": "Lorem Ipsum",
					"master": null,
					"title": "title",
					"likes": 1,
					"time": "2024-02-13 19:51:36",
					"liked": 1  // Doesn't appear if session headers are not send or incorrect.
				},
				{
					"id": 2,
					"player": 0,
					"text": "Lorem Ipsum",
					"master": 1,
					"title": null,
					"likes": 1,
					"time": "2024-02-13 19:55:36",
					"liked": 1  // Doesn't appear if session headers are not send or incorrect.
				},
				{
					"id": 3,
					"player": 7,
					"text": "Lorem Ipsum",
					"master": 2,
					"title": null,
					"likes": 2,
					"time": "2024-02-13 19:57:36",
					"liked": 1  // Doesn't appear if session headers are not send or incorrect.
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

## HTTP Errors - 404
<deflist collapsible="false">
	<include from="error.md" element-id="f-pde"/>
</deflist>