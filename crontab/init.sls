#!jinja|yaml
# -*- coding: utf-8 -*-
# vim: ft=sls;ts=2;sw=2 et :
#

{% from "crontab/map.jinja" import crontab with context %}

crontab:
  pkg.installed:
    - name: {{ crontab.pkg }}
  file.managed:
    - name: {{ crontab.config }}
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - source: salt://crontab/files/crontab.jinja
