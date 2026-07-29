# Kiritsu releases

This public repository is the official binary distribution channel for
[Kiritsu](https://github.com/kiritsuapp/kiritsu-website), the private,
offline-first study companion.

It contains release installers, cryptographic updater signatures, checksums,
and package-manager metadata. Application source code is maintained in a
separate private repository.

## Install

### Windows

```powershell
winget install KiritsuApp.Kiritsu
```

The WinGet manifest is prepared under `packaging/winget`. It becomes searchable
in the community catalog after Microsoft accepts the initial submission.

### Linux

The signed Kiritsu APT and RPM repositories are being prepared. Once published,
installation will be available through:

```bash
sudo apt install kiritsu
```

```bash
sudo dnf install kiritsu
```

Until then, use the `.deb` or AppImage attached to the latest release.

### macOS

Download the `.dmg` matching Apple Silicon or Intel from the latest release.

## Trust and privacy

- Updater bundles carry Tauri cryptographic signatures.
- Package-manager manifests pin immutable SHA-256 checksums.
- Kiritsu makes no network requests except user-controlled update checks.
- No source code, signing private keys, or customer data belongs in this repository.

Kiritsu is free to use forever.
