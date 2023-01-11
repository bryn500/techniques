<#
#	Generate an exportable CA certificate and place it in the user personal store

.".\New-CertificateEx.ps1"


New-CertificateEx -IsCA $true -NotAfter $([datetime]::new(2024, 04, 01))  -Exportable `
    -Subject "CN=Dev CA 2019-2024, OU=Dev, O=Dev, L = Sale, S = Cheshire, C = GB" `
    -FriendlyName "Dev CA 2019-2024" `
    -ProviderName "Microsoft Software Key Storage Provider" -SignatureAlgorithm sha256

#>


#	Generate an SSL certificate signed by the CA - Not Suitable for W2K3

.".\New-CertificateEx.ps1"


New-CertificateEx -Subject "CN=Dev-SSL-2024.b"  -FriendlyName "Dev SSL to 2024"  -Exportable `
    -NotAfter $(Get-Date -Year 2024 -Month 01 -Day 01) `
    -SAN "dev.local", "#ipaddress#" `
    -EKU "Server Authentication", "Client authentication" `
	-KeyUsage "KeyEncipherment, DigitalSignature" `
	-ProviderName "Microsoft Software Key Storage Provider" -AlgorithmName ecdh_p256 `
	-KeyLength 256 -SignatureAlgorithm sha256 `
    -CAThumbprint "###"
