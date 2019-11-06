# makecert.sh
A simple script for generating TLS certificate signing requests (CSR), associated .key file, and openssl configuration template for your desired domain name. The defaults in the scripts will provide both the base domain name and also an additional SAN for "www.". In order to add/remove the additional Subject Alternative Names, edit the `opensslconftemplate.txt` file and append/remove till you have the SANs you require at the at the end of the file.


## Usage
1. Clone this repo
2. Run ./makecert.sh `yourdomainname`
3. Upload the generated CSR to your Certificate Authority to generate the final certificate.
4. Install the CA provided cert on your destination service in conjunction with the `.key` file generated in step 2.
