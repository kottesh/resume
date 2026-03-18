typst
---

Build
    $ nix build .#resume

Watch for changes (devshell)
    $ nix develop
    $ typst watch --font-path ./fonts ./src/main.typ resume.pdf

The compiled resume.pdf will be available at ./result/ after building.
