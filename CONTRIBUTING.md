# Contributing

## Release new version

All commit messages have to be in the format of the [conventionalcommits.org](https://conventionalcommits.org) specification.

1. Make sure your are on the `main` branch.
2. Make sure you have committed everything and your code is working.
3. Run `npx standard-version`
4. Push your changes to the repository and the `main` branch.
5. The Github Action will automatically release a new version to rubygems.org (https://rubygems.org/gems/masspay_ruby_sdk).

For more detailed instructions read [standard-version documentation](https://github.com/conventional-changelog/standard-version).