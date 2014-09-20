Using this package you can create a standalone [Hoodie](http://hood.ie) app with can be run on Windows without installing Node.js or CouchDB.

## Versions

Following versions are currently used and packed:

* node v0.10.32 (32-bit)
* npm v2.0.0
* CouchDB 1.6.1 (x86)
* hoodie-cli v0.6.1

## Using the package

After building the package by yourself or downloading it as a ZIP from the [releases](https://github.com/Acconut/hoodie-ready-app-windows/releases) page (**recommended**) you have to invoke `scripts/start.cmd` and you're read to go.

node's, npm's and hoodie-cli's commands are available in `scripts/`:

```bash
scripts/node -v
scripts/npm -v
scripts/hoodie -v
```

## Building the package

Before building you must ensure you have the following dependencies installed:

* npm
* git
* curl

Just invoke `build.cmd` and you'll have everything packed in `build/`

This package uses [innounp](http://innounp.sourceforge.net/) to extract CouchDB's Windows installer.
