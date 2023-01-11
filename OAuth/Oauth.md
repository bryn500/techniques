# Oauth/OpenID Connect

**Authentication - OpenID Connect**
confirms that users are who they say they are

**Authorization - OAuth 2.0**
gives users permission to access a resource.

**Access Token**
Access tokens are used by web APIs to perform authentication and authorization
Comes with metadata in response such as liftime
v1/2 in azure set in app manifest
aud represents the audience/resource/api

**Contents**
Header + Signature are used to verify the authenticity of the token
Payload contains the information about the user

**Lifetime**
75 minutes on average

**Validation**
Resource/api must verify with auth server token is valid, but also that the aud matches itself

**ID Token**
OpenID Connect adds the use of idtokens to OAuth 2.0
Issued by authorization server, contain claims or information about the user
ID tokens should not be used for authorization purposes - who
Can be sent alongside or instead of an access token

**Contents**
Header + Signature are used to verify the authenticity of the token
Payload contains the information about the user
Use guid not changeable data like name or email if storing (e.g. db)

<https://learn.microsoft.com/en-us/azure/active-directory/develop/id-tokens#payload-claims>

**Lifetime**
By default, an ID token is valid for one hour - after one hour, the client must acquire a new ID token

**Validating**
Confidential client can validate the source of the token and the contents have not been modified - browser cannot, could intercept and edit the keys used for validation

**Diagrams**
<https://learn.microsoft.com/en-us/azure/active-directory/develop/v2-oauth2-auth-code-flow>