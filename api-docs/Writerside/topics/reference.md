# API Reference

## Method - HEAD

<p>All endpoints have an HTTP HEAD method available, which will return the same content as the corresponding GET method, but without the content body.</p>

## Method - OPTIONS

<p>All endpoints have an HTTP OPTIONS method available, which will return all URLs for the specified endpoints.</p>

## Available endpoints

<deflist collapsible="true" default-state="collapsed">
    <def title="Players">
		<list>
	        <li><a href="getAllPlayers.md">Get all players</a></li>
	        <li><a href="getPlayer.md">Get single player</a></li>
	        <li><a href="loginPlayer.md">Login player</a></li>
	        <li><a href="checkPlayerSession.md">Check player session</a></li>
	        <li><a href="createPlayer.md">Create new player</a></li>
	        <li><a href="editPlayer.md">Edit player data</a></li>
	        <li><a href="deletePlayer.md">Delete player</a></li>
        </list>
	</def>
	<def title="Skills">
		<list>
	        <li><a href="getSkills.md">Get player skills</a></li>
	        <li><a href="checkSkill.md">Check if player has skill</a></li>
	        <li><a href="toggleSkill.md">Toggle players skill</a></li>
        </list>
	</def>
	<def title="Skills">
		<list>
	        <li><a href="getFakeStatus.md">Get player fake status</a></li>
	        <li><a href="postFakeStatus.md">Create fake status</a></li>
	        <li><a href="patchFakeStatus.md">Edit player fake status</a></li>
        </list>
	</def>
	<def title="Guilds">
		<list>
	        <li><a href="getGuilds.md">Get all guilds</a></li>
	        <li><a href="getGuildSingle.md">Get guild</a></li>
	        <li><a href="postGuild.md">Create guild</a></li>
	        <li><a href="deleteGuild.md">Delete guild</a></li>
        </list>
	</def>
	<def title="Password recovery">
		<list>
	        <li><a href="send.md">Send recovery email</a></li>
	        <li><a href="patch.md">Set players new password</a></li>
        </list>
	</def>
</deflist>