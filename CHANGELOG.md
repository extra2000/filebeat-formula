# Changelog

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
