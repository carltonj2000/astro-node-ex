# Astro Node Hosting

Testing Astro builds with a node in a docker container.

## Creation History

```bash
npx astro add tailwind
npm create astro@latest
cd astro-node-ex/
```

## Docker Notes

Tried distroless node but found saving not enough for my use case.
Slim was 392MB and distroless was 312MB.
The majority of the size for my build was the required inclusion of the
node_modules directory because the build tool did not bundle the all require
modules in the built dist directory.
