# Changelog

## [2.2.0](https://github.com/extra2000/filebeat-formula/compare/v2.1.0...v2.2.0) (2021-05-17)


### Features

* **filebeat:** upgrade `v7.12.1` ([561d243](https://github.com/extra2000/filebeat-formula/commit/561d243084cc9e88b4e4218d6072d9b56a8a4a1f))


### Fixes

* **filebeat-pod:** allow user to override `readOnly` value ([5bcf4e6](https://github.com/extra2000/filebeat-formula/commit/5bcf4e634cd22a4f7f89ee05b3637c711b372662))
* **network:** rename `bridge: cni-podman0` to `bridge: cni-podman1` to avoid conflict with rootful Podman ([c50e757](https://github.com/extra2000/filebeat-formula/commit/c50e757110136267120714a41e215ac9b9f5b675))


### Code Refactoring

* **defaults, pillar:** rename `filebeat-box` to `beats-box` ([a8d1194](https://github.com/extra2000/filebeat-formula/commit/a8d1194fdfec18bccd1d4921e48e118096613494))

## [2.1.0](https://github.com/extra2000/filebeat-formula/compare/v2.0.0...v2.1.0) (2021-03-15)


### Features

* **filebeat:** Upgrade from version `7.10.1` to `7.11.2` ([ad8d098](https://github.com/extra2000/filebeat-formula/commit/ad8d09886b15f4cf1101467208081aa15c2694d8))

## [2.0.0](https://github.com/extra2000/filebeat-formula/compare/v1.1.2...v2.0.0) (2021-03-14)


### ⚠ BREAKING CHANGES

* **pod:** Pillar format for `podcfg.volumes` has changed.

### Features

* **pod:** Add support for volume other than `hostPath` for example `persistentVolumeClaim` ([6c4c8af](https://github.com/extra2000/filebeat-formula/commit/6c4c8af37f14a18c5536a734b2cca93daff6482c))

### [1.1.2](https://github.com/extra2000/filebeat-formula/compare/v1.1.1...v1.1.2) (2021-03-12)


### Code Refactoring

* **pod:** Add `labels` ([dcb1c36](https://github.com/extra2000/filebeat-formula/commit/dcb1c36e91168275860aec19585cb10ceb337f6b))
* **pod:** Explicitly define `capabilities` ([4d0703b](https://github.com/extra2000/filebeat-formula/commit/4d0703bacc8ae3aaa9815584bdb098999bc7b026))
* **service:** Rename `dead.sls` to `destroy.sls` ([96f3874](https://github.com/extra2000/filebeat-formula/commit/96f3874146a2747aae57d365fd31fcce83b831ca))


### Fixes

* **service:** Pull image first before deployment to prevent TLS handshake timeout error ([c541188](https://github.com/extra2000/filebeat-formula/commit/c541188dd6fd61bcc84cf3b1b933e7b1c8b70c36))
* **service:** Remove existing Filebeat pod before deploying new Filebeat pod. This will fix deployment error when existing Filebeat pod exists. ([f5fad5d](https://github.com/extra2000/filebeat-formula/commit/f5fad5d0e7361734bcf260e0c39e25dad9a8edf6))

### [1.1.1](https://github.com/extra2000/filebeat-formula/compare/v1.1.0...v1.1.1) (2021-03-09)


### Fixes

* **filebeat-pod:** Add persistent data volume to keep a history of sent logs which will prevents a large number of old logs from being sent after `filebeat` restart ([2f0af65](https://github.com/extra2000/filebeat-formula/commit/2f0af65637250f6f5662821c1bad774d3a846119))


### Documentations

* **pillar.example:** Add `podcfg` ([2cb6850](https://github.com/extra2000/filebeat-formula/commit/2cb6850bf4194bbbec627ae97fd7340197b1a92d))

## [1.1.0](https://github.com/extra2000/filebeat-formula/compare/v1.0.1...v1.1.0) (2021-03-07)


### Features

* **filebeat-pod.yaml:** Make volume customizable ([07b53ee](https://github.com/extra2000/filebeat-formula/commit/07b53ee2f000caeac9d01863a45f132714f41611))


### Fixes

* **filebeat-pod.yaml:** Disable SELinux to prevent permission error during volume mounting to log files ([8898b83](https://github.com/extra2000/filebeat-formula/commit/8898b834c791513732c2ed450d716f0f12ee2eba))
* **network:** Make `bridge` customizable to prevent pod networking conflicts ([af04d6f](https://github.com/extra2000/filebeat-formula/commit/af04d6fcd32c1a1080b31e694bf620d26b464478))

### [1.0.1](https://github.com/extra2000/filebeat-formula/compare/v1.0.0...v1.0.1) (2021-03-01)


### Fixes

* **filebeat-pod.yaml:** Remove workarounds for Podman 2.x ([0774f26](https://github.com/extra2000/filebeat-formula/commit/0774f26d5eeb6947c8863580eeb8e8b80cdf8f87))

## 1.0.0 (2021-02-23)


### Features

* Add implementations for `filebeat/` states ([ee7ba80](https://github.com/extra2000/filebeat-formula/commit/ee7ba800b5ff9fa93c95ed87788da1e1dfd0b0d4))


### Continuous Integrations

* Add AppVeyor with `semantic-release` bot ([cf372ed](https://github.com/extra2000/filebeat-formula/commit/cf372ed7c6b595afea4fa54ea2970aba92269db8))


### Documentations

* **pillar:** Add `pillar.example` ([11cbbaa](https://github.com/extra2000/filebeat-formula/commit/11cbbaaa70ef3156f0825b939b8b6427491ad49c))
* **README:** Update `README.md` ([7283664](https://github.com/extra2000/filebeat-formula/commit/7283664d33c9a3f7d5bd0ff27cdecd872daeff6f))
