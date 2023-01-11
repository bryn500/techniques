# Script details

Certificate Authority (in. PS Scripts)

Scripts to generate a CA and / or a CA signed certificate.

New-CertificateEx.ps1:
This file contains the New-CertificateEx function that does all the heavy lifting. It is imported into the other script so that the function can be called.

New-CA-Or-SignedCertificate.ps1:
This file contains examples that:

1. Generate a CA
2. Generate a CA signed SSL certificate using an Elliptic Curve algorithm (not supported on W2K3)
2. Generate a CA signed SSL certificate using RSA (supported on W2K3)

When generating a signed certificate the CA certificate and private key must be in the User certificate store (default) or Machine certificate store (add parameter -CAInMachineStore).

    -SAN "dev.local", "_ipaddress_"`
    -EKU "Server Authentication", "Client authentication" ` 
