<warning id="urlVariable" title="Url variable">
    There is a variable present in the url of this endpoint. 
    If the variable is not present while using this endpoint, it will return <a anchor="%urlVariableLink%" summary="%urlVariableSummary%">this error</a>.
</warning>

<warning id="session" title="Session">
    This endpoints requires user to be logged in.
	If any of the session headers is not present it will return error 400.
	If session is incorrect it will return error 401.
	In order to acquire session key go <a href="loginPlayer.md">here</a>.
</warning>