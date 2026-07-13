# homebrew-msdl

Homebrew tap for [msdl](https://github.com/starkSV/windows-iso-downloader) — a command-line tool for downloading Windows ISO files directly from Microsoft's servers.

## Install

```bash
brew tap starkSV/msdl
brew install msdl-cli
```

> **Note:** the formula is named `msdl-cli` (not `msdl`) because `homebrew/core`
> already has an unrelated package literally named `msdl` (a streaming-protocol
> downloader). `brew install msdl` will silently install the wrong software —
> always use `msdl-cli`. The installed command itself is still just `msdl`.

## Update

```bash
brew update
brew upgrade msdl-cli
```

Source, issues, and the web app live at [starkSV/windows-iso-downloader](https://github.com/starkSV/windows-iso-downloader).
