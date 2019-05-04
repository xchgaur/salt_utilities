#!jinja|stringpy

import json
{%- from 'test.yaml' import appbinary with context %}
{%- set myversion = appbinary.get('version','unknown') %}

def run():
    #data = json.loads({{hubblebinary|json}})
    #cachedir = __opts__['cachedir']
    #cached_yaml = '{}/files/base/map.jinja'.format(cachedir)
    #ret = __salt__.slsutil.renderer(cached_yaml)
    #str1 = "data is " + dir(ret)[0]
    ver = '{{ myversion }}'
    return {
        'unknown_version': {
            'test.show_notification': [
                {'name': 'unknown version'},
                {'text' : ver  }
            ]
        }
    }
