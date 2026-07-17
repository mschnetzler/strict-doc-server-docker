# strictdoc Docker

Runs [StrictDoc](https://github.com/strictdoc-project/strictdoc) as a server in a Docker container.

## Usage

```bash
docker run -p 8080:8080 -v $(pwd)/data:/data ghcr.io/<owner>/<repo>:latest
```

Open `http://localhost:8080` in your browser.

## Updating the version

Change the version number in [VERSION](VERSION) and push to `main`. The GitHub Action will build and push a new image tagged with that version.
