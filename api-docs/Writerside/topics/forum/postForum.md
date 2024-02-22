# Create post or comment

<highlight>Create post or comment</highlight>

<include from="notes.md" element-id="session"/>

<api-endpoint openapi-path="./../../data.yaml" endpoint="/forum" method="POST">
	<request>
		<sample lang="JSON" title="Example for new post">
			{
				"text": "Lorem ipsum",
				"title": "Title"
			}
		</sample>
		<sample lang="JSON" title="Example for new comment">
			{
				"text": "Lorem ipsum",
				"master": "1" // ID of master comment
			}
		</sample>
	</request>
	<response type="201">
		<sample>
			{
				"id": "1",          // Appears only if new comment is created.
				"slug": "slug-1"    // Appears only if new post is created.
			}
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
</api-endpoint>

## HTTP Errors - 400
<deflist collapsible="false">
	<def title="Enter text content">
		There is no text content in request body.
	</def>
	<include from="error.md" element-id="cpde"/>
	<def title="Title is too short">
		New post title should be at least 3 characters long.
	</def>
	<def title="Enter post title or parent comment">
		There is no title or master comment in request body.
	</def>
</deflist>