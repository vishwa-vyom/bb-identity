# IDBuildingBlock

This building block implements the [OpenAPI specification](https://github.com/GovStackWorkingGroup/BuildingBlockAPI/tree/main/IDV) for the [ID Building block](https://docs.google.com/document/d/1Fvt6Y6h2yd4JeoSNAZnemnQQqdOTlje3bA1bGnGXLcU/edit).

## Getting up and running

Time is of the essence, so I'll just use a generator and add a basic route manually for now...


```
$ npx express-generator-typescript --with-auth --socket-io --use-yarn "IDBuildingBlock"
```


## Generating from an openapi spec

Ideally, we can generate the server completely from OpenAPI. I'd like to use express and typescript, lots of folks know it.

[https://blog.simonireilly.com/posts/typescript-openapi]() gives a good overview of the current situation with typescript server generation. The author is working on a [https://github.com/simonireilly/compeller](library called compeller) that looks promising. Unfortunately, it can't import OpenAPI just yet.

### Trying openapi-generator (js only)

Use openapi-generator, based on Java. There isn't any support for typescript server generation.

I changed the version in verification.json to 3.0.0 then was able to generate this:

```
$ openapi-generator generate --skip-validate-spec  -g typescript-node -i ~/fabrik/BuildingBlockAPI/IDV/verification.json
```
