# Changelog

All notable changes to this project will be documented in this file. See [commit-and-tag-version](https://github.com/absolute-version/commit-and-tag-version) for commit guidelines.

### [4.0.2](https://github.com/entrostat/git-secret-action/compare/v4.0.1...v4.0.2) (2023-05-12)


### Bug Fixes

* **devops:** Updated the actions to use the build dockerfile ([12f0afb](https://github.com/entrostat/git-secret-action/commit/12f0afb8beb371524f9c5e2f6b3ad25ced611d04))

### [4.0.1](https://github.com/entrostat/git-secret-action/compare/v4.0.0...v4.0.1) (2023-05-12)

## [4.0.0](https://github.com/entrostat/git-secret-action/compare/v3.3.1...v4.0.0) (2023-05-12)


### Features

* **devops:** Added action types [#3](https://github.com/entrostat/git-secret-action/issues/3) ([9245d60](https://github.com/entrostat/git-secret-action/commit/9245d60768858c05301508ab7bd6c1f95dbdb592))
* **devops:** Added the ability to run a major release ([96b2361](https://github.com/entrostat/git-secret-action/commit/96b23617127ccfc42d900530976e741891779d66))
* **devops:** Use the prebuilt image to increase speed and lock dependencies [#5](https://github.com/entrostat/git-secret-action/issues/5) ([9b72335](https://github.com/entrostat/git-secret-action/commit/9b72335a9722fae2effb76c3abd1564806334d3e))

### [3.3.1](https://github.com/entrostat/git-secret-action/compare/v3.3.0...v3.3.1) (2023-05-12)


### Bug Fixes

* **build:** add gnupg-keyboxd dependency ([74edab7](https://github.com/entrostat/git-secret-action/commit/74edab76cfd7a3bd9e47c359d96dff3134d1bccb))
* **build:** add gnupg-keyboxd dependency [#4](https://github.com/entrostat/git-secret-action/issues/4) ([bddee86](https://github.com/entrostat/git-secret-action/commit/bddee8687514a9e96edd36437ce9e02e9999d702))
* **build:** Lock the version of Alpine to ensure consistency ([d22b41b](https://github.com/entrostat/git-secret-action/commit/d22b41b9e6f43d3ae281f1825e37e995b81f85b2))
* **devops:** Run the testing pipeline on PRs ([8bc3007](https://github.com/entrostat/git-secret-action/commit/8bc3007e247f371ef8e0e0d9940809f96080985c))

## [3.3.0](https://github.com/entrostat/git-secret-action/compare/v3.2.0...v3.3.0) (2022-05-24)


### Features

* **build:** Use src to build the binary instead of using the package library ([45ed329](https://github.com/entrostat/git-secret-action/commit/45ed32917d35b2bf7057e885a57f65867efcb7ac))


### Bug Fixes

* **build:** Install bash in the final alpine image ([5eb97b8](https://github.com/entrostat/git-secret-action/commit/5eb97b8d7977601352edfac25c1b268cc6ce0a84))
* **build:** Install gawk in the final alpine image ([08cb934](https://github.com/entrostat/git-secret-action/commit/08cb93407cc6863a58c48290bb7b43912ca363de))

## [3.2.0](https://github.com/entrostat/git-secret-action/compare/v3.1.2...v3.2.0) (2022-04-19)


### Features

* **reveal:** Force reveal each time so that we don't prompt for overwrite ([6f00d8c](https://github.com/entrostat/git-secret-action/commit/6f00d8c4189e0f50f5459fd4953de61d4bf2a181))

### [3.1.2](https://github.com/entrostat/git-secret-action/compare/v3.1.1...v3.1.2) (2022-04-19)


### Bug Fixes

* **tty:** Added the export for the tty env variable ([525216f](https://github.com/entrostat/git-secret-action/commit/525216f6194ec2969cf08dfaacdb66e9a9907a45))

### [3.1.1](https://github.com/entrostat/git-secret-action/compare/v3.1.0...v3.1.1) (2022-04-19)


### Bug Fixes

* **debugging:** Added logging around the passphrase ([5ebad02](https://github.com/entrostat/git-secret-action/commit/5ebad0247a40bcf2e3d8394f37c1d78828e07796))

## [3.1.0](https://github.com/entrostat/git-secret-action/compare/v3.0.1...v3.1.0) (2022-04-19)


### Features

* **git-safety:** Allow the 'unsafe directory' when moving into /github/workspace ([90ef7e8](https://github.com/entrostat/git-secret-action/commit/90ef7e8ebb350a2e3ab72383c75bb66ddc5c99c3))
* **path:** Always cd into the workspace path before running the reveal ([6818ea3](https://github.com/entrostat/git-secret-action/commit/6818ea3b3a68b968e477cb0358bb1ddaeb0ae0f3))


### Bug Fixes

* **debugging:** Added the git status output ([f7a0f83](https://github.com/entrostat/git-secret-action/commit/f7a0f839739bcfade30de3db74d65500bb06cd6c))
* **debugging:** Output the workspace directory for debugging purposes ([7dc9fc8](https://github.com/entrostat/git-secret-action/commit/7dc9fc8b9739b198b48bb1d573ce13c572c64677))
* **path:** Move into the github workspace each time we reveal secrets ([3a13ebc](https://github.com/entrostat/git-secret-action/commit/3a13ebc7d2949ba590f4bcb9a6038b106ca5da8d))
* **upgrades:** Use checkout@v3 in the repo ([635ceef](https://github.com/entrostat/git-secret-action/commit/635ceef504281a7f62d1f61600fa967b62acb8d6))

### [3.0.1](https://github.com/entrostat/git-secret-action/compare/v3.0.0...v3.0.1) (2022-03-18)


### Bug Fixes

* **docs:** Updated the README with the correct version and explained the passphrase is optional ([6443463](https://github.com/entrostat/git-secret-action/commit/64434630457d1779d894331b575ee396711309b3))

## [3.0.0](https://github.com/entrostat/git-secret-action/compare/v2.0.2...v3.0.0) (2022-03-18)


### Features

* **passphrase:** Added a test to ensure that the passphrase reveal is working correctly ([5baba55](https://github.com/entrostat/git-secret-action/commit/5baba55d46632c4d1ee2dad136d1b1e896a5c1e7))
* **passphrase:** Added support for passphrases in the GPG import [#1](https://github.com/entrostat/git-secret-action/issues/1) ([0f308a0](https://github.com/entrostat/git-secret-action/commit/0f308a0afb1d53a78b14c9fdb0a3f4803d57095b))


### Bug Fixes

* **passphrase:** Escape the passphrase so that special characters don't affect the bash script [#2](https://github.com/entrostat/git-secret-action/issues/2) ([a640fbf](https://github.com/entrostat/git-secret-action/commit/a640fbf2a4100db075ab71545fc6130185e072e2))
* **passphrase:** Removed comments that were not longer applicable ([3a42c2b](https://github.com/entrostat/git-secret-action/commit/3a42c2b81449810ef01b042eac967440bd56002c))

### [2.0.2](https://github.com/entrostat/git-secret-action/compare/v2.0.1...v2.0.2) (2022-02-21)

### [2.0.1](https://github.com/entrostat/git-secret-action/compare/v2.0.0...v2.0.1) (2022-02-21)


### Bug Fixes

* **docs:** Updated the version in the readme ([4a8b605](https://github.com/entrostat/git-secret-action/commit/4a8b6059eaef3ebb5cddad2ad83345dc0a10b838))

## [2.0.0](https://github.com/entrostat/git-secret-action/compare/v1.1.0...v2.0.0) (2022-02-21)


### Features

* **branding:** Added branding to the action for the Market Place ([4d9e9d5](https://github.com/entrostat/git-secret-action/commit/4d9e9d56a26e6f030e8f0453dd6495340447695e))

## [1.1.0](https://github.com/entrostat/git-secret-action/compare/v1.0.0...v1.1.0) (2022-02-21)


### Features

* **docs:** Added the readme for the initial release ([5ceaf1f](https://github.com/entrostat/git-secret-action/commit/5ceaf1fd58cac36c2d9c6038228df38d40527d5b))

## 1.0.0 (2022-02-21)
