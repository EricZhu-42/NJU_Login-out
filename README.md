# NJU_Login-out

基于AutoHotkey的南京大学校内网一键登入/登出程序。  
A program about login/logout campus Internet at Nanjing University, based on AutoHotkey.

### 使用方法： Instructions:

1. 连接到南京大学校内网（宽带或WiFi）  
	Connect to campus Internet of NJU via broadband or WiFi.
2. 运行`dist\`目录下的`NJU_Login.exe`程序。  
	Execute `dist\NJU_Login.exe'
3. 在第一次运行时，你将会需要输入用户名（学号）与密码。  
	When you run this program for the first time, you will need to input your username(Student ID) and password.
4. 程序运行后，将会自动连接校园网，并且返回“连接成功”提示。  
	You will connect to campus Internet of NJU automatically after you run this program, and a message of "Connection Successful" (Chinese) will be shown on the screen.
5. 连接校园网后，按下`Ctrl+G`组合键来断开校园网连接。同时亦会返回“已断开”的提示。  
	After having successfully connected to campus Internet of NJU, you can press `Ctrl+G` to disconnet from it. A message of "Disconneting from the Internet" (Chinese) will be shown on the screen simultaneously.
	
### 致谢： Acknowledgements:

本项目参考了由 [Zheng H. Xue](https://github.com/AIDefender) 移植为Python3版本的 [p.nju-login](https://github.com/ZLCao/p.nju-login) 项目（原作者为 [Zachary Cao](https://github.com/ZLCao)）。  
Prototype of this program is based on the Python3 version of [p.nju-login](https://github.com/ZLCao/p.nju-login), which is originaly created by [Zachary Cao](https://github.com/ZLCao) and later developed to Python3 by [Zheng H. Xue](https://github.com/AIDefender).
