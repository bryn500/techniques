# techniques

repo of useful stuff

## Tools

### Diagrams

- <https://online.visual-paradigm.com/>
- <https://app.diagrams.net/>

### Code Design

- <https://json2csharp.com/>
- <https://dotnetfiddle.net/>
- <https://jshint.com/>
- <https://www.mockaroo.com/>
- <https://lucybot-inc.github.io/api-spec-converter/>
- <https://editor.swagger.io/>

### Security

- <https://csp-evaluator.withgoogle.com/>
- <https://www.lastpass.com/password-generator>

### Performance

- <https://developers.google.com/speed/pagespeed/insights/>
- <https://tinypng.com/>
- <https://jakearchibald.github.io/svgomg/>

### Coding

- <https://github.com/microsoft/infersharp>
- <https://dotnetfiddle.net/>

## Information

### GovUK

- <https://www.gov.uk/service-manual>
- <https://design-system.service.gov.uk/>
- <https://www.gov.uk/service-toolkit>
- <https://govuk-prototype-kit.herokuapp.com/docs>

### Security

- <https://owasp.org/www-project-juice-shop/>
- <https://owasp.org/www-project-top-ten/>
- <https://en.wikipedia.org/wiki/Subresource_Integrity>
- <https://loader.io/>
- <https://www.ncsc.gov.uk/collection/cloud-security/implementing-the-cloud-security-principles>

### Frontend Performance

- <https://www.gov.uk/service-manual/technology/how-to-test-frontend-performance>
- <https://csstriggers.com/>
- <https://developers.google.com/web/fundamentals/performance/rendering/>
- <https://aerotwist.com/blog/the-anatomy-of-a-frame/>

### Other

- <https://www.joelonsoftware.com/2003/10/08/the-absolute-minimum-every-software-developer-absolutely-positively-must-know-about-unicode-and-character-sets-no-excuses/>
- <https://elanderson.net/2019/02/asp-net-core-with-dapper/>
- <https://www.stevejgordon.co.uk/writing-high-performance-csharp-and-dotnet-code>
- <https://docs.microsoft.com/en-us/powerapps/developer/model-driven-apps/clientapi/reference>

## Code Examples

- <https://github.com/dotnet/aspnetcore/blob/main/src/Identity/Extensions.Core/src/PasswordHasher.cs>
- <https://docs.microsoft.com/en-us/azure/app-service/app-service-authentication-how-to>
- <https://www.sitepoint.com/sql-server-full-text-search-protips-part-3-getting-ranked/>

## Code performance

- <https://docs.microsoft.com/en-us/aspnet/core/performance/performance-best-practices?view=aspnetcore-5.0>

__Frugal Object__:
Collection that is specialized for holding 0, 1, 2 and falls back to array/list for more items
(Create your own collection)

__Pooling__:
Often used objects
Put them in a shared pool and rent them
Can change the data within
(Use ArrayPool)

__ZeroCopy__:
Getting subdata from intial data
Rather than copying, use slice

```csharp
Span<T>
```

__Struct__:
Less references than class

__Struct of Arrays__:
Rather than a class that represents one, have a struct that contains arrays for each member property, fast but very ugly

__Buffered Builder__:
When making sequential changes to immutable type use a buffer.
(e.g. StringBuilder)

__AZ Course Files (500)__
<https://microsoftlearning.github.io/AZ500-AzureSecurityTechnologies/>

## Helpful links

- <https://stackoverflow.com/questions/45849926/how-to-find-connection-of-ssis-package-in-a-sql-job-step>
- <https://stackoverflow.com/questions/36335345/web-api-fire-and-forget>
- <https://stackoverflow.com/questions/64602/what-are-differences-between-assemblyversion-assemblyfileversion-and-assemblyin/65062#65062>
- <https://k6.io/docs/testing-guides/api-load-testing/#different-types-of-api-load-testing>
- <https://stackoverflow.com/questions/57223110/where-is-ildasm-in-visual-studio-2019>

## Browser settings

edge://flags/, chrome://flags/

Enable: Allow invalid certificates for resources loaded from localhost

![image](https://user-images.githubusercontent.com/12498120/211779649-dae6f99c-29ee-4a4a-9e2b-9c359986b29f.png)

Disable HSTS for localhost in browser

edge://net-internals/#hsts, chrome://net-internals/#hsts

Delete localhost domain from domain security policies

![image](https://user-images.githubusercontent.com/12498120/211779899-446388b7-1ed7-4096-b17f-44b4303df593.png)
