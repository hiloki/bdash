> The internal CSS toolkit of SIROK, Inc.

[![Wercker][wercker-badge]][wercker-link]
[![Bower package][bower-badge]][bower-pkg-link]
[![NPM package][npm-badge]][npm-pkg-link]
[![MIT License][mit-badge]][mit]

The bdash is a CSS toolkit of SIROK, Inc. It is very inspired by [Primer][primer] by GitHub. Our aims to make our development be fast and maintainable.

:sparkles: **We love Open Source** :v:. we are always welcome your suggestion but it is our internal CSS toolkit. we will not add new features we do not use in our products but we think seriously about your suggesiton. If your suggesiton is considering exsisting code, it will be better. Thanks in advance. Lean more about [CONTRIBUTING](#contributing).

## Table of contents

* [Installation](#installation)
* [Usage](#usage)
* [Documentation](#documentation)
* [Updating](#updating)
* [Contributing](#contributing)
* [Versioning](#versioning)
* [License](#license)

## Installation

**bower**

```bash
$ bower install bdash --save-dev
```

**npm**

```bash
$ npm install bdash --save-dev
```

## Usage

**Stylus**

Import files in your project using `@import` without the extension below:

```stylus
// Example: All files
@import "bdash/stylus/bdash"

// Example: Individual file
@import "bdash/stylus/_sanitize"
@import "bdash/stylus/_base"
@import "bdash/stylus/_buttons"
```

**CSS**

Specify relationships between the current document and CSS below:

```html
<link rel="stylesheet" href="dist/bdash.min.css" type="text/css">
```

## Documentation

Document is summarized in [Wiki](https://github.com/SIROK/bdash/wiki). We are taking note to go through the process of this and understand reasons for selecting technique.

_Note: Some Document in Wiki is written in Japanese. It is for people at SIROK, Inc._

## Updating

Update all dependencies:

```bash
$ bower update
```

## Contributing

If you have any question or suggestion, please feel free to create issues or pull request. When you create issues or pull request, please read [Contributing](CONTRIBUTING.md) before.

## Versioning

For transparency into our release cycle and in striving to maintain backward compatibility, IT is maintained under [the Semantic Versioning guidelines](http://semver.org/). Sometimes we screw up, but we'll adhere to those rules whenever possible.

## License

[MIT][mit] © [SIROK, Inc][sirok].

Whenever code for bdash is borrowed or inspired by awesome existing sources, we credit the original developer, designer or article in our code. Please create [issues][issue] if you think any credit is absent.

[sirok]:          http://sirok.co.jp/
[mit]:            https://github.com/SIROK/bdash/blob/master/LICENSE.md
[mit-badge]:      https://img.shields.io/github/license/SIROK/bdash.svg?style=flat-square
[releases]:       https://github.com/SIROK/bdash/releases
[npm-pkg-link]:   https://www.npmjs.org/package/bdash
[npm-badge]:      https://img.shields.io/npm/v/bdash.svg?style=flat-square
[bower-badge]:    https://img.shields.io/bower/v/bdash.svg?style=flat-square
[bower-pkg-link]: http://bower.io/search/?q=bdash
[wercker-badge]:  https://img.shields.io/wercker/ci/sirok/bdash.svg?style=flat-square
[wercker-link]:   https://app.wercker.com/status/02fdd17db7d60cbf794e642b6895719a/s/master 
[primer]:         https://github.com/primer/primer
[issue]:          https://github.com/SIROK/bdash/issues
