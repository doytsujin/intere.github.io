# My Github Site

## Development
```bash
gulp serve
```

## Building / Verifying
```bash
gulp
# Now you should have artifacts in the "dist" folder
cd dist
python -m SimpleHTTPServer 8000  # Runs a Web Server on 8000
```

## Updating Master
1. Run a build (like in the steps above and verify that the distribution runs with the simple web server)
2. Checkout the master branch
```bash
git co master
```
3. run the following commands to cleanup / update to the new build:
```bash
rm -rf assets bower_components fonts index.html scripts styles
cp dist/* ./
```
4.  Verify that the artifacts you just moved to master work correctly:
```bash
python -m SimpleHTTPServer 8000  # Runs a Web Server on 8000
```
5.  If everything checks out, then add the new source items to git
```
git add scripts styles
```
