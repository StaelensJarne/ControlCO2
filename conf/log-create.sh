#!/bin/bash
# uit te voeren met root rechten: sudo ./log-create.sh
mkdir log
cd log

# xrdp.service
touch xrdp.log
chown xrdp:xrdp xrdp.log

# xrdp-sesman.service
touch xrdp-sesman.log
chown xrdp:xrdp xrdp-sesman.log

# postgresql.service (service maakt map en logfiles automatisch aan)
# postgresql\postgresql-15-main.log  
# postgresql\postgresql-16-main.log

# apache2.service (enkel map nodig, de service zelf maakt de logfiles aan)
mkdir apache2 # niet nodig om owner te verzetten, werkt met root als owner
# apache2\access.log  
# apache2\error.log  
# apache2\other_vhosts_access.log

# zabbix-server.service, zabbix-agent.service en zabbix-server.service (enkel map nodig, de service zelf maakt de logfiles aan)
mkdir zabbix
chown -R zabbix:zabbix zabbix
# zabbix\zabbix_agent2.log  
# zabbix\zabbix_agentd.log  
# zabbix\zabbix_server.log

# thingsboard.service (enkel map nodig, de service zelf maakt de logfiles aan)
# JAVA VERSIE 11 NODIG: sudo update-alternatives --config java
mkdir thingsboard
chown -R thingsboard:thingsboard thingsboard
# thingsboard\gc.log  
# thingsboard\thingsboard.log

# mosquitto.service (service maakt map en logfiles automatisch aan)
mkdir moqquitto
touch mosquitto\mosquitto.log
chown -R mosquitto:mosquitto mosquitto
# mosquitto\mosquitto.log
# Extra rechten zetten om dit via het dashboard van zabbix uit te kunnen lezen
sudo chmod a+rx -R /var/log/mosquitto