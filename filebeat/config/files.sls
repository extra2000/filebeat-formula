# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import FILEBEAT with context %}

/opt/filebeat:
  file.directory:
    - user: {{ FILEBEAT.hostuser.name }}
    - group: {{ FILEBEAT.hostuser.group }}

/home/{{ FILEBEAT.hostuser.name }}/.config/cni/net.d:
  file.directory:
    - user: {{ FILEBEAT.hostuser.name }}
    - group: {{ FILEBEAT.hostuser.group }}
    - makedirs: true

/home/{{ FILEBEAT.hostuser.name }}/.config/cni/net.d/podman-network-filebeatnet.conflist:
  file.managed:
    - source: salt://filebeat/files/podman-network-filebeatnet.conflist.jinja
    - user: {{ FILEBEAT.hostuser.name }}
    - group: {{ FILEBEAT.hostuser.group }}
    - template: jinja
    - context:
      pod: {{ FILEBEAT.pod }}

/opt/filebeat/filebeat-pod.yaml:
  file.managed:
    - source: salt://filebeat/files/filebeat-pod.yaml
    - user: {{ FILEBEAT.hostuser.name }}
    - group: {{ FILEBEAT.hostuser.group }}
    - template: jinja
    - context:
      filebeat: {{ FILEBEAT.filebeat }}

/opt/filebeat/filebeat.yml:
  file.managed:
    - source: salt://filebeat/files/filebeat.yml.jinja
    - user: {{ FILEBEAT.hostuser.name }}
    - group: {{ FILEBEAT.hostuser.group }}
    - template: jinja
    - context:
      filebeat: {{ FILEBEAT.filebeat }}
