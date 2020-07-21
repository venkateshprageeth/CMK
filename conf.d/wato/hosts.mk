# Created by WATO
# encoding: utf-8

all_hosts += [
  "Test|lan|ip-v4|cmk-agent|no-snmp|tcp|ip-v4-only|site:monitoring|prod|wato|/" + FOLDER_PATH + "/",
]

# Explicit IPv4 addresses
ipaddresses.update({'Test': '35.196.82.19'})

# Host attributes (needed for WATO)
host_attributes.update(
{'Test': {'tag_agent': 'cmk-agent', 'ipaddress': '35.196.82.19', 'tag_address_family': 'ip-v4-only'}})
