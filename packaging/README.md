# Package-manager publishing

## WinGet

The versioned manifests under `winget/` are the reviewable source used to
submit Kiritsu to `microsoft/winget-pkgs`. Validate a version directory on
Windows before submission:

```powershell
winget validate packaging/winget/0.9.1
```

New releases must update the version, immutable release URL, SHA-256 checksum,
and release date. `wingetcreate update KiritsuApp.Kiritsu` can automate later
updates after the first manifest is accepted.

## APT and RPM

These repositories require a dedicated package-signing key. Their generated
indexes must not be committed by hand. The release automation will generate and
sign APT and RPM metadata after the public key and CI signing secret are created.

## Chocolatey

The `chocolatey` directory is a tokenized Chocolatey Community Repository
package. The publishing workflow downloads the matching signed NSIS release,
injects its SHA-256 checksum, validates the package, and submits it for
moderation.
