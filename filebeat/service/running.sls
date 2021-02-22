# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import FILEBEAT with context %}

filebeat-containers-running:
  cmd.run:
    - name: podman play kube --network=filebeatnet filebeat-pod.yaml
    - cwd: /opt/filebeat
    - runas: {{ FILEBEAT.hostuser.name }}
