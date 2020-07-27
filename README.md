# .emacs

My emacs config. Used everywhere.

## Prerequisites

- emacs v27+
- [use-package](https://github.com/jwiegley/use-package) preinstalled for bootstrapping (installs other packages as needed)

See my [nix config](https://github.com/miangraham/dot-nix) for an example setup that preinstalls all packages.

## Installation

```console
$ git clone https://github.com/miangraham/dot-emacs ~/.emacs.d
$ emacs
```

## Organization

| Location | Description |
| --- | --- |
| /init.el | Top-level entrypoint. Read this first. |
| /lisp/ | Topic-specific config modules. |
| /lisp/languages/ | Programming language configs. |

## License: CC0 [![License: CC0-1.0](https://licensebuttons.net/p/zero/1.0/80x15.png)](http://creativecommons.org/publicdomain/zero/1.0/)

To the extent possible under law, [M. Ian Graham](https://github.com/miangraham) has waived all copyright and related or neighboring rights to dot-emacs. This work is published from: Japan.
