## homebrew-atlassian-devbox

### install it

```bash
brew tap viqueen/atlassian-devbox
brew install atlassian-devbox
```

### package info

* source : [atlassian-devbox](https://github.com/viqueen/atlassian-devbox)


### update on new releases

* get latest package url, and sha
```bash
npm view atlassian-devbox dist.tarball
curl -O <package-url>
```

* get and compare sha checksum
```bash
npm view atlassian-devbox dist.shasum
shasum <package>
```

* get sha256 checksum
```bash
shasum -a 256 <package>
```
