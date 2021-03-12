# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import FILEBEAT with context %}

filebeat-container-destroy:
  cmd.run:
    - name: podman pod rm --force filebeat-pod
    - runas: {{ FILEBEAT.hostuser.name }}
