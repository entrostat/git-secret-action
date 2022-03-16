# git-secret-action

This action reveals secrets that are in your repository that you have encrypted using [git-secret](https://git-secret.io/). I've wrapped up the binary in an Alpine dockerfile and all it requires is the gpg private key.

## Usage

To use this action, you'll need to add the following to your workflow `.yml` file:

```yaml
jobs:
  git_secret_job:
    runs-on: ubuntu-latest
    name: Reveal Secrets
    steps:
      - name: Checkout
        uses: actions/checkout@v2

      - name: Git Secret Reveal Step
        uses: entrostat/git-secret-action@v2.0.0
        with:
          gpg-private-key: ${{ secrets.GPG_PRIVATE_KEY }}
          # The passphrase is optional, you can leave
          # the line below out if you don't have one
          gpg-private-key-passphrase: ${{ secrets.GPG_PRIVATE_KEY_PASSPHRASE }}
```

Note, I've added the `jobs` entry all the way down to the action itself, but you'd only need the last 4 lines if you have already set up your jobs in your workflow.


## Recommendations

I'd recommend generating a GPG key for your CI pipeline. To generate a key, run:

```bash
gpg --full-generate-key
```

Then you need to save the private key as a repository secret. Use the following command to get the private key:

```bash
gpg --armour --export-secret-keys GPG_KEY_ID
```

Where the `GPG_KEY_ID` is the email address that you used in the previous step.

## Roadmap

There are a few things that still need to be added to the project to get it to a complete state. They are listed below:

- [ ] Add the ability to specify a path to the GPG key instead of using an environment variable
- [ ] Add the ability to force reveal the secrets (sometimes you may want to overwrite existing files)


## Why Use `git-secret`?

`git-secret` is incredibly useful when developing. It may not be used to wrap up super confidential information but can be used to wrap up files and environments in the repo for use by all developers.

An example is that you may have scripts with IP addresses or other information that you would like to access from your PC as well as from the Github actions. In that case, you could encrypt the script using `git-secret` to ensure it's not accessible in general but is accessible to developers you have added to the repo (and you have re-encrypted the secrets with their key).
