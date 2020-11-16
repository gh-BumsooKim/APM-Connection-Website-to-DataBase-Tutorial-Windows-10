# How To Connect Website to DataBase (MySQL) Using Php or Python Based on APM on Windows 10

<i> Last updated: 11/17/2020 </i>

<b>\<Used Programming Language for ServerScript\></b>

A. php

B. python - Used 3 Method : CGI, mod_python, WSGI

C. perl

## Steps
### 1. Install MySQL, XAMPP
In https://downloads.mysql.com/archives/installer/, you should download MySQL Project Version 8.0.11 and check Microsoft Windows Operating System. (You can download other Product Version in 8.0.XX. But I do not check upper than 8.0.XX version) (Please Check, Operating System is 64bit Windows10) Then can see msi file is downloaded. msi file is installer file using 'Windows Installer' and it means that "This Program will be istalled while checking important dll file to not fall into a 'dll hole problem'." 

To install XAMPP, open url https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.2.9/. You should check XAMPP Version is 'xampp-win32-7.2.9-0-VC15-installer.exe'. (I do not check other XAMPP version is completely works.)

### 2. Run Apach Service
Open CMD with admin rights, and Run the following commands in terminal.
```
CD %PROGRAMDATA%
CD MySQL
CD "MySQL Server 8.0"
NOTEPAD my.ini
```
Then, insert following commands in ini file line 403.
```
collation-server = utf8_unicode_ci
character-set-server = utf8
default_authentication_plugin = mysql_native_password
skip-character-set-client-handshake
```

Reboot OS.

Open XAMPP with admin rights, and Check box 'Apache Service' and Press start button.

Reboot OS.

### 3. Create User in MySQL Workbench
