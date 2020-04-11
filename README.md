# Template for Chaos C extension developers

Fork this repository to create Chaos C extensions.

At bare minimum, your C extension should be able to build with these commands on the relative platforms:

```
make linux
make macos
make windows
```

Your package name have to match with dynamic library name, for `template` it must be `template(.so|.dylib|.dll)`
and the `name` field in `occultist.json`.

This template provides the necessary `make` commands, an example C code and everything required to
being compiled by `occultist` with proper file extensions on the target platform.

## Useful Links

[**Developing Chaos C Extensions**](https://chaos-lang.org/docs/16_chaos_c_extensions_development)

[**API Reference**](https://chaos-lang.org/docs/api)
