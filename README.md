## Setup

- Install [Ruby](https://www.ruby-lang.org/en/documentation/installation/)

- Install project dependencies with `bundle install`

- Install the [Firebase Command Line Tools](https://firebase.google.com/docs/cli#install-cli-mac-linux).

- Sign in using `firebase login` (You will need access to the learn-mdb-dev firebase project)

## Build and Serve Locally

`make build`

Note that `bundle exec jekyll serve --incremental` will do the same thing (specified in the Makefile).

`make clean` will clear the local cache of the site stored in `_site` (useful if you're having issues with the site not updating).

## Deploy to Firebase

From the project folder, run `make deploy` to deploy the site to Firebase. Note that `./launch` does the same thing.
