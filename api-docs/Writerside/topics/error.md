<deflist id="passwordErrors">
	<def title="Enter password">
		The password must be included in the request body.
	</def>
	<def title="Password must be at least 6 characters long">
		The new password must contain at least 6 characters.
	</def>
	<def title="Password must contain at least one large character">
		The new password must contain at least 1 uppercase character.
	</def>
	<def title="Password must contain at least one small character">
		The new password must contain at least 1 lowercase character.
	</def>
	<def title="Password must contain at least one number">
		The new password must contain at least 1 digit.
	</def>
	<def title="Password must contain at least one special character">
		The new password must contain at least 1 special character.
	</def>
</deflist>

<deflist id="usernameErrors">
	<def title="Enter username">
		The username must be included in the request body.
	</def>
	<def title="Player already exists">
		Player username is already taken.
	</def>
	<def title="Username is too short">
		Username should contain at least 3 characters.
	</def>
	<def title="Username is too long">
		The username should contain a maximum of 16 characters.
	</def>
	<def title="Username can only contain letters, numbers and underscore">
		The username contains illegal characters. Allowed characters are letters, numbers and underscore.
	</def>
</deflist>

<deflist id="emailErrors">
	<def title="Enter email">
		The email must be included in the request body.
	</def>
	<def title="Email already taken">
		Email is already taken.
	</def>
	<def title="Incorrect email">
		Entered email is invalid.
	</def>
</deflist>

<def title="Player doesn't exists" id="pde">
	The entered player does not exist.
</def>

<def title="Guild doesn't exists" id="gde">
	The entered guild does not exist.
</def>

<def title="Enter player" id="ep">
	Occurs when there is no player username in the URL.
</def>

<def title="Enter some changes" id="esc">
	Occurs when there are no changes in the request body.
</def>

<def title="Incorrect value: $parameter" id="ivp">
	Occurs when the <format color='BlueViolet'>{$parameter}</format> value is invalid.
</def>

<def title="Skill doesn't exists" id="sde">
	The entered skill does not exist.
</def>

<def title="Enter guilds name" id="egn">
	Occurs when there is no guild name in the URL.
</def>

<def title="Enter player" id="eprb">
	Occurs when there is no player username in the request body.
</def>

<def title="You don't have permission to do this (vice leader)" id="pvl">
	You have to be at least guilds vice leader to do this.
</def>

<def title="You don't have permission to do this (leader)" id="pl">
	You have to be at least guilds leader to do this.
</def>

<def title="Unknown query string parameter {$parameter}" id="uqs">
	Occurs when the <format color="BlueViolet">{$parameter}</format> is invalid.
</def>

<def title="Unknown order parameter {$value}" id="uop">
	Occurs when the order query string has incorrect value.
</def>