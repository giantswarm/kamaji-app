# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- Run the sync script automatically on Renovate vendir branches and push the result for review.
- Add a check which fails a pull request if the sync script was not run.
- Add shared helpers file to sync dir.

### Changed

- Create the vendir update issue as the `giantswarm-project-automation` GitHub App instead of architectbot's `ISSUE_AUTOMATION` token, and take the board item when the board's auto-add adds it first (giantswarm/giantswarm#38800).
- Use the `giantswarm-release` GitHub App instead of the taylorbot personal access token to push sync commits.
- Update CRD chart handling.
- Disable Helm image reference verification in CI config.
- Add Github action to create an issue in `giantswarm/giantswarm` for Team Rocket on vendir updates.
- Revert 'Disable Helm image reference verification in CI config'.
- Stop overriding appVersion in chart metadata.
- Update architect to v10.13.0 (giantswarm/kamaji-app#76)
- Update architect to v10.13.2 (giantswarm/kamaji-app#77)
- Update architect to v10.13.5 (giantswarm/kamaji-app#79)
- Use Linux tools to manipulate chart label instead of an inscrutable Perl command.
- Update architect to v10.14.7 (giantswarm/kamaji-app#83)
- Update carvel-dev/vendir to v0.46.3 (giantswarm/kamaji-app#89)
- Update architect to v10.14.10 (giantswarm/kamaji-app#90)
- Update actions/create-github-app-token to v3.3.0 (giantswarm/kamaji-app#94)
- Update architect to v10.14.18 (giantswarm/kamaji-app#95)
- Update architect to v10.15.1 (giantswarm/kamaji-app#96)
- Update architect to v10.16.3 (giantswarm/kamaji-app#97)
- Update architect to v10.16.6 (giantswarm/kamaji-app#101)

### Fixed

- The `helm.sh/chart` label is valid for long chart versions: the 63-character cut trims the whole trailing run of `-`, `.` and `_`.
- Fix changelog generation script.
- Fix the `sync/sync.sh` script issues caused by #67.

## [0.2.3] - 2026-06-17

### Added

- Create clusterRole for kamaji-etcd Datastore CRs.

### Changed

- Update app icon to the v2 Giant Swarm kamaji icon.

## [0.2.2] - 2026-03-02

### Changed

- Update `ciliumNetworkPolicy` for kamaji-etcd.

## [0.2.1] - 2026-01-26

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

[Unreleased]: https://github.com/giantswarm/kamaji-app/compare/v0.2.3...HEAD
[0.2.3]: https://github.com/giantswarm/kamaji-app/compare/v0.2.2...v0.2.3
[0.2.2]: https://github.com/giantswarm/kamaji-app/compare/v0.2.1...v0.2.2
[0.2.1]: https://github.com/giantswarm/kamaji-app/compare/v0.2.0...v0.2.1
[0.2.0]: https://github.com/giantswarm/kamaji-app/compare/v0.1.1...v0.2.0
[0.1.1]: https://github.com/giantswarm/kamaji-app/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/giantswarm/kamaji-app/compare/v0.0.1...v0.1.0
[0.0.1]: https://github.com/giantswarm/kamaji-app/releases/tag/v0.0.1
