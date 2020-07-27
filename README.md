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
