# Written by Check_MK store (2020-07-21 03:44:02)


globals().setdefault('bulkwalk_hosts', [])

bulkwalk_hosts = [
  ( ['snmp', '!snmp-v1', ], ALL_HOSTS, {'description': u'Hosts with the tag "snmp-v1" must not use bulkwalk'} ),
] + bulkwalk_hosts


extra_host_conf.setdefault('notification_options', [])

extra_host_conf['notification_options'] = [
  ( 'd,r,f,s', [], ALL_HOSTS ),
] + extra_host_conf['notification_options']


extra_service_conf.setdefault('check_interval', [])

extra_service_conf['check_interval'] = [
  ( 1440, [], ALL_HOSTS, ['Check_MK HW/SW Inventory$'], {'description': u'Restrict HW/SW-Inventory to once a day'} ),
] + extra_service_conf['check_interval']


globals().setdefault('host_contactgroups', [])

host_contactgroups = [
  ( 'all', [], ALL_HOSTS, {'description': u'Put all hosts into the contact group "all"'} ),
] + host_contactgroups


globals().setdefault('only_hosts', [])

if only_hosts == None:
    only_hosts = []

only_hosts = [
  ( ['!offline', ], ALL_HOSTS, {'description': u'Do not monitor hosts with the tag "offline"'} ),
] + only_hosts


globals().setdefault('periodic_discovery', [])

periodic_discovery = [
  ( {'severity_unmonitored': 1, 'severity_vanished': 0, 'check_interval': 120.0, 'inventory_check_do_scan': True}, [], ALL_HOSTS, {'description': u'Perform every two hours a service discovery'} ),
] + periodic_discovery


globals().setdefault('ping_levels', [])

ping_levels = [
  ( {'loss': (80.0, 100.0), 'packets': 6, 'timeout': 20, 'rta': (1500.0, 3000.0)}, ['wan', ], ALL_HOSTS, {'description': u'Allow longer round trip times when pinging WAN hosts'} ),
] + ping_levels


