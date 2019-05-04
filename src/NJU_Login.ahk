#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

IniRead, username, Account.ini, Account_info, username, %A_Space%
If username=
{
	InputBox, username, 请输入用户名, 请输入用户名（学号）
	InputBox, password, 请输入密码, 请输入密码, HIDE

	IniWrite, %username%, Account.ini, Account_info, username
	IniWrite, %password%, Account.ini, Account_info, password
}

IniRead, password, Account.ini, Account_info, password
login_url := "http://p.nju.edu.cn/portal_io/login?username=" username "&password=" password
logout_url := "http://p.nju.edu.cn/portal_io/logout"

WebRequest := ComObjCreate("WinHttp.WinHttpRequest.5.1")
WebRequest.Open("POST", login_url)
WebRequest.Send()
RegExMatch(WebRequest.ResponseText,"reply_msg"":""(.*)"",""userinfo" , result)
SplashTextOn, , , % result1
Sleep, 2000
SplashTextOff
WebRequest := ""

^g::
	WebRequest := ComObjCreate("WinHttp.WinHttpRequest.5.1")
	WebRequest.Open("POST", logout_url)
	WebRequest.Send()
	RegExMatch(WebRequest.ResponseText,"reply_msg"":""(.*)""" , result)
	SplashTextOn, , , % result1
	Sleep, 2000
	SplashTextOff
	WebRequest := ""
	ExitApp
	Return

