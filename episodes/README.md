# Episodes

## Using helper tool

You can run the tool with `nix run -f . tool`. It accepts following arguments:

- `announce 42` - announce episode 42, it will go through necessary steps to announce the stream

On the first run it will request an authorization to manage YouTube APIs by opening a browser window and cache it in the configured file.

### Configuring

First you need to create a client ID to use with Google APIs:

- open https://console.cloud.google.com/apis/credentials
- click "Create Credentials", "OAuth Client ID"
- pick "Web Application"
- add `http://127.0.0.1:18080` to "Authorized redirect URIs"
- click "Create"
- copy client id and client secret to appropriate fields in `config.json`
- make sure that YouTube Data API v3 is enabled at https://console.developers.google.com/apis/api/youtube.googleapis.com/overview
