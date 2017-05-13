# Get-ADReplAccount-Brute-Force

Get-ADReplAccount-Brute-Force v0.1 by improvizza<br><br>
Brute force to a remote domain controller using Get-ADReplAccount library to retrieve reversibly encrypted plaintext passwords, password hashes and Kerberos keys of all user accounts.<br>
Do brute force attack with two files users.txt with all possible usernames and pswds.txt with all possible passwords.<br>
First install GET-ADReplAccount following instructions:<br>
     &nbsp;&nbsp;&nbsp;&nbsp;Update powerShell (>=v5.0)<br>
     &nbsp;&nbsp;&nbsp;&nbsp;Install library with: $ Install-Module -Name DSInternals<br>
     &nbsp;&nbsp;&nbsp;&nbsp;More info at: https://www.dsinternals.com/en/retrieving-active-directory-passwords-remotely/<br>
