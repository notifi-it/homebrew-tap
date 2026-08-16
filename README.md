# notifi Homebrew tap

Install the [notifi](https://notifi.it) Mac app:

```bash
brew install --cask notifi-it/tap/notifi
```

The cask downloads the signed, notarized DMG from the latest
[GitHub release](https://github.com/notifi-it/notifi/releases). A daily
workflow bumps the version and checksum when a new release ships; the app
also updates itself via Sparkle, so `auto_updates` is set and `brew upgrade`
is optional.
