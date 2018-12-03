Homebrew for Reverb
---
A homebrew for reverb dev tools

## Installing
`brew tap reverbdotcom/reverb`
`brew install rv`

## New Release
The release process is mainly automated. Both protopkg and rv build in travis and attach binaries when a release is cut. Once the release is cut, come to this repo and run the appropriate make task to bump the version in homebrew.

## Example
`make rv-release VERSION=v0.0.14`

This task will shasum the release and commit the changes to this repository.
