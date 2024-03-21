import-module -Name ./src/PSJira/ -Verbose -force
$global:Configuration = Get-Configuration
$AccessToken="ATATT0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789A"
$uri="https://contoso.atlassian.net"
$Configuration.BaseUrl = $uri
$Configuration.Username = "user.name@contoso.com"
$Configuration.Password = $AccessToken