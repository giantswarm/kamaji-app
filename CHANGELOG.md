# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed

- Update `ciliumNetworkPolicy` for webhooks.

## [0.2.0] - 2026-01-22

### Changed

- Push chart to control plane catalog.

## [0.1.1] - 2026-01-20

### Fixed

- Correct app name in circleci config.

## [0.1.0] - 2026-01-20

### Added

- Add Helm `keep` annotation to all CRDs.
- Added values schema to kamaji chart.
- Added values schema to kamaji-crds chart.

### Changed

- Simplify chart structure
- Push to `kamaji-addons-app-collection`.

## [0.0.1] - 2026-01-08

### Added

- Added `sync/` folder with patch-based sync system for maintaining Giant Swarm specific overrides
- Added vendir configuration for syncing upstream chart

[Unreleased]: https://github.com/giantswarm/kamaji-app/compare/v0.2.0...HEAD
[0.2.0]: https://github.com/giantswarm/kamaji-app/compare/v0.1.1...v0.2.0
[0.1.1]: https://github.com/giantswarm/kamaji-app/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/giantswarm/kamaji-app/compare/v0.0.1...v0.1.0
[0.0.1]: https://github.com/giantswarm/kamaji-app/releases/tag/v0.0.1
