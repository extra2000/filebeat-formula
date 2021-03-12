# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import FILEBEAT with context %}

filebeat-image-present:
  cmd.run:
    - name: podman pull {{ FILEBEAT.filebeat.image.name }}
    - retry:
        attempts: 10
        interval: 5
        until: true
    - runas: {{ FILEBEAT.hostuser.name }}

filebeat-pod-destroy-if-exists:
  module.run:
    - state.sls:
      - mods:
        - filebeat.service.destroy

filebeat-pod-running:
  cmd.run:
    - name: podman play kube --network=filebeatnet filebeat-pod.yaml
    - cwd: /opt/filebeat
    - runas: {{ FILEBEAT.hostuser.name }}
    - require:
      - cmd: filebeat-image-present
      - module: filebeat-pod-destroy-if-exists
