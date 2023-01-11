# Clean secrets from repo using bfg

<https://rtyley.github.io/bfg-repo-cleaner/>

Clean up head commit first

```git
git clone --mirror git://example.com/some-big-repo.git

java -jar c:\bfg.jar --strip-blobs-bigger-than 100M test.git

java -jar c:\bfg.jar --delete-files "files.txt" test.git

java -jar c:\bfg.jar --replace-text "passwords.txt" test.git

git reflog expire --expire=now --all && git gc --prune=now --aggressive

git push
```
