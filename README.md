# Template for Chaos C extension developers

Fork this repository to create Chaos C extensions.

To develop a Chaos C extension, first you need to have `gcc` and Chaos headers.
To have these requirements, run:

```
git clone https://github.com/chaos-lang/chaos.git
cd chaos/
make requirements-dev
```

At bare minimum, your C extension should be able to build with:

```
make
```

Your package name have to match with dynamic library name, e.g. if the library name is `template`
then it must be `template(.so|.dylib|.dll)` and the `name` field in `occultist.json` have to be `template` too.

This template provides the necessary `make` commands, an example C code and everything required to
being compiled by `occultist` with proper file extensions on the target platform.

## Useful Links

[**Developing Chaos C Extensions**](https://chaos-lang.org/docs/16_chaos_c_extensions_development)

[**API Reference**](https://chaos-lang.org/docs/api)
