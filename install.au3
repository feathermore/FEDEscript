#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author:         pasturn

 Script Function:
	Front-End Development Environment.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
;InstallNodeJs();
;InstallVSCode();
InstallSVN();
;InstallFileZIlla();



Func InstallNodeJs()
   ShellExecute("node.msi");
   $nodejstitle = "Node.js Setup";
   WinWaitActive($nodejstitle, "Welcome to the Node.js Setup Wizard");
   Send("!N");
   WinWaitActive($nodejstitle, "End-User License Agreement");
   Send("!a");
   Send("!N");
   WinWaitActive($nodejstitle, "Destination Folder");
   Send("!N");
   WinWaitActive($nodejstitle, "Custom Setup");
   Send("!N");
   WinWaitActive($nodejstitle, "Ready to install Node.js");
   Send("!I");
   WinWaitActive($nodejstitle, "Completed the Node.js Setup Wizard");
   Send("!F");
EndFunc;

Func InstallVSCode()
   Run("VSCodeSetup-stable.exe");
   $vscodetitle = "安装程序 - Visual Studio Code"
   WinWaitActive($vscodetitle);
   Send("!n");
   WinWaitActive($vscodetitle, "许可协议");
   Send("!a");
   Send("!n");
   WinWaitActive($vscodetitle, "选择目标位置");
   ControlSetText($vscodetitle, "选择目标位置", "TEdit1", "D:\Program Files\Microsoft VS Code");
   Send("!n");
   WinWaitActive($vscodetitle, "选择开始菜单文件夹");
   Send("!n");
   WinWaitActive($vscodetitle, "选择其他任务");
   Send("!n");
   WinWaitActive($vscodetitle, "安装准备就绪");
   Send("!i");
   WinWaitActive($vscodetitle, "完成 Visual Studio Code 安装向导");
   WinActivate($vscodetitle, "完成 Visual Studio Code 安装向导");
   ControlClick($vscodetitle, "", "TNewCheckListBox1", "Left", 1, 10, 10);
   Send("!f");
EndFunc;

Func InstallSVN()
   ShellExecute("TortoiseSVN.msi");
   $SVNTitle = "TortoiseSVN 1.9.3.27038 (64 bit) Setup"
   WinWaitActive($SVNTitle, "Welcome to the TortoiseSVN 1.9.3.27038 (64 bit) Setup Wizard")
   Send("!N");
   WinWaitActive("TortoiseSVN 1.9.3.27038 (64 bit) License Agreement");
   Send("!N");
   WinWaitActive("TortoiseSVN 1.9.3.27038 (64 bit) Setup","Custom Setup");
   ControlClick("TortoiseSVN 1.9.3.27038 (64 bit) Setup", "Custom Setup", "Button6", "Left", 1, 50, 10);
   WinActive("TortoiseSVN 1.9.3.27038 (64 bit) Setup", "Change current destination folder");
   ControlSetText("TortoiseSVN 1.9.3.27038 (64 bit) Setup", "Change current destination folder", "RichEdit20W1", "D:\Program Files\TortoiseSVN\");
   ControlFocus("TortoiseSVN 1.9.3.27038 (64 bit) Setup", "Change current destination folder", "RichEdit20W1");
   Send("{ENTER}");
   WinActive("TortoiseSVN 1.9.3.27038 (64 bit) Setup","Custom Setup");
   Send("!N");
   WinWaitActive("TortoiseSVN 1.9.3.27038 (64 bit) Setup","Ready to Install");
   Send("!I");
   WinWaitActive("TortoiseSVN 1.9.3.27038 (64 bit) Setup","Completing the TortoiseSVN 1.9.3.27038 (64 bit) Setup Wizard");
   Send("!F");
EndFunc;

Func InstallFileZilla()
   Run("FileZilla.exe");
   $filezillatitle = "FileZilla Client 3.17.0.1 Setup ";
   WinWaitActive($filezillatitle, "License Agreement");
   Send("!A");
   WinWaitActive($filezillatitle, "Choose Installation Options");
   Send("!N");
   WinWaitActive($filezillatitle, "Choose Components");
   WinActivate($filezillatitle,  "Choose Components");
   Send("!N");
   WinWaitActive($filezillatitle, "Choose Install Location");
   ControlSetText($filezillatitle, "Choose Install Location", "Button6", "D:\Program Files\FileZilla FTP Client");
   Send("!N");
   WinWaitActive($filezillatitle, "Choose Start Menu Folder");
   Send("!I");
   WinWaitActive($filezillatitle, "Completing FileZilla Client 3.17.0.1 Setup");
   ControlClick($filezillatitle, "Completing FileZilla Client 3.17.0.1 Setup", "Button4", "Left", 1, 50, 10);
   Send("!F");
EndFunc;


